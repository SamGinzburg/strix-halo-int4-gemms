	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b32 s93, s[0:1], 0x64
	s_load_b64 s[78:79], s[0:1], 0x5c
	s_load_b64 s[80:81], s[0:1], 0x0
	s_load_b64 s[76:77], s[0:1], 0x40
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s7, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 3, v0
	s_mov_b32 s83, 0x31027000
	s_mov_b32 s82, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x80
	s_load_b32 s14, s[0:1], 0x88
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v43, 2, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v46, 15, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v44, 1, v0
	.loc	1 822 49                        ; attention.py:822:49
	v_and_b32_e32 v45, 1, v0
	s_mov_b32 s68, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s93
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s8, s2, s93
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s8, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 7, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v3, 2, v1
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s78, v3
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s6, s6, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s4, s6
	s_add_i32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s7, s6
	s_mul_i32 s9, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s9
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s7, s10, s7
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s81, s81, 0xffff
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s16, s7, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s93
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s15, s16, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s16, v2
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v4, s15, v2
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s92, s2, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 1, v6
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[4:5], null, v4, s78, v[3:4]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s93, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s93
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s4, s4
	s_ashr_i32 s8, s8, 31
	s_mul_hi_u32 s6, s4, s6
	s_mul_i32 s9, s6, s5
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b32 v4, v3, s[80:83], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s4, s4, s9
	s_add_i32 s10, s6, 1
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v3, 0x60, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v5, 2, v3
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s2, s4, s6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s14, s16
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s2, s2, s8
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, 16
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s2, s8
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s6, s5, s13
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s5, s5, 0x800
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s6, s6, 0x800
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s5, s5, 63
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s6, s6, 63
	.loc	1 811 34                        ; attention.py:811:34
	s_ashr_i32 s8, s5, 31
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s7, s92, s2
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s8, s8, 26
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s4, s14, s12
	.loc	1 811 34                        ; attention.py:811:34
	s_add_i32 s5, s5, s8
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s8, s6, 31
	.loc	1 811 33                        ; attention.py:811:33
	s_and_not1_b32 s5, s5, 63
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s8, s8, 26
	.loc	1 811 18                        ; attention.py:811:18
	v_mov_b32_e32 v6, s5
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s7, s7, 6
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s5, s6, s8
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s4, s4, s16
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s7, s2
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s5, s5, 63
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s4, s4, 0
	.loc	1 811 18                        ; attention.py:811:18
	v_min3_i32 v47, s2, s5, v6
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s2, s4, 0x7fffffc0
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v5, v43, v5, 0
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s94, s7, s2
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 818 13                        ; attention.py:818:13
	v_cmp_ge_i32_e32 vcc_lo, s94, v47
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v5, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_vccnz .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v5, s16, v46
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v4, s15, v46, 1
	v_and_b32_e32 v10, 16, v0
	v_dual_mov_b32 v12, 0x7632 :: v_dual_and_b32 v7, 24, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 1, v5
	v_dual_mov_b32 v109, 0xff800000 :: v_dual_and_b32 v8, 24, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v14, v46, 5, v7
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v6, 4, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v48, v0, 4, 1
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s95, s3, 11
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v15, 16, v14
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v80, 62, v6
	s_lshl_b32 s96, s79, 4
	v_or_b32_e32 v67, 36, v48
	v_or_b32_e32 v68, 38, v48
	v_or_b32_e32 v69, 40, v48
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s81, s9, 0xffff
	s_mov_b32 s80, s8
	s_load_b32 s8, s[0:1], 0x68
	buffer_load_u16 v9, v4, s[80:83], 0 offen
	v_dual_mov_b32 v11, 0x5410 :: v_dual_lshlrev_b32 v4, 3, v1
	v_mov_b32_e32 v1, 0
	v_cmp_eq_u32_e32 vcc_lo, 0, v10
	.loc	1 822 49                        ; attention.py:822:49
	v_lshlrev_b32_e32 v33, 4, v45
	v_lshlrev_b32_e32 v49, 4, v0
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s79, v4
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[34:35], null, s79, v2, v[4:5]
	v_cndmask_b32_e32 v10, 0x1054, v11, vcc_lo
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v11, 8, v14
	v_mov_b32_e32 v4, v1
	v_xor_b32_e32 v81, v49, v8
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v83, 0, v14
	v_lshl_or_b32 v10, v10, 8, v10
	v_mov_b32_e32 v111, v1
	v_xor_b32_e32 v14, 24, v14
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s8, s8, 0x3fb8aa3b
	v_dual_mov_b32 v6, v1 :: v_dual_add_nc_u32 v13, s14, v5
	v_dual_mov_b32 v5, v1 :: v_dual_and_b32 v10, 0x540054, v10
	v_dual_cndmask_b32 v12, 0x3276, v12 :: v_dual_mov_b32 v7, v1
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v100, 0, v15
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v10, v10, 4, v10
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v3, 0, v3
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v70, 42, v48
	v_or_b32_e32 v71, 44, v48
	v_or_b32_e32 v72, 46, v48
	v_or_b32_e32 v73, 48, v48
	v_or_b32_e32 v74, 50, v48
	v_or_b32_e32 v75, 52, v48
	v_or_b32_e32 v76, 54, v48
	v_or_b32_e32 v77, 56, v48
	v_or_b32_e32 v78, 58, v48
	v_or_b32_e32 v79, 60, v48
	v_lshl_add_u32 v82, v46, 1, v3
	v_dual_mov_b32 v3, v1 :: v_dual_add_nc_u32 v16, s13, v13
	v_xor_b32_e32 v17, 8, v81
	v_or_b32_e32 v50, 2, v48
	v_or_b32_e32 v51, 4, v48
	v_or_b32_e32 v52, 6, v48
	v_or_b32_e32 v53, 8, v48
	v_or_b32_e32 v54, 10, v48
	v_or_b32_e32 v55, 12, v48
	v_or_b32_e32 v56, 14, v48
	v_or_b32_e32 v57, 16, v48
	v_or_b32_e32 v58, 18, v48
	v_or_b32_e32 v59, 20, v48
	v_or_b32_e32 v60, 22, v48
	v_or_b32_e32 v61, 24, v48
	v_or_b32_e32 v62, 26, v48
	v_or_b32_e32 v63, 28, v48
	v_or_b32_e32 v64, 30, v48
	v_or_b32_e32 v65, 32, v48
	v_or_b32_e32 v66, 34, v48
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e64 s0, s78, v33
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v84, s12, v13
	v_or_b32_e32 v85, s95, v67
	v_or_b32_e32 v86, s95, v68
	v_or_b32_e32 v87, s95, v69
	v_or_b32_e32 v88, s95, v70
	v_or_b32_e32 v89, s95, v71
	v_or_b32_e32 v90, s95, v72
	v_or_b32_e32 v91, s95, v73
	v_or_b32_e32 v92, s95, v74
	v_or_b32_e32 v93, s95, v75
	v_or_b32_e32 v94, s95, v76
	v_or_b32_e32 v95, s95, v77
	v_or_b32_e32 v96, s95, v78
	v_or_b32_e32 v97, s95, v79
	v_min_i32_e32 v98, v13, v16
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s97, s79, 5
	s_mul_i32 s98, s79, 48
	s_mov_b32 s69, s68
	s_mov_b32 s70, s68
	s_mov_b32 s71, s68
	s_mov_b32 s72, s68
	s_mov_b32 s73, s68
	s_mov_b32 s74, s68
	s_mov_b32 s75, s68
	s_mov_b32 s99, 0x76543210
	s_mov_b32 s86, s82
	s_mov_b32 s87, s83
	s_mov_b32 s90, s82
	s_mov_b32 s91, s83
	s_and_b32 s89, s7, 0xffff
	s_mov_b32 s84, s10
	s_mov_b32 s88, s6
	s_mov_b32 s80, s4
	s_mov_b32 s81, s5
	s_mov_b32 s85, s11
	v_and_b32_e32 v104, 0x5040504, v10
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v103, s8, v9
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v99, 0, v11
	v_add_nc_u32_e32 v101, 0, v14
	v_lshl_or_b32 v11, v12, 8, v12
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v107, v103 :: v_dual_add_nc_u32 v102, 0, v17
	v_mov_b32_e32 v106, v103
	v_mov_b32_e32 v108, v103
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[35:36], v83
	ds_load_b64 v[37:38], v99
	ds_load_b64 v[39:40], v100
	ds_load_b64 v[41:42], v101
	v_and_b32_e32 v11, 0x760076, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v11, 4, v11
	v_and_b32_e32 v105, 0x7060706, v11
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 26 is_stmt 0                ; attention.py:0:26
	v_or_b32_e32 v18, s95, v48
	.loc	1 760 21 is_stmt 1              ; attention.py:760:21
	v_lshrrev_b32_e32 v113, 1, v0
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s4, s94, s95
	v_or_b32_e32 v21, s95, v50
	s_waitcnt lgkmcnt(3)
	v_mad_u64_u32 v[19:20], null, s4, s79, v[34:35]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v117, v18, s94, 1
	.loc	1 822 32                        ; attention.py:822:32
	v_or_b32_e32 v18, s4, v113
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v118, v21, s94, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v9, s68 :: v_dual_mov_b32 v12, s71
	v_mov_b32_e32 v15, s74
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[20:21], null, v18, s78, v[33:34]
	v_or_b32_e32 v22, s95, v51
	v_or_b32_e32 v23, s95, v52
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v18, 1, v19
	v_add_lshl_u32 v21, v19, s96, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v10, s69 :: v_dual_add_nc_u32 v17, 0, v81
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v119, v22, s94, 1
	v_add_lshl_u32 v120, v23, s94, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v22, v19, s97, 1
	v_add_lshl_u32 v19, v19, s98, 1
	v_cndmask_b32_e64 v23, 0x80000000, v18, s1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v18, 0x80000000, v20, s0
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v181, 0x80000000, v21, s1
	v_or_b32_e32 v25, s95, v54
	v_cndmask_b32_e64 v183, 0x80000000, v19, s1
	v_or_b32_e32 v26, s95, v55
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[18:21], v18, s[80:83], 0 offen
	v_or_b32_e32 v27, s95, v56
	v_or_b32_e32 v28, s95, v57
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v131, v25, s94, 1
	v_add_lshl_u32 v132, v26, s94, 1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v141, v27, s94, 1
	v_add_lshl_u32 v142, v28, s94, 1
	.loc	1 823 32                        ; attention.py:823:32
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v11, s70 :: v_dual_mov_b32 v14, s73
	v_dual_mov_b32 v13, s72 :: v_dual_mov_b32 v16, s75
	v_or_b32_e32 v29, s95, v58
	v_or_b32_e32 v30, s95, v59
	v_or_b32_e32 v31, s95, v60
	v_or_b32_e32 v32, s95, v61
	v_or_b32_e32 v24, s95, v53
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v143, v29, s94, 1
	v_add_lshl_u32 v144, v30, s94, 1
	v_add_lshl_u32 v145, v31, s94, 1
	v_add_lshl_u32 v146, v32, s94, 1
	v_add_lshl_u32 v121, v24, s94, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v182, 0x80000000, v22, s1
	v_or_b32_e32 v114, s95, v64
	v_or_b32_e32 v115, s95, v65
	v_or_b32_e32 v110, s95, v62
	v_or_b32_e32 v112, s95, v63
	v_or_b32_e32 v116, s95, v66
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v128, v91, s94, 1
	v_add_lshl_u32 v129, v92, s94, 1
	v_add_lshl_u32 v122, v85, s94, 1
	v_add_lshl_u32 v123, v86, s94, 1
	v_add_lshl_u32 v124, v87, s94, 1
	v_add_lshl_u32 v125, v88, s94, 1
	v_add_lshl_u32 v126, v89, s94, 1
	v_add_lshl_u32 v127, v90, s94, 1
	v_add_lshl_u32 v130, v93, s94, 1
	v_add_lshl_u32 v164, v114, s94, 1
	v_add_lshl_u32 v165, v115, s94, 1
	v_add_lshl_u32 v176, v94, s94, 1
	v_add_lshl_u32 v177, v95, s94, 1
	v_add_lshl_u32 v178, v96, s94, 1
	v_add_lshl_u32 v179, v97, s94, 1
	v_add_lshl_u32 v180, s4, v80, 1
	v_add_lshl_u32 v110, v110, s94, 1
	v_add_lshl_u32 v147, v112, s94, 1
	v_add_lshl_u32 v166, v116, s94, 1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v17, v[18:19]
	ds_store_b64 v102, v[20:21]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[17:20], v83 offset1:1
	ds_load_2addr_stride64_b64 v[25:28], v83 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[29:32], v99 offset0:2 offset1:3
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[21:24], v23, s[88:91], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[133:140], v[17:18], v[35:36], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[148:155], v[27:28], v[35:36], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[156:163], v[25:26], v[35:36], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[168:175], v[19:20], v[35:36], v[9:16] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v99 offset1:1
	ds_load_2addr_stride64_b64 v[13:16], v100 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[148:155], v[31:32], v[37:38], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[156:163], v[29:30], v[37:38], v[156:163] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x17
	buffer_load_u16 v28, v117, s[84:87], 0 offen
	buffer_load_u16 v29, v118, s[84:87], 0 offen
	buffer_load_u16 v27, v119, s[84:87], 0 offen
	buffer_load_u16 v31, v120, s[84:87], 0 offen
	buffer_load_u16 v25, v121, s[84:87], 0 offen
	buffer_load_u16 v26, v131, s[84:87], 0 offen
	buffer_load_u16 v32, v132, s[84:87], 0 offen
	buffer_load_u16 v112, v141, s[84:87], 0 offen
	buffer_load_u16 v30, v142, s[84:87], 0 offen
	buffer_load_u16 v115, v143, s[84:87], 0 offen
	buffer_load_u16 v116, v144, s[84:87], 0 offen
	buffer_load_u16 v117, v145, s[84:87], 0 offen
	buffer_load_u16 v118, v146, s[84:87], 0 offen
	buffer_load_u16 v113, v110, s[84:87], 0 offen
	buffer_load_u16 v114, v147, s[84:87], 0 offen
	buffer_load_u16 v120, v164, s[84:87], 0 offen
	buffer_load_u16 v121, v165, s[84:87], 0 offen
	buffer_load_u16 v119, v166, s[84:87], 0 offen
	buffer_load_u16 v165, v122, s[84:87], 0 offen
	buffer_load_u16 v164, v123, s[84:87], 0 offen
	buffer_load_u16 v122, v124, s[84:87], 0 offen
	buffer_load_u16 v123, v125, s[84:87], 0 offen
	buffer_load_u16 v124, v126, s[84:87], 0 offen
	buffer_load_u16 v125, v127, s[84:87], 0 offen
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v110.h, 0
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[133:140], v[9:10], v[37:38], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[168:175], v[11:12], v[37:38], v[168:175] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v100 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[148:155], v[15:16], v[39:40], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[156:163], v[13:14], v[39:40], v[156:163] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[13:16], v101 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[133:140], v[9:10], v[39:40], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[168:175], v[11:12], v[39:40], v[168:175] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v101 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[148:155], v[15:16], v[41:42], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[156:163], v[13:14], v[41:42], v[156:163] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v143, v155
	v_cvt_f32_i32_e32 v147, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v167, v158
	v_cvt_f32_i32_e32 v166, v159
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v141, v154
	v_cvt_f32_i32_e32 v142, v153
	v_mul_f32_e32 v143, v108, v143
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[133:140], v[9:10], v[41:42], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[168:175], v[11:12], v[41:42], v[168:175] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[17:20], v181, s[88:91], 0 offen
	buffer_load_b128 v[13:16], v182, s[88:91], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x7
	buffer_load_u16 v144, v128, s[84:87], 0 offen
	buffer_load_u16 v145, v129, s[84:87], 0 offen
	buffer_load_u16 v146, v130, s[84:87], 0 offen
	buffer_load_u16 v127, v176, s[84:87], 0 offen
	buffer_load_u16 v128, v177, s[84:87], 0 offen
	buffer_load_u16 v126, v178, s[84:87], 0 offen
	buffer_load_u16 v130, v179, s[84:87], 0 offen
	buffer_load_u16 v129, v180, s[84:87], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[9:12], v183, s[88:91], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v131, v133
	v_cvt_f32_i32_e32 v156, v170
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v170, 0, v49
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v155, v169
	v_mov_b32_e32 v169, v109
	v_cvt_f32_i32_e32 v132, v134
	v_cvt_f32_i32_e32 v133, v136
	v_cvt_f32_i32_e32 v134, v135
	v_cvt_f32_i32_e32 v135, v139
	v_cvt_f32_i32_e32 v136, v140
	v_cvt_f32_i32_e32 v139, v151
	v_cvt_f32_i32_e32 v140, v152
	v_cvt_f32_i32_e32 v152, v150
	v_cvt_f32_i32_e32 v150, v168
	v_cvt_f32_i32_e32 v151, v157
	v_mul_f32_e32 v139, v103, v139
	v_cvt_f32_i32_e32 v157, v171
	v_cvt_f32_i32_e32 v158, v172
	v_cvt_f32_i32_e32 v159, v175
	v_cvt_f32_i32_e32 v153, v173
	v_cvt_f32_i32_e32 v154, v174
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_dual_mul_f32 v131, v103, v131 :: v_dual_mul_f32 v132, v106, v132
	v_dual_mul_f32 v134, v107, v134 :: v_dual_mul_f32 v141, v108, v141
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v137, v103, v137 :: v_dual_mul_f32 v138, v106, v138
	v_dual_mul_f32 v135, v107, v135 :: v_dual_mul_f32 v136, v108, v136
	v_mul_f32_e32 v142, v107, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v171.h, v110.h
	v_mov_b16_e64 v172.h, v110.h
	v_mov_b16_e64 v176.h, v110.h
	v_mov_b16_e64 v180.h, v110.h
	v_mov_b16_e64 v182.h, v110.h
	v_mov_b16_e64 v174.h, v110.h
	v_mov_b16_e64 v175.h, v110.h
	v_mov_b16_e64 v173.h, v110.h
	v_mov_b16_e64 v177.h, v110.h
	v_mov_b16_e64 v181.h, v110.h
	v_mov_b16_e64 v178.h, v110.h
	v_mov_b16_e64 v179.h, v110.h
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v133, v108, v133 :: v_dual_mul_f32 v140, v106, v140
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(35)
	ds_store_b128 v170, v[21:24]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v21, s94, v75
	v_or_b32_e32 v22, s94, v74
	v_or_b32_e32 v23, s94, v77
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v24, v106, v151
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e32 vcc_lo, v21, v84
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s4, v98, v21
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v21, s94, v73
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s5, v22, v84
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s6, v98, v22
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v22, s94, v72
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s64, v23, v84
	v_cmp_ge_i32_e64 s7, v21, v84
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s8, v98, v21
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v21, s94, v71
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s9, v22, v84
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s10, v98, v22
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v22, s94, v70
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s65, v98, v23
	.loc	1 866 30 is_stmt 0              ; attention.py:866:30
	v_cmp_ge_i32_e64 s11, v21, v84
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s12, v98, v21
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v21, s94, v69
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s13, v22, v84
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s14, v98, v22
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v22, s94, v68
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v122, 16, v122
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s15, v21, v84
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s16, v98, v21
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v21, s94, v67
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s17, v22, v84
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s18, v98, v22
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v22, s94, v66
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v23, v106, v154
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s19, v21, v84
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s20, v98, v21
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v21, s94, v65
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s21, v22, v84
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s22, v98, v22
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v22, s94, v64
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s23, v21, v84
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s24, v98, v21
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v21, s94, v63
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s25, v22, v84
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s26, v98, v22
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v22, s94, v62
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v26, v138, v26 :: v_dual_lshlrev_b32 v31, 16, v31
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s27, v21, v84
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s28, v98, v21
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v21, s94, v61
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s29, v22, v84
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s30, v98, v22
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v22, s94, v60
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v31, v133, v31 :: v_dual_lshlrev_b32 v112, 16, v112
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s31, v21, v84
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s33, v98, v21
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v21, s94, v59
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s34, v22, v84
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s35, v98, v22
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v22, s94, v58
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v112, v136, v112 :: v_dual_lshlrev_b32 v27, 16, v27
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s36, v21, v84
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s37, v98, v21
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v21, s94, v57
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s38, v22, v84
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s40, v98, v22
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v22, s94, v56
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s100, s6, s5
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s39, v21, v84
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s41, v98, v21
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v21, s94, v55
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s42, v22, v84
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s43, v98, v22
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v22, s94, v54
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s10, s9
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s44, v21, v84
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s45, v98, v21
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v21, s94, v53
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(9)
	ds_store_b128 v170, v[13:16] offset:4096
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s46, v22, v84
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s47, v98, v22
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v22, s94, v52
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s48, v21, v84
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s49, v98, v21
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v21, s94, v51
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v13, v107, v148 :: v_dual_mul_f32 v14, v108, v149
	v_mul_f32_e32 v15, v107, v152
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_store_b128 v170, v[9:12] offset:6144
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v9, v103, v167 :: v_dual_lshlrev_b32 v10, 16, v165
	v_mov_b32_e32 v168, v111
	v_dual_mul_f32 v11, v103, v162 :: v_dual_mul_f32 v12, v106, v163
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s52, v21, v84
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v109, v9, v10
	v_dual_mul_f32 v9, v106, v166 :: v_dual_lshlrev_b32 v10, 16, v164
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s53, v98, v21
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v21, s94, v48
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s50, v22, v84
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s51, v98, v22
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v166, v9, v10 :: v_dual_mul_f32 v9, v107, v160
	v_dual_mul_f32 v10, v108, v161 :: v_dual_lshlrev_b32 v123, 16, v123
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v22, s94, v50
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s56, v21, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v122, v9, v122
	v_dual_mul_f32 v123, v10, v123 :: v_dual_lshlrev_b32 v124, 16, v124
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v125, 16, v125
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s57, v98, v21
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v21, s94, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v124, v11, v124
	v_dual_mul_f32 v125, v12, v125 :: v_dual_lshlrev_b32 v144, 16, v144
	v_dual_mul_f32 v16, v103, v155 :: v_dual_lshlrev_b32 v145, 16, v145
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s54, v22, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v144, v13, v144
	v_dual_mul_f32 v145, v14, v145 :: v_dual_lshlrev_b32 v146, 16, v146
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v115, 16, v115
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s55, v98, v22
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v22, s94, v80
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s60, v21, v84
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s61, v98, v21
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v21, s94, v76
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b128 v170, v[17:20] offset:2048
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v17, v106, v156 :: v_dual_mul_f32 v18, v107, v157
	v_mul_f32_e32 v19, v108, v158
	v_mul_f32_e32 v146, v15, v146
	v_dual_mul_f32 v115, v16, v115 :: v_dual_lshlrev_b32 v116, 16, v116
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v117, 16, v117
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s58, v22, v84
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s59, v98, v22
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v22, s94, v78
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s66, v21, v84
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s67, v98, v21
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v21, v108, v147 :: v_dual_mul_f32 v116, v17, v116
	v_dual_mul_f32 v117, v18, v117 :: v_dual_lshlrev_b32 v118, 16, v118
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v121, 16, v121
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s62, v22, v84
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s63, v98, v22
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v20, v107, v159
	v_mul_f32_e32 v22, v103, v153
	v_mul_f32_e32 v118, v19, v118
	v_dual_mul_f32 v121, v21, v121 :: v_dual_lshlrev_b32 v120, 16, v120
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v113, 16, v113
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v147, v103, v150
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, s14, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v120, v20, v120
	v_dual_mul_f32 v113, v22, v113 :: v_dual_lshlrev_b32 v114, 16, v114
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v119, 16, v119
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s10, s16, s15
	s_and_b32 s14, s24, s23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v114, v23, v114
	v_dual_mul_f32 v119, v24, v119 :: v_dual_lshlrev_b32 v28, 16, v28
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s15, s26, s25
	s_and_b32 s24, s55, s54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v28, v131, v28
	v_dual_mul_f32 v29, v132, v29 :: v_dual_lshlrev_b32 v30, 16, v30
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s25, s57, s56
	s_and_b32 s24, s2, s24
	s_and_b32 s25, s2, s25
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v30, v147, v30 :: v_dual_lshlrev_b32 v127, 16, v127
	v_dual_mul_f32 v27, v134, v27 :: v_dual_lshlrev_b32 v130, 16, v130
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v29, 0xff800000, v29, s24
	v_cndmask_b32_e64 v28, 0xff800000, v28, s25
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v126, 16, v126
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s53, s52
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v25, v137, v25 :: v_dual_lshlrev_b32 v32, 16, v32
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s2, s23
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v127, v139, v127
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v27, 0xff800000, v27, s23
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v130, v141, v130 :: v_dual_max_f32 v141, v28, v29
	v_dual_mul_f32 v126, v142, v126 :: v_dual_lshlrev_b32 v129, 16, v129
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v128, 16, v128
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s4, s4, vcc_lo
	s_and_b32 s5, s8, s7
	s_and_b32 s8, s12, s11
	s_and_b32 s11, s18, s17
	s_and_b32 s12, s20, s19
	s_and_b32 s13, s22, s21
	s_and_b32 s20, s28, s27
	s_and_b32 s16, s30, s29
	s_and_b32 s17, s33, s31
	s_and_b32 s18, s35, s34
	s_and_b32 s19, s37, s36
	s_and_b32 s35, s40, s38
	s_and_b32 s26, s47, s46
	s_and_b32 s21, s49, s48
	s_and_b32 s22, s51, s50
	s_and_b32 vcc_lo, s2, s4
	s_and_b32 s4, s2, s5
	s_and_b32 s5, s2, s6
	s_and_b32 s6, s2, s8
	s_and_b32 s8, s2, s9
	s_and_b32 s9, s2, s10
	s_and_b32 s10, s2, s11
	s_and_b32 s11, s2, s12
	s_and_b32 s12, s2, s13
	s_and_b32 s13, s2, s14
	s_and_b32 s14, s2, s15
	s_and_b32 s15, s2, s16
	s_and_b32 s16, s2, s17
	s_and_b32 s17, s2, s18
	s_and_b32 s18, s2, s19
	s_and_b32 s19, s2, s35
	s_and_b32 s20, s2, s20
	s_and_b32 s21, s2, s21
	s_and_b32 s22, s2, s22
	s_and_b32 s26, s2, s26
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v32, v135, v32
	v_dual_mul_f32 v129, v143, v129 :: v_dual_mul_f32 v128, v140, v128
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e32 v135, 0xff800000, v146, vcc_lo
	v_cndmask_b32_e64 v114, 0xff800000, v114, s20
	v_cndmask_b32_e64 v113, 0xff800000, v113, s15
	v_cndmask_b32_e64 v121, 0xff800000, v121, s13
	v_cndmask_b32_e64 v120, 0xff800000, v120, s14
	v_cndmask_b32_e64 v119, 0xff800000, v119, s12
	v_cndmask_b32_e64 v117, 0xff800000, v117, s17
	v_cndmask_b32_e64 v116, 0xff800000, v116, s18
	v_cndmask_b32_e64 v115, 0xff800000, v115, s19
	v_cndmask_b32_e64 v118, 0xff800000, v118, s16
	v_cndmask_b32_e64 v26, 0xff800000, v26, s26
	v_cndmask_b32_e64 v25, 0xff800000, v25, s21
	v_cndmask_b32_e64 v31, 0xff800000, v31, s22
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s29, s41, s39
	s_and_b32 s27, s43, s42
	s_and_b32 s28, s45, s44
	s_and_b32 s30, s59, s58
	s_and_b32 s7, s61, s60
	s_and_b32 s33, s65, s64
	s_and_b32 s34, s67, s66
	s_and_b32 s27, s2, s27
	s_and_b32 s28, s2, s28
	s_and_b32 s29, s2, s29
	s_and_b32 s30, s2, s30
	s_and_b32 s33, s2, s33
	s_and_b32 s34, s2, s34
	s_and_b32 s35, s2, s7
	s_and_b32 s36, s2, s100
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v132, 0xff800000, v144, s4
	v_cndmask_b32_e64 v131, 0xff800000, v145, s36
	v_cndmask_b32_e64 v125, 0xff800000, v125, s5
	v_cndmask_b32_e64 v124, 0xff800000, v124, s6
	v_cndmask_b32_e64 v122, 0xff800000, v122, s9
	v_cndmask_b32_e64 v133, 0xff800000, v166, s10
	v_cndmask_b32_e64 v134, 0xff800000, v109, s11
	v_cndmask_b32_e64 v123, 0xff800000, v123, s8
	v_cndmask_b32_e64 v30, 0xff800000, v30, s29
	v_cndmask_b32_e64 v112, 0xff800000, v112, s27
	v_cndmask_b32_e64 v32, 0xff800000, v32, s28
	v_cndmask_b32_e64 v130, 0xff800000, v130, s35
	v_cndmask_b32_e64 v128, 0xff800000, v128, s33
	v_cndmask_b32_e64 v127, 0xff800000, v127, s34
	v_cndmask_b32_e64 v129, 0xff800000, v129, s30
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v138, v120, v121, v119
	v_max3_f32 v139, v115, v116, v117
	v_max3_f32 v140, v118, v113, v114
	v_max3_f32 v142, v31, v25, v26
.Ltmp2:
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s31, s63, s62
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v109, v134, v133, v122
.Ltmp4:
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s31, s2, s31
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v136, v123, v124, v125
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v126, 0xff800000, v126, s31
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v137, v132, v131, v135
	v_max3_f32 v143, v32, v112, v30
	v_dual_max_f32 v144, v127, v128 :: v_dual_max_f32 v145, v130, v129
	v_max3_f32 v138, v139, v140, v138
	v_max3_f32 v139, v141, v27, v142
	v_max3_f32 v109, v109, v136, v137
.Ltmp8:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s7, 0xff800000, v169
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v136, v144, v126, v145
.Ltmp10:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v111.h, v110.h
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v137, v139, v143, v138
.Ltmp12:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v170.h, v110.h
	v_mov_b16_e64 v165.h, v110.h
	v_mov_b16_e64 v164.h, v110.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v109, v137, v109, v136
.Ltmp14:
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	ds_load_u16_d16 v9, v82
	ds_load_u16_d16 v10, v82 offset:256
	ds_load_u16_d16 v11, v82 offset:512
	ds_load_u16_d16 v12, v82 offset:768
	ds_load_u16_d16 v13, v82 offset:1024
	ds_load_u16_d16 v14, v82 offset:1280
	ds_load_u16_d16 v15, v82 offset:1536
	ds_load_u16_d16 v16, v82 offset:1792
	ds_load_u16_d16 v17, v82 offset:2048
	ds_load_u16_d16 v18, v82 offset:2304
	ds_load_u16_d16 v19, v82 offset:2560
	ds_load_u16_d16 v20, v82 offset:2816
	ds_load_u16_d16 v21, v82 offset:3072
	ds_load_u16_d16 v22, v82 offset:3328
	ds_load_u16_d16 v23, v82 offset:3584
	ds_load_u16_d16 v24, v82 offset:3840
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s94, s94, 64
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v136, v109, s99, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v109, v169, v109, v136
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v27, v27, v109
	v_sub_f32_e32 v114, v114, v109
	v_sub_f32_e32 v135, v135, v109
	v_sub_f32_e32 v127, v127, v109
	v_sub_f32_e32 v129, v129, v109
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v27, v27
	v_exp_f32_e32 v114, v114
	v_exp_f32_e32 v135, v135
	v_exp_f32_e32 v142, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v28, v28, v109
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v146, v129
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v121, v121, v109
	v_sub_f32_e32 v137, v132, v109
	v_sub_f32_e32 v120, v120, v109
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v27, 0, v27, s23
	v_cndmask_b32_e64 v151, 0, v114, s20
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e32 v129, 0, v135, vcc_lo
	v_cndmask_b32_e64 v114, 0, v142, s34
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v119, v119, v109
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v171.l, v27.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v118, v118, v109
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v120, v120
	v_exp_f32_e32 v137, v137
	v_exp_f32_e32 v119, v119
	v_exp_f32_e32 v28, v28
	v_exp_f32_e32 v118, v118
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v177.l, v151.h
	v_mov_b16_e64 v179.l, v129.h
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v120, 0, v120, s14
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v117, v117, v109
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v119, 0, v119, s12
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_sub_f32_e32 v136, v169, v109
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v150, 0, v118, s16
	v_cndmask_b32_e64 v127, 0, v137, s4
	v_cndmask_b32_e64 v28, 0, v28, s25
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v132, v136
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v136, v121
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v176.l, v150.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v122, v122, v109
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v111.l, v28.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v123, v123, v109
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v178.l, v127.h
	v_and_b32_e32 v155, 1, v176
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v138, v122
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v132, 0, v132, s7
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v152, 0, v136, s13
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v130, v130, v109
	v_sub_f32_e32 v126, v126, v109
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v139, v123
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v132
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v180.l, v152.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v124, v124, v109
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v154, 0, v138, s9
.Ltmp17:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v138, v151, v120
.Ltmp18:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v117, v117
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v157, 1, v180
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v140, v124
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v182.l, v154.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v128, v128, v109 :: v_dual_mul_f32 v3, v3, v132
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v145, v130
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v159, 1, v182
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v143, v128
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v122, 0, v117, s17
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v144, v126
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v128, 0, v140, s6
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v113, v113, v109
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v132
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v117, 0, v139, s8
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v139, v152, v119
.Ltmp20:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v170.l, v128.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v113, v113
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v130, 0, v143, s33
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v133, v133, v109 :: v_dual_mul_f32 v6, v6, v132
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v7, v7, v132
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v28, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v165.l, v130.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v133, v133
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v2, v2, v132
	v_mul_f32_e32 v4, v4, v132
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v121, 0, v113, s15
	v_cndmask_b32_e64 v113, 0, v146, s30
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s30, v130, v130
	v_cmp_o_f32_e64 s15, v150, v150
	v_cmp_o_f32_e64 s8, v151, v151
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v137, v150, v121
.Ltmp22:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v116, v116, v109
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v118, 0, v133, s10
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v152, v152
	v_add3_u32 v163, v150, v155, 0x7fff
	v_cmp_o_f32_e64 s33, v119, v119
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v116, v116
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s34, v118, v118
	v_cmp_o_f32_e64 s17, v114, v114
	v_cmp_o_f32_e64 s7, v113, v113
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v149, 0, v116, s18
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v31, v31, v109
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s18, v120, v120
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v136, v149, v122
.Ltmp24:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v30, v30, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v31, v31
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v175.l, v149.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v131, v131, v109
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s14, v149, v149
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v30, v30
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v146, 1, v175
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v131, v131
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v126, 0, v31, s22
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v29, v29, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v162, v149, v146, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v148, 0, v30, s29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v30, v27, v126
.Ltmp26:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v29, v29
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s29, v129, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v174.l, v148.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v134, v134, v109
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s13, v148, v148
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v134, v134
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v29, 0, v29, s24
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s24, v128, v128
	v_mov_b16_e32 v110.l, v29.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v125, v125, v109
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v153, 0, v134, s11
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v115, v115, v109
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s11, v154, v154
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v140, v153, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
.Ltmp28:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v115, v115
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v181.l, v153.h
	v_cmp_o_f32_e64 s10, v153, v153
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v123, 0, v115, s19
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v26, v26, v109
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v115, 0, v131, s36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v32, v32, v109
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v131, 0, v145, s35
.Ltmp29:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v135, v148, v123
.Ltmp30:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v26, v26
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v143, v127, v115
.Ltmp32:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v32, v32
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v145, 1, v174
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v135, v135, v136 :: v_dual_and_b32 v136, 1, v110
.Ltmp34:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v141, v125
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v110.l, v126.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_add3_u32 v161, v148, v145, 0x7fff
	v_add3_u32 v145, v152, v157, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v125, 0, v26, s26
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v26, v28, v29
.Ltmp36:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v112, v112, v109
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v147, 0, v32, s28
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v164.l, v131.h
	v_cmp_o_f32_e64 s22, v125, v125
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v133, v26, v30
.Ltmp38:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v112, v112
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v26, v129, v114
.Ltmp40:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v116, 0, v141, s5
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v173.l, v147.h
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v141, v154, v117
.Ltmp42:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v29, v29
	v_cmp_o_f32_e64 s12, v147, v147
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v142, v128, v116
.Ltmp44:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s28, v127, v127
	v_cmp_o_f32_e64 s25, v123, v123
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v124, 0, v112, s27
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v25, v25, v109
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v112, 0, v144, s31
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s31, v131, v131
	v_cmp_o_f32_e64 s27, v121, v121
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v32, v147, v124
.Ltmp46:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v25, v25
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v30, v130, v112
.Ltmp48:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v124, v124
	v_cmp_o_f32_e64 s26, v122, v122
	v_cmp_o_f32_e64 s35, v117, v117
	v_cmp_o_f32_e64 s20, v116, v116
	v_cmp_o_f32_e64 s19, v115, v115
	v_cmp_o_f32_e64 s16, v112, v112
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v25, 0, v25, s21
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v126, v126
	v_mov_b16_e64 v172.l, v25.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v31, v25, v125
.Ltmp50:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v25, v25
	v_and_b32_e32 v144, 1, v172
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v134, v31, v32
.Ltmp52:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v32, 1, v111
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v111, v137, v138
.Ltmp54:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v137, 1, v171
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v31, v131, v113
	v_add_f32_e32 v138, v139, v140
	v_add_f32_e32 v140, v143, v26
.Ltmp56:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v143, v29, v136, 0x7fff
	v_add3_u32 v136, v27, v137, 0x7fff
	v_add3_u32 v137, v25, v144, 0x7fff
	v_and_b32_e32 v144, 1, v173
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v133, v133, v134 :: v_dual_and_b32 v156, 1, v177
	v_dual_add_f32 v111, v135, v111 :: v_dual_and_b32 v158, 1, v181
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp58:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v160, v147, v144, 0x7fff
	v_add3_u32 v144, v151, v156, 0x7fff
	v_and_b32_e32 v156, 1, v170
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v139, v141, v142
	v_add_f32_e32 v141, v30, v31
.Ltmp60:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v142, v28, v32, 0x7fff
	v_add3_u32 v146, v153, v158, 0x7fff
	v_add3_u32 v147, v154, v159, 0x7fff
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v134, v138, v139 :: v_dual_and_b32 v157, 1, v178
	v_dual_add_f32 v135, v140, v141 :: v_dual_and_b32 v158, 1, v179
.Ltmp62:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v159, 1, v165
	v_add3_u32 v128, v128, v156, 0x7fff
	v_and_b32_e32 v156, 1, v110
	v_mov_b16_e32 v110.l, v125.h
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v111, v133, v111 :: v_dual_and_b32 v164, 1, v164
.Ltmp64:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v130, v130, v159, 0x7fff
	v_cndmask_b16 v138.h, 0x7fff, v143.h, s5
	v_cndmask_b16 v138.l, 0x7fff, v142.h, s6
	v_and_b32_e32 v139, 1, v110
	v_mov_b16_e32 v110.l, v124.h
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v133, v134, v135
.Ltmp66:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v127, v127, v157, 0x7fff
	v_add3_u32 v129, v129, v158, 0x7fff
	v_add3_u32 v126, v126, v156, 0x7fff
	v_cndmask_b16 v143.l, 0x7fff, v128.h, s24
	v_cndmask_b16 v146.l, 0x7fff, v130.h, s30
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v111, v111, v133 :: v_dual_and_b32 v128, 1, v110
.Ltmp68:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v130, v138, s99, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v125, v125, v139, 0x7fff
	v_mov_b16_e32 v110.l, v123.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v25, v82 offset:4096
	ds_load_u16_d16 v26, v82 offset:4352
	ds_load_u16_d16 v27, v82 offset:4608
	ds_load_u16_d16 v28, v82 offset:4864
	ds_load_u16_d16 v29, v82 offset:5120
	ds_load_u16_d16 v30, v82 offset:5376
	ds_load_u16_d16 v31, v82 offset:5632
	ds_load_u16_d16 v32, v82 offset:5888
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v131, v131, v164, 0x7fff
	v_cndmask_b16 v144.l, 0x7fff, v127.h, s28
	v_cndmask_b16 v145.l, 0x7fff, v129.h, s29
	v_cndmask_b16 v127.h, 0x7fff, v126.h, s21
	v_add3_u32 v126, v124, v128, 0x7fff
	v_perm_b32 v124, v130, v138, v104
	v_cndmask_b16 v129.h, 0x7fff, v125.h, s22
	v_perm_b32 v125, v130, v138, v105
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v133, v111, s99, 0xfedcba98 op_sel:[1,0]
.Ltmp70:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v130, 1, v110
	v_mov_b16_e32 v110.l, v122.h
	v_cndmask_b16 v127.l, 0x7fff, v136.h, vcc_lo
	v_cndmask_b16 v129.l, 0x7fff, v137.h, s4
	v_cndmask_b16 v131.l, 0x7fff, v160.h, s12
	v_cndmask_b16 v147.l, 0x7fff, v131.h, s31
	v_cndmask_b16 v131.h, 0x7fff, v126.h, s23
	v_and_b32_e32 v139, 1, v110
	v_mov_b16_e32 v110.l, v121.h
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v111, v111, v133
.Ltmp72:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v123, v123, v130, 0x7fff
	v_permlanex16_b32 v128, v127, s99, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v138, v129, s99, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v133, v131, s99, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v148, v82 offset:6144
	ds_load_u16_d16 v149, v82 offset:6400
	ds_load_u16_d16 v150, v82 offset:6656
	ds_load_u16_d16 v151, v82 offset:6912
	ds_load_u16_d16 v152, v82 offset:7168
	ds_load_u16_d16 v153, v82 offset:7424
	ds_load_u16_d16 v154, v82 offset:7680
	ds_load_u16_d16 v155, v82 offset:7936
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v9, v82 offset:128
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v10, v82 offset:384
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v11, v82 offset:640
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v12, v82 offset:896
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v13, v82 offset:1152
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v14, v82 offset:1408
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v15, v82 offset:1664
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v16, v82 offset:1920
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v17, v82 offset:2176
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v18, v82 offset:2432
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v19, v82 offset:2688
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v20, v82 offset:2944
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v21, v82 offset:3200
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v22, v82 offset:3456
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v23, v82 offset:3712
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v24, v82 offset:3968
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v25, v82 offset:4224
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v26, v82 offset:4480
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v27, v82 offset:4736
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v28, v82 offset:4992
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v29, v82 offset:5248
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v30, v82 offset:5504
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v31, v82 offset:5760
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v32, v82 offset:6016
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v136.h, 0x7fff, v123.h, s25
	v_and_b32_e32 v123, 1, v110
	v_mov_b16_e32 v110.l, v120.h
	v_perm_b32 v126, v128, v127, v104
	v_perm_b32 v127, v128, v127, v105
	v_perm_b32 v128, v138, v129, v104
	v_perm_b32 v129, v138, v129, v105
	v_perm_b32 v130, v133, v131, v104
	v_perm_b32 v131, v133, v131, v105
	v_add3_u32 v121, v121, v123, 0x7fff
	v_and_b32_e32 v123, 1, v110
	v_mov_b16_e32 v110.l, v119.h
	v_add3_u32 v122, v122, v139, 0x7fff
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[124:131], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v136.l, 0x7fff, v161.h, s13
	v_add3_u32 v13, v120, v123, 0x7fff
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v111, v168, v132 :: v_dual_and_b32 v14, 1, v110
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v110.l, v118.h
	v_cndmask_b16 v137.l, 0x7fff, v162.h, s14
	v_cndmask_b16 v140.l, 0x7fff, v163.h, s15
	v_cndmask_b16 v134.l, 0x7fff, v144.h, s8
	v_cndmask_b16 v137.h, 0x7fff, v122.h, s26
	v_cndmask_b16 v140.h, 0x7fff, v121.h, s27
	v_cndmask_b16 v134.h, 0x7fff, v13.h, s18
	v_add3_u32 v16, v119, v14, 0x7fff
	v_and_b32_e32 v119, 1, v110
	v_mov_b16_e32 v110.l, v117.h
	v_permlanex16_b32 v122, v136, s99, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v137, s99, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v140, s99, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v120, v134, s99, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v118, v118, v119, 0x7fff
	v_and_b32_e32 v119, 1, v110
	v_mov_b16_e32 v110.l, v116.h
	v_perm_b32 v9, v122, v136, v104
	v_perm_b32 v10, v122, v136, v105
	v_perm_b32 v11, v12, v137, v104
	v_perm_b32 v12, v12, v137, v105
	v_perm_b32 v13, v15, v140, v104
	v_perm_b32 v14, v15, v140, v105
	v_cndmask_b16 v135.h, 0x7fff, v16.h, s33
	v_perm_b32 v15, v120, v134, v104
	v_perm_b32 v16, v120, v134, v105
	v_cndmask_b16 v141.h, 0x7fff, v118.h, s34
	v_and_b32_e32 v118, 1, v110
	v_mov_b16_e32 v110.l, v115.h
	v_add3_u32 v117, v117, v119, 0x7fff
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[17:24], v[9:16], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v135.l, 0x7fff, v145.h, s9
	v_add3_u32 v13, v116, v118, 0x7fff
	v_and_b32_e32 v14, 1, v110
	v_mov_b16_e32 v110.l, v114.h
	v_cndmask_b16 v141.l, 0x7fff, v146.h, s10
	v_cndmask_b16 v142.l, 0x7fff, v147.h, s11
	v_cndmask_b16 v142.h, 0x7fff, v117.h, s35
	v_add3_u32 v17, v115, v14, 0x7fff
	v_and_b32_e32 v16, 1, v110
	v_mov_b16_e32 v110.l, v112.h
	v_cndmask_b16 v143.h, 0x7fff, v13.h, s20
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16_hi v148, v82 offset:6272
	ds_load_u16_d16_hi v149, v82 offset:6528
	ds_load_u16_d16_hi v150, v82 offset:6784
	ds_load_u16_d16_hi v151, v82 offset:7040
	ds_load_u16_d16_hi v152, v82 offset:7296
	ds_load_u16_d16_hi v153, v82 offset:7552
	ds_load_u16_d16_hi v154, v82 offset:7808
	ds_load_u16_d16_hi v155, v82 offset:8064
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v144.h, 0x7fff, v17.h, s19
	v_add3_u32 v17, v114, v16, 0x7fff
	v_and_b32_e32 v19, 1, v110
	v_mov_b16_e32 v110.l, v113.h
	v_permlanex16_b32 v120, v135, s99, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v141, s99, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v142, s99, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v143, s99, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v20, 1, v110
	v_add3_u32 v19, v112, v19, 0x7fff
	v_cndmask_b16 v145.h, 0x7fff, v17.h, s17
	v_perm_b32 v9, v120, v135, v104
	v_perm_b32 v10, v120, v135, v105
	v_add3_u32 v17, v113, v20, 0x7fff
	v_perm_b32 v11, v12, v141, v104
	v_perm_b32 v12, v12, v141, v105
	v_perm_b32 v13, v15, v142, v104
	v_perm_b32 v14, v15, v142, v105
	v_perm_b32 v15, v18, v143, v104
	v_perm_b32 v16, v18, v143, v105
	v_cndmask_b16 v146.h, 0x7fff, v19.h, s16
	v_cndmask_b16 v147.h, 0x7fff, v17.h, s7
	v_permlanex16_b32 v18, v144, s99, 0xfedcba98 op_sel:[1,0]
	.loc	1 818 13                        ; attention.py:818:13
	v_cmp_lt_i32_e32 vcc_lo, s94, v47
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[25:32], v[9:16], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_permlanex16_b32 v12, v145, s99, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v146, s99, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v147, s99, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v9, v18, v144, v104
	v_perm_b32 v10, v18, v144, v105
	v_perm_b32 v11, v12, v145, v104
	v_perm_b32 v12, v12, v145, v105
	v_perm_b32 v13, v14, v146, v104
	v_perm_b32 v14, v14, v146, v105
	v_perm_b32 v15, v16, v147, v104
	v_perm_b32 v16, v16, v147, v105
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[148:155], v[9:16], v[1:8]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_vccnz .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v109, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v111, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v46
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s93, s93, s3
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s79, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s92, s93
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v9, 0xff800000, v109 :: v_dual_cndmask_b32 v2, 0, v2
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v15, 0, v7 :: v_dual_mov_b32 v10, v9
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v11, 0, v111, vcc_lo
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v12, 0, v4
.Ltmp74:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_cndmask_b32 v16, 0, v8
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp76:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_mov_b32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v13 :: v_dual_mov_b32 v20, v16
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v7, v2 :: v_dual_mov_b32 v8, v3
.Ltmp80:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v5, v11
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp82:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v9, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp86:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v9, v4 :: v_dual_add_f32 v2, v2, v7
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v5, v11, v5
.Ltmp89:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v8
	v_dual_add_f32 v1, v1, v6 :: v_dual_mov_b32 v8, v2
.Ltmp90:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp92:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp93:
	.loc	1 1025 30 is_stmt 1             ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp95:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp97:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
.Ltmp98:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v8 :: v_dual_mov_b32 v7, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp99:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v4, v4, v9 :: v_dual_add_f32 v5, v5, v6
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v3, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v2
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp102:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v6, v4 :: v_dual_mov_b32 v3, v5
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp105:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp107:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v9, v1 :: v_dual_max_f32 v6, v6, v6
.Ltmp108:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v5, v3
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v9
.Ltmp111:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v4, v6
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v8, v11
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v2, v10 :: v_dual_mov_b32 v2, v1
.Ltmp115:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp117:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v8, v7
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp119:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v12, v11 :: v_dual_add_f32 v12, v13, v17
	v_add_f32_e32 v13, v14, v18
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v19, v15
.Ltmp122:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp124:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v15, v19 :: v_dual_add_f32 v15, v16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
	v_mov_b32_e32 v16, v11
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v13, v13, v18 :: v_dual_add_f32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v16, v15, v20
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v15, v11
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v20, v16 :: v_dual_mov_b32 v19, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
	v_add_f32_e32 v11, v11, v15
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v14, v19 :: v_dual_mov_b32 v18, v13
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v14, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
	v_add_f32_e32 v17, v16, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v16, v12
	v_mov_b32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp138:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp139:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp140:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v8
.Ltmp142:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp143:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v9, v10
.Ltmp144:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_mov_b32_e32 v9, 0
	s_add_u32 s4, s76, s4
	s_addc_u32 s5, s77, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp145:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v13, v4, v6 :: v_dual_add_f32 v12, v3, v5
.Ltmp146:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 0xc0, v43
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xe0, v44
.Ltmp148:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v44
	v_lshlrev_b32_e32 v2, 5, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v3
	v_add_nc_u32_e32 v4, 0, v4
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp150:
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v5, 63, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v1, v3, v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v4, v[11:14]
	ds_store_b128 v4, v[7:10] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 64, v0
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v5
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s79, v5
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s77, s77, 0xffff
	s_mov_b32 s79, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s78, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[76:79], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp151:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 184
		.amdhsa_next_free_sgpr 101
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 63
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 184
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 101
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8920
; TotalNumSgprs: 103
; NumVgprs: 184
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 103
; NumVGPRsForWavesPerEU: 184
; Occupancy: 8
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0xbd DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x97 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x76:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1027                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x83:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1032                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x9d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xab:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xb8:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           1
        .value_kind:     by_value
      - .offset:         125
        .size:           1
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     103
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     184
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
