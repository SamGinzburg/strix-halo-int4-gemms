	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
	v_and_b32_e32 v52, 15, v0
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x80
	s_load_b32 s14, s[0:1], 0x88
	s_mov_b32 s83, 0x31027000
	s_mov_b32 s82, 0x7ffffffe
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v9, 3, v0
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v2, 1, v52
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v51, 1, v0
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
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s78, v2
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s4, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s4
	s_mul_hi_u32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s4, s6
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s4, s5
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
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s16, v1
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s15, s16, s3
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s92, s2, s7
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v3, s15, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 1, v5
	.loc	1 776 22 is_stmt 0              ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 0 0                           ; attention.py:0
	s_add_i32 s4, s93, 31
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s93
	s_abs_i32 s4, s4
	s_ashr_i32 s8, s8, 31
	s_mul_hi_u32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
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
	v_mov_b32_e32 v5, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[3:4], null, v3, s78, v[2:3]
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
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s4, s4, 0
	.loc	1 811 18                        ; attention.py:811:18
	v_min3_i32 v53, s2, s5, v5
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s2, s4, 0x7fffffc0
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v4, 24, v9
	buffer_load_u16 v3, v3, s[80:83], 0 offen
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s94, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13                        ; attention.py:818:13
	v_cmp_ge_i32_e32 vcc_lo, s94, v53
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v4, v51, v4, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v4, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_vccnz .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v3, s16, v52
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v4, s15, v52, 1
	v_dual_mov_b32 v7, 0x5410 :: v_dual_and_b32 v54, 1, v1
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v55, 62, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 1, v3
	v_lshrrev_b32_e32 v5, 1, v0
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v6, 16, v0
	v_and_b32_e32 v14, 0x60, v0
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_dual_mov_b32 v125, 0xff800000 :: v_dual_lshlrev_b32 v12, 3, v0
	v_lshlrev_b32_e32 v8, 4, v0
	v_and_b32_e32 v17, 24, v5
	v_mov_b32_e32 v5, v1
	v_add3_u32 v86, 0, v2, v14
	.loc	1 889 86                        ; attention.py:889:86
	v_and_b32_e32 v10, 56, v12
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s81, s9, 0xffff
	s_mov_b32 s80, s8
	s_load_b32 s8, s[0:1], 0x68
	buffer_load_u16 v11, v4, s[80:83], 0 offen
	v_dual_mov_b32 v13, 0x7632 :: v_dual_and_b32 v4, 24, v51
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v15, s14, v3
	v_mov_b32_e32 v3, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v16, v52, 5, v4
	v_mov_b32_e32 v127, v1
	v_dual_mov_b32 v6, v1 :: v_dual_add_nc_u32 v87, 0, v8
	v_dual_cndmask_b32 v18, 0x1054, v7 :: v_dual_and_b32 v41, 24, v12
	v_xor_b32_e32 v14, 8, v16
	v_xor_b32_e32 v19, 16, v16
	v_add_nc_u32_e32 v88, 0, v16
	v_xor_b32_e32 v16, 24, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v115, 0, v14
	v_mov_b32_e32 v7, v1
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s79, v10
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v116, 0, v19
	v_mov_b32_e32 v4, v1
	v_xor_b32_e32 v12, v12, v17
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s8, s8, 0x3fb8aa3b
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v62, 14, v54
	v_or_b32_e32 v63, 16, v54
	v_or_b32_e32 v64, 18, v54
	v_or_b32_e32 v65, 20, v54
	v_or_b32_e32 v66, 22, v54
	v_or_b32_e32 v67, 24, v54
	v_or_b32_e32 v68, 26, v54
	v_or_b32_e32 v69, 28, v54
	v_or_b32_e32 v70, 30, v54
	v_or_b32_e32 v71, 32, v54
	v_or_b32_e32 v72, 34, v54
	v_or_b32_e32 v73, 36, v54
	v_or_b32_e32 v74, 38, v54
	v_or_b32_e32 v75, 40, v54
	v_or_b32_e32 v76, 42, v54
	v_or_b32_e32 v77, 44, v54
	v_or_b32_e32 v78, 46, v54
	v_or_b32_e32 v79, 48, v54
	v_or_b32_e32 v80, 50, v54
	v_or_b32_e32 v81, 52, v54
	v_or_b32_e32 v82, 54, v54
	v_or_b32_e32 v83, 56, v54
	v_or_b32_e32 v84, 58, v54
	v_or_b32_e32 v85, 60, v54
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s95, s3, 11
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v56, 2, v54
	v_or_b32_e32 v57, 4, v54
	v_or_b32_e32 v58, 6, v54
	v_or_b32_e32 v59, 8, v54
	v_or_b32_e32 v60, 10, v54
	v_or_b32_e32 v61, 12, v54
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e64 s0, s78, v41
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v89, s12, v15
	v_or_b32_e32 v90, s95, v62
	v_or_b32_e32 v91, s95, v63
	v_or_b32_e32 v92, s95, v64
	v_or_b32_e32 v93, s95, v65
	v_or_b32_e32 v94, s95, v66
	v_or_b32_e32 v95, s95, v67
	v_or_b32_e32 v96, s95, v68
	v_or_b32_e32 v97, s95, v69
	v_or_b32_e32 v98, s95, v70
	v_or_b32_e32 v99, s95, v71
	v_or_b32_e32 v100, s95, v72
	v_or_b32_e32 v101, s95, v73
	v_or_b32_e32 v102, s95, v74
	v_or_b32_e32 v103, s95, v75
	v_or_b32_e32 v104, s95, v76
	v_or_b32_e32 v105, s95, v77
	v_or_b32_e32 v106, s95, v78
	v_or_b32_e32 v107, s95, v79
	v_or_b32_e32 v108, s95, v80
	v_or_b32_e32 v109, s95, v81
	v_or_b32_e32 v110, s95, v82
	v_or_b32_e32 v111, s95, v83
	v_or_b32_e32 v112, s95, v84
	v_or_b32_e32 v113, s95, v85
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s96, s79, 5
	s_mov_b32 s69, s68
	s_mov_b32 s70, s68
	s_mov_b32 s71, s68
	s_mov_b32 s72, s68
	s_mov_b32 s73, s68
	s_mov_b32 s74, s68
	s_mov_b32 s75, s68
	s_mov_b32 s97, 0x76543210
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
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v117, 0, v16
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[42:43], null, s79, v9, v[10:11]
	v_cndmask_b32_e32 v10, 0x3276, v13, vcc_lo
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[43:44], v88
	ds_load_b64 v[45:46], v115
	ds_load_b64 v[47:48], v116
	ds_load_b64 v[49:50], v117
	v_lshl_or_b32 v9, v18, 8, v18
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v11, 16, v11
	v_add_nc_u32_e32 v118, 0, v12
	v_lshl_or_b32 v10, v10, 8, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v119, s8, v11
	v_and_b32_e32 v9, 0x540054, v9
	v_and_b32_e32 v10, 0x760076, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v123, v119 :: v_dual_add_nc_u32 v20, s13, v15
	v_mov_b32_e32 v122, v119
	v_lshl_or_b32 v9, v9, 4, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v10, v10, 4, v10
	v_min_i32_e32 v114, v15, v20
	v_mov_b32_e32 v124, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v120, 0x5040504, v9
	v_and_b32_e32 v121, 0x7060706, v10
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v17, 2, v0
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s4, s94, s95
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v9, s68 :: v_dual_mov_b32 v10, s69
	v_dual_mov_b32 v11, s70 :: v_dual_mov_b32 v12, s71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 822 32                        ; attention.py:822:32
	v_or_b32_e32 v17, s4, v17
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v13, s72 :: v_dual_mov_b32 v14, s73
	v_dual_mov_b32 v15, s74 :: v_dual_mov_b32 v16, s75
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[17:18], null, v17, s78, v[41:42]
	v_or_b32_e32 v29, s95, v54
	v_or_b32_e32 v38, s95, v56
	v_or_b32_e32 v39, s95, v57
	v_or_b32_e32 v126, s95, v58
	v_or_b32_e32 v146, s95, v59
	v_or_b32_e32 v149, s95, v60
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	v_or_b32_e32 v150, s95, v61
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v151, v90, s94, 1
	v_add_lshl_u32 v152, v91, s94, 1
	v_add_lshl_u32 v169, v92, s94, 1
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b64 v[17:18], v17, s[80:83], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v170, v93, s94, 1
	v_add_lshl_u32 v171, v94, s94, 1
	v_add_lshl_u32 v172, v95, s94, 1
	v_add_lshl_u32 v173, v96, s94, 1
	v_add_lshl_u32 v174, v97, s94, 1
	v_add_lshl_u32 v175, v98, s94, 1
	v_add_lshl_u32 v176, v99, s94, 1
	v_add_lshl_u32 v177, v100, s94, 1
	v_add_lshl_u32 v178, v101, s94, 1
	v_add_lshl_u32 v179, v102, s94, 1
	v_add_lshl_u32 v180, v103, s94, 1
	v_add_lshl_u32 v181, v104, s94, 1
	v_add_lshl_u32 v182, v105, s94, 1
	v_add_lshl_u32 v183, v106, s94, 1
	v_add_lshl_u32 v184, v107, s94, 1
	v_add_lshl_u32 v185, v108, s94, 1
	v_add_lshl_u32 v186, v109, s94, 1
	v_add_lshl_u32 v187, v110, s94, 1
	v_add_lshl_u32 v188, v111, s94, 1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v118, v[17:18]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[25:28], v88 offset1:1
	ds_load_2addr_stride64_b64 v[136:139], v88 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[140:143], v115 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[43:44], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[138:139], v[43:44], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[128:135], v[136:137], v[43:44], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[27:28], v[43:44], v[9:16] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v115 offset1:1
	ds_load_2addr_stride64_b64 v[13:16], v116 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[142:143], v[45:46], v[30:37] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[128:135], v[140:141], v[45:46], v[128:135] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v136, v112, s94, 1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[45:46], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[11:12], v[45:46], v[159:166] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v116 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[15:16], v[47:48], v[30:37] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[128:135], v[13:14], v[47:48], v[128:135] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[13:16], v117 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[47:48], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[11:12], v[47:48], v[159:166] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v117 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[15:16], v[49:50], v[30:37] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[128:135], v[13:14], v[49:50], v[128:135] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v147, v31
	v_cvt_f32_i32_e32 v148, v30
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v30, v39, s94, 1
	v_add_lshl_u32 v39, v149, s94, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v25, v37
	v_cvt_f32_i32_e32 v145, v32
	v_cvt_f32_i32_e32 v26, v128
	v_cvt_f32_i32_e32 v158, v130
	v_cvt_f32_i32_e32 v157, v131
	v_cvt_f32_i32_e32 v156, v132
	v_cvt_f32_i32_e32 v155, v133
	v_cvt_f32_i32_e32 v154, v134
	v_cvt_f32_i32_e32 v153, v135
	v_cvt_f32_i32_e32 v28, v129
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[49:50], v[17:24] neg_lo:[1,1,0]
	v_mad_u64_u32 v[9:10], null, s4, s79, v[42:43]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[11:12], v[49:50], v[159:166] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v12, v29, s94, 1
	v_add_lshl_u32 v29, v38, s94, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v15, v20
	v_cvt_f32_i32_e32 v20, v22
	v_cvt_f32_i32_e32 v22, v34
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v31, 1, v9
	v_add_lshl_u32 v9, v9, s96, 1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v11, v113, s94, 1
	v_add_lshl_u32 v10, s4, v55, 1
	v_add_lshl_u32 v34, v126, s94, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v31, 0x80000000, v31, s1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v38, v146, s94, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v13, v17
	v_cvt_f32_i32_e32 v14, v18
	v_cvt_f32_i32_e32 v16, v19
	v_cvt_f32_i32_e32 v17, v23
	v_cvt_f32_i32_e32 v18, v24
	v_cvt_f32_i32_e32 v19, v21
	v_cvt_f32_i32_e32 v21, v33
	v_cvt_f32_i32_e32 v23, v36
	v_cvt_f32_i32_e32 v24, v35
	v_cvt_f32_i32_e32 v144, v160
	v_cvt_f32_i32_e32 v141, v161
	v_cvt_f32_i32_e32 v140, v162
	v_cvt_f32_i32_e32 v40, v163
	v_cvt_f32_i32_e32 v128, v166
	v_cvt_f32_i32_e32 v36, v164
	v_cvt_f32_i32_e32 v37, v165
	v_cvt_f32_i32_e32 v27, v159
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v126, v150, s94, 1
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[165:168], v31, s[88:91], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1f
	buffer_load_u16 v32, v12, s[84:87], 0 offen
	buffer_load_u16 v33, v29, s[84:87], 0 offen
	buffer_load_u16 v31, v30, s[84:87], 0 offen
	buffer_load_u16 v35, v34, s[84:87], 0 offen
	buffer_load_u16 v29, v38, s[84:87], 0 offen
	buffer_load_u16 v30, v39, s[84:87], 0 offen
	buffer_load_u16 v38, v126, s[84:87], 0 offen
	buffer_load_u16 v39, v151, s[84:87], 0 offen
	buffer_load_u16 v34, v152, s[84:87], 0 offen
	buffer_load_u16 v146, v169, s[84:87], 0 offen
	buffer_load_u16 v143, v170, s[84:87], 0 offen
	buffer_load_u16 v142, v171, s[84:87], 0 offen
	buffer_load_u16 v132, v172, s[84:87], 0 offen
	buffer_load_u16 v129, v173, s[84:87], 0 offen
	buffer_load_u16 v130, v174, s[84:87], 0 offen
	buffer_load_u16 v138, v175, s[84:87], 0 offen
	buffer_load_u16 v139, v176, s[84:87], 0 offen
	buffer_load_u16 v133, v177, s[84:87], 0 offen
	buffer_load_u16 v164, v178, s[84:87], 0 offen
	buffer_load_u16 v163, v179, s[84:87], 0 offen
	buffer_load_u16 v162, v180, s[84:87], 0 offen
	buffer_load_u16 v161, v181, s[84:87], 0 offen
	buffer_load_u16 v160, v182, s[84:87], 0 offen
	buffer_load_u16 v159, v183, s[84:87], 0 offen
	buffer_load_u16 v151, v184, s[84:87], 0 offen
	buffer_load_u16 v150, v185, s[84:87], 0 offen
	buffer_load_u16 v149, v186, s[84:87], 0 offen
	buffer_load_u16 v134, v187, s[84:87], 0 offen
	buffer_load_u16 v135, v188, s[84:87], 0 offen
	buffer_load_u16 v131, v136, s[84:87], 0 offen
	buffer_load_u16 v137, v11, s[84:87], 0 offen
	buffer_load_u16 v136, v10, s[84:87], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[9:12], v9, s[88:91], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v126, s94, v81
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v21, v119, v21
	v_dual_mul_f32 v13, v119, v13 :: v_dual_mul_f32 v18, v124, v18
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e32 vcc_lo, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s4, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v80
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v17, v123, v17 :: v_dual_mul_f32 v22, v122, v22
	v_dual_mul_f32 v23, v124, v23 :: v_dual_mul_f32 v24, v123, v24
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s5, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s6, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v79
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s4, s4, vcc_lo
	v_mov_b32_e32 v152, v127
	s_and_b32 s4, s2, s4
	s_and_b32 s98, s6, s5
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s7, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s8, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v78
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v28, v122, v28 :: v_dual_mul_f32 v25, v124, v25
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s8, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s9, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s10, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v77
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s2, s5
	s_and_b32 s6, s10, s9
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s11, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s12, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v76
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s2, s6
	s_and_b32 s7, s12, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s13, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s14, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v75
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, s2, s7
	s_and_b32 s8, s14, s13
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s15, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s16, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v74
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s2, s8
	s_and_b32 s9, s16, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s17, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s18, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v73
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, s2, s9
	s_and_b32 s10, s18, s17
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s19, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s20, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v72
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s10, s2, s10
	s_and_b32 s11, s20, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s21, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s22, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v71
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s11, s2, s11
	s_and_b32 s12, s22, s21
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s23, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s24, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v70
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s12, s2, s12
	s_and_b32 s13, s24, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s25, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s26, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v69
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s13, s2, s13
	s_and_b32 s14, s26, s25
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s27, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s28, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s14, s2, s14
	s_and_b32 s17, s28, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s29, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s30, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v67
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s17, s2, s17
	s_and_b32 s15, s30, s29
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s31, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s33, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v66
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s15, s2, s15
	s_and_b32 s16, s33, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s34, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s35, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v65
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s16, s2, s16
	s_and_b32 s18, s35, s34
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s36, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s37, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v64
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s18, s2, s18
	s_and_b32 s19, s37, s36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s38, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s39, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v63
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s20, s2, s19
	s_and_b32 s21, s39, s38
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s40, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s41, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v62
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s2, s21
	s_and_b32 s35, s41, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s42, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s43, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v61
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s35, s2, s35
	s_and_b32 s36, s43, s42
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s44, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s45, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v60
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s37, s45, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s46, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s47, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v59
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s47, s46
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s48, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s49, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v58
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s31, s2, s22
	s_and_b32 s23, s49, s48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s50, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s51, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v57
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s26, s2, s23
	s_and_b32 s24, s51, s50
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s52, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s53, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v56
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s27, s2, s24
	s_and_b32 s25, s53, s52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s54, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s55, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v54
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s29, s2, s25
	s_and_b32 s28, s55, s54
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s56, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s57, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v55
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s33, s2, s28
	s_and_b32 s28, s2, s98
	s_and_b32 s30, s57, s56
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s58, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s59, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v85
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s34, s2, s30
	s_and_b32 s30, s2, s36
	s_and_b32 s36, s2, s37
	s_and_b32 s38, s59, s58
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s60, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s61, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v84
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s19, s2, s38
	s_and_b32 s39, s61, s60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s62, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s63, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v83
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s24, s2, s39
	s_and_b32 s40, s63, s62
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s64, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s65, v114, v126
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v126, s94, v82
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s2, s40
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s94, s94, 64
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s41, s65, s64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s66, v126, v89
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s67, v114, v126
	.loc	1 867 21 is_stmt 1              ; attention.py:867:21
	s_and_b32 s23, s2, s41
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v126.h, 0
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s42, s67, s66
	s_and_b32 s25, s2, s42
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v127.h, v126.h
	v_mov_b16_e64 v169.h, v126.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(33)
	ds_store_b128 v87, v[165:168]
	v_mov_b32_e32 v165, v125
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v168.h, v126.h
	v_mov_b16_e64 v166.h, v126.h
	v_mov_b16_e64 v167.h, v126.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_store_b128 v87, v[9:12] offset:4096
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v9, v119, v158 :: v_dual_lshlrev_b32 v10, 16, v164
	v_dual_mul_f32 v11, v124, v26 :: v_dual_mul_f32 v12, v119, v36
	v_mul_f32_e32 v26, v122, v37
	v_mul_f32_e32 v36, v122, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v125, v9, v10
	v_dual_mul_f32 v9, v122, v157 :: v_dual_lshlrev_b32 v10, 16, v163
	v_mul_f32_e32 v37, v124, v15
	v_dual_mul_f32 v14, v119, v19 :: v_dual_mul_f32 v19, v122, v20
	v_dual_mul_f32 v20, v119, v27 :: v_dual_mul_f32 v157, v9, v10
	v_dual_mul_f32 v9, v123, v156 :: v_dual_lshlrev_b32 v10, 16, v162
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v156.h, v126.h
	v_mov_b16_e64 v158.h, v126.h
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v165
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v162, v9, v10 :: v_dual_mul_f32 v9, v124, v155
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v10, 16, v161
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v155.h, v126.h
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v161, v9, v10
	v_dual_mul_f32 v9, v119, v154 :: v_dual_lshlrev_b32 v10, 16, v160
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v154.h, v126.h
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v160, v9, v10 :: v_dual_mul_f32 v9, v122, v153
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v10, 16, v159
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v153.h, v126.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v159, v9, v10
	v_dual_mul_f32 v9, v123, v148 :: v_dual_lshlrev_b32 v10, 16, v151
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v148.h, v126.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v151, v9, v10
	v_dual_mul_f32 v9, v124, v147 :: v_dual_lshlrev_b32 v10, 16, v150
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v147.h, v126.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v150, v9, v10 :: v_dual_mul_f32 v9, v123, v145
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v10, 16, v149
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v145.h, v126.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v149, v9, v10
	v_dual_mul_f32 v9, v119, v144 :: v_dual_lshlrev_b32 v10, 16, v146
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v144.h, v126.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v146, v9, v10 :: v_dual_mul_f32 v9, v122, v141
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v10, 16, v143
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v141.h, v126.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v143, v9, v10
	v_dual_mul_f32 v9, v123, v140 :: v_dual_lshlrev_b32 v10, 16, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v140.h, v126.h
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v142, v9, v10 :: v_dual_mul_f32 v9, v124, v40
	v_mul_f32_e32 v10, v123, v128
	v_mul_f32_e32 v40, v123, v16
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v16, 16, v138
	v_lshlrev_b32_e32 v128, 16, v129
	v_lshlrev_b32_e32 v129, 16, v130
	v_lshlrev_b32_e32 v15, 16, v132
	v_lshlrev_b32_e32 v132, 16, v134
	v_lshlrev_b32_e32 v134, 16, v137
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v137, v10, v16
	v_dual_mul_f32 v128, v12, v128 :: v_dual_lshlrev_b32 v27, 16, v139
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v130, 16, v133
	v_lshlrev_b32_e32 v133, 16, v135
	v_lshlrev_b32_e32 v39, 16, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v27, v11, v27
	v_dual_mul_f32 v28, v28, v130 :: v_dual_lshlrev_b32 v33, 16, v33
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v22, v22, v133
	v_dual_mul_f32 v18, v18, v39 :: v_dual_lshlrev_b32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v33, v36, v33 :: v_dual_lshlrev_b32 v32, 16, v32
	v_dual_mul_f32 v20, v20, v34 :: v_dual_lshlrev_b32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v29, v14, v29 :: v_dual_lshlrev_b32 v30, 16, v30
	v_dual_mul_f32 v32, v13, v32 :: v_dual_lshlrev_b32 v35, 16, v35
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v38, 16, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v26, v26, v129 :: v_dual_mul_f32 v31, v40, v31
	v_mul_f32_e32 v35, v37, v35
	v_mul_f32_e32 v19, v19, v30
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v32, 0xff800000, v32, s34
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v131, 16, v131
	v_lshlrev_b32_e32 v135, 16, v136
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v136, v9, v15 :: v_dual_mul_f32 v23, v23, v134
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v26, 0xff800000, v26, s17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v24, v24, v131
	v_mul_f32_e32 v25, v25, v135
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v128, 0xff800000, v128, s15
	v_cndmask_b32_e64 v27, 0xff800000, v27, s13
	v_cndmask_b32_e64 v131, 0xff800000, v137, s14
	v_cndmask_b32_e64 v28, 0xff800000, v28, s12
	v_cndmask_b32_e64 v133, 0xff800000, v143, s20
	v_cndmask_b32_e64 v134, 0xff800000, v146, s21
	v_cndmask_b32_e64 v135, 0xff800000, v136, s16
	v_cndmask_b32_e64 v19, 0xff800000, v19, s31
	v_cndmask_b32_e64 v29, 0xff800000, v29, s26
	v_cndmask_b32_e64 v33, 0xff800000, v33, s33
	v_cndmask_b32_e64 v35, 0xff800000, v35, s27
	v_cndmask_b32_e64 v20, 0xff800000, v20, s35
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v21, v21, v132
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v132, 0xff800000, v142, s18
	v_cndmask_b32_e64 v18, 0xff800000, v18, s30
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v17, v17, v38
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v30, 0xff800000, v150, s28
	v_cndmask_b32_e64 v34, 0xff800000, v151, s5
	v_cndmask_b32_e64 v36, 0xff800000, v159, s6
	v_cndmask_b32_e64 v37, 0xff800000, v160, s7
	v_cndmask_b32_e64 v38, 0xff800000, v162, s9
	v_cndmask_b32_e64 v39, 0xff800000, v157, s10
	v_cndmask_b32_e64 v40, 0xff800000, v125, s11
	v_cndmask_b32_e64 v129, 0xff800000, v161, s8
	v_cndmask_b32_e64 v130, 0xff800000, v149, s4
	v_cndmask_b32_e64 v31, 0xff800000, v31, s29
	v_cndmask_b32_e64 v17, 0xff800000, v17, s36
	v_cndmask_b32_e64 v23, 0xff800000, v23, s24
	v_cndmask_b32_e64 v22, 0xff800000, v22, s23
	v_cndmask_b32_e64 v21, 0xff800000, v21, s25
	v_cndmask_b32_e64 v25, 0xff800000, v25, s19
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v138, v131, v27, v28
	v_max3_f32 v139, v134, v133, v132
	v_max3_f32 v142, v135, v128, v26
	v_max_f32_e32 v143, v32, v33
	v_max3_f32 v146, v35, v29, v19
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v24, 0xff800000, v24, s22
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v125, v40, v39, v38
	v_max3_f32 v136, v129, v37, v36
	v_max3_f32 v137, v34, v30, v130
	v_max3_f32 v149, v17, v18, v20
	v_dual_max_f32 v150, v21, v22 :: v_dual_max_f32 v151, v23, v25
	v_max3_f32 v138, v139, v142, v138
	v_max3_f32 v139, v143, v31, v146
	v_max3_f32 v125, v125, v136, v137
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v9, v86
	ds_load_u16_d16 v10, v86 offset:256
	ds_load_u16_d16 v11, v86 offset:512
	ds_load_u16_d16 v12, v86 offset:768
	ds_load_u16_d16 v13, v86 offset:1024
	ds_load_u16_d16 v14, v86 offset:1280
	ds_load_u16_d16 v15, v86 offset:1536
	ds_load_u16_d16 v16, v86 offset:1792
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v136, v150, v24, v151
	v_max3_f32 v137, v139, v149, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v125, v137, v125, v136
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v136, v125, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v125, v165, v125, v136
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v32, v32, v125
	v_sub_f32_e32 v27, v27, v125
	v_sub_f32_e32 v34, v34, v125
	v_sub_f32_e32 v30, v30, v125
	v_sub_f32_e32 v18, v18, v125
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v32, v32
	v_exp_f32_e32 v27, v27
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v30, v30
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_sub_f32_e32 v136, v165, v125
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v20, v20, v125
	v_sub_f32_e32 v22, v22, v125
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v18, v18
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v28, v28, v125
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v138, v136
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v32, 0, v32, s34
	v_cndmask_b32_e64 v27, 0, v27, s13
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v128, v128, v125
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v20, v20
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s5
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v166.l, v32.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v131, v131, v125
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v154.l, v27.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v24, v24, v125
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v128, v128
	v_exp_f32_e32 v22, v22
	v_exp_f32_e32 v131, v131
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v151, 0, v18, s30
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v24, v24
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v18, 0, v20, s35
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v40, v125
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v28, v28
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v23, v23, v125
	v_sub_f32_e32 v37, v37, v125
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v137, 0, v128, s15
	v_cndmask_b32_e64 v157, 0, v22, s23
	v_cndmask_b32_e64 v136, 0, v131, s14
	v_cndmask_b32_e64 v131, 0, v30, s28
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v19, v19, v125
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v128, 0, v24, s22
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v135, v135, v125
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v158.l, v18.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v39, v125
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v19, v19
	v_exp_f32_e32 v139, v40
	v_exp_f32_e32 v135, v135
	v_exp_f32_e32 v23, v23
	v_exp_f32_e32 v142, v39
	v_exp_f32_e32 v37, v37
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v36, v125
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v145.l, v34.h
	v_mov_b16_e64 v141.l, v157.h
	v_cmp_o_f32_e64 s13, v34, v34
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v150, 0, v19, s31
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v134, v134, v125
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v146, 0, v135, s16
	v_cndmask_b32_e64 v135, 0, v28, s12
	v_cndmask_b32_e64 v28, 0, v139, s11
	v_cndmask_b32_e64 v159, 0, v23, s24
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v134, v134
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s7
.Ltmp8:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v139, v27, v135
.Ltmp9:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v138, 0, v138, vcc_lo
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v140.l, v159.h
	v_mov_b16_e64 v147.l, v37.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v21, v21, v125
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v153.l, v28.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v4, v4, v138
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v134, s21
	v_cndmask_b32_e64 v134, 0, v142, s10
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v35, v35, v125
	v_sub_f32_e32 v132, v132, v125
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp10:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v23, v18, v40 :: v_dual_add_f32 v142, v28, v134
.Ltmp11:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v133, v133, v125
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v132, v132
	v_exp_f32_e32 v35, v35
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s12, v37, v37
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v164, v139, v142
.Ltmp13:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v133, v133
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v138
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v32, v32
	v_mov_b16_e64 v156.l, v146.h
	v_cmp_o_f32_e64 s23, v150, v150
	v_cmp_o_f32_e64 s5, v18, v18
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v132, s18
	v_cndmask_b32_e64 v35, 0, v35, s27
	v_cndmask_b32_e64 v132, 0, v36, s6
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v26, v26, v125
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v143, 0, v133, s20
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v33, v125
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s22, v35, v35
	v_cmp_o_f32_e64 s6, v146, v146
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v2, v2, v138
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v24, v143, v39 :: v_dual_sub_f32 v17, v17, v125
.Ltmp15:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v127.l, v143.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v130, v130, v125
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v162, v23, v24
.Ltmp17:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v24, 1, v166
	v_cmp_o_f32_e64 s11, v143, v143
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v130, v130
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s14, v151, v151
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s33
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s16, v157, v157
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v138
	v_mul_f32_e32 v5, v5, v138
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s36
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v31, v31, v125
.Ltmp18:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v19, v32, v33
.Ltmp19:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v130, s4
	v_cndmask_b32_e64 v130, 0, v21, s25
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v22, v17, v151
.Ltmp21:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v31, v31
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v38, v38, v125
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v126.l, v33.h
	v_cmp_o_f32_e64 s20, v33, v33
	v_mov_b16_e64 v144.l, v36.h
	v_cmp_o_f32_e64 s15, v36, v36
	v_mov_b16_e64 v169.l, v17.h
	v_cmp_o_f32_e64 s4, v17, v17
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v138
	v_mul_f32_e32 v7, v7, v138
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v31, 0, v31, s29
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v139, 1, v169
	v_cmp_o_f32_e64 s24, v132, v132
	v_cmp_o_f32_e64 s25, v131, v131
	v_cmp_o_f32_e64 s27, v128, v128
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v20, v31, v35 :: v_dual_sub_f32 v29, v29, v125
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v167.l, v31.h
	v_cmp_o_f32_e64 s18, v31, v31
	v_add3_u32 v139, v17, v139, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v160, v19, v20
.Ltmp25:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v29, v29
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v19, v37, v132 :: v_dual_add_f32 v20, v34, v131
.Ltmp27:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v26, v26
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v139.l, 0x7fff, v139.h, s4
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v29, 0, v29, s26
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s26, v130, v130
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v26, 0, v26, s17
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s17, v159, v159
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v21, v29, v150
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v168.l, v29.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v30, v26, v136
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v155.l, v26.h
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v161, v21, v22
	v_add_f32_e32 v22, v157, v128
.Ltmp33:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v129, v129, v125
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v21, v36, v130
.Ltmp35:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v26, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v129, v129
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s9
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v28, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v133, 0, v129, s8
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s8, v27, v27
	v_mov_b16_e64 v148.l, v38.h
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v166, v20, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_add_f32 v149, v38, v133 :: v_dual_and_b32 v20, 1, v158
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v21, v32, v24, 0x7fff
	v_cmp_o_f32_e64 s10, v38, v38
	v_add3_u32 v142, v18, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v165, v149, v19
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v19, 1, v126
	v_and_b32_e32 v149, 1, v145
	v_mov_b16_e32 v126.l, v35.h
	v_add3_u32 v19, v33, v19, 0x7fff
	v_and_b32_e32 v33, 1, v148
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v25, v25, v125 :: v_dual_and_b32 v148, 1, v147
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v149, v34, v149, 0x7fff
	v_and_b32_e32 v34, 1, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v147, v38, v33, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v25, v25
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v33, 1, v144
	v_add3_u32 v148, v37, v148, 0x7fff
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v38, v164, v165 :: v_dual_and_b32 v37, 1, v140
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v141, v157, v34, 0x7fff
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v160, v161
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v140, v36, v33, 0x7fff
	v_and_b32_e32 v33, 1, v126
	v_mov_b16_e64 v126.l, v150.h
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v129, 0, v25, s19
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s19, v29, v29
	v_add3_u32 v161, v159, v37, 0x7fff
	v_add3_u32 v33, v35, v33, 0x7fff
	v_cndmask_b16 v37.h, 0x7fff, v19.h, s20
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v23, v159, v129
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v37.l, 0x7fff, v21.h, s21
	v_cndmask_b16 v149.l, 0x7fff, v140.h, s15
	v_cmp_o_f32_e64 s20, v136, v136
	v_cndmask_b16 v140.l, 0x7fff, v142.h, s5
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v158, v22, v23
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v135, v135
	v_cndmask_b16 v147.l, 0x7fff, v148.h, s12
	v_cmp_o_f32_e64 s28, v129, v129
	v_cndmask_b16 v148.l, 0x7fff, v149.h, s13
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v144, v166, v158
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v32, 1, v153
	v_and_b32_e32 v153, 1, v126
	v_mov_b16_e64 v126.l, v151.h
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v25, v146, v137
	v_add_f32_e32 v35, v38, v144
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v144, v37, s97, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v161.l, 0x7fff, v161.h, s17
	v_and_b32_e32 v38, 1, v126
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v163, v25, v30 :: v_dual_and_b32 v30, 1, v168
.Ltmp53:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v25, 1, v167
	v_mov_b16_e32 v126.l, v40.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v151, v151, v38, 0x7fff
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v162, v163
.Ltmp55:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v23, v29, v30, 0x7fff
	v_and_b32_e32 v29, 1, v156
	v_add3_u32 v22, v31, v25, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v34, v34, v36 :: v_dual_and_b32 v25, 1, v127
.Ltmp57:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v30, 1, v155
	v_add3_u32 v127, v146, v29, 0x7fff
	v_and_b32_e32 v31, 1, v154
	v_add3_u32 v36, v150, v153, 0x7fff
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v150, v34, v35
.Ltmp59:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v17, v86 offset:2048
	ds_load_u16_d16 v18, v86 offset:2304
	ds_load_u16_d16 v19, v86 offset:2560
	ds_load_u16_d16 v20, v86 offset:2816
	ds_load_u16_d16 v21, v86 offset:3072
	ds_load_u16_d16 v22, v86 offset:3328
	ds_load_u16_d16 v23, v86 offset:3584
	ds_load_u16_d16 v24, v86 offset:3840
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v142.l, 0x7fff, v127.h, s6
	v_and_b32_e32 v127, 1, v126
	v_add3_u32 v167, v143, v25, 0x7fff
	v_add3_u32 v143, v26, v30, 0x7fff
	v_add3_u32 v145, v27, v31, 0x7fff
	v_add3_u32 v146, v28, v32, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v25, v86 offset:4096
	ds_load_u16_d16 v26, v86 offset:4352
	ds_load_u16_d16 v27, v86 offset:4608
	ds_load_u16_d16 v28, v86 offset:4864
	ds_load_u16_d16 v29, v86 offset:5120
	ds_load_u16_d16 v30, v86 offset:5376
	ds_load_u16_d16 v31, v86 offset:5632
	ds_load_u16_d16 v32, v86 offset:5888
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v40, v40, v127, 0x7fff
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v127, v150, s97, 0xfedcba98 op_sel:[1,0]
.Ltmp61:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v126.l, v39.h
	s_waitcnt lgkmcnt(10)
	v_cndmask_b16 v154.l, 0x7fff, v22.h, s18
	s_waitcnt lgkmcnt(9)
	v_cndmask_b16 v155.l, 0x7fff, v23.h, s19
	v_cndmask_b16 v154.h, 0x7fff, v33.h, s22
	v_cndmask_b16 v155.h, 0x7fff, v36.h, s23
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v8, v8, v138 :: v_dual_add_f32 v127, v150, v127
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v139.h, 0x7fff, v151.h, s14
	v_and_b32_e32 v150, 1, v126
	v_mov_b16_e64 v126.l, v137.h
	v_permlanex16_b32 v36, v154, s97, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v155, s97, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s18, v39, v39
	v_add3_u32 v150, v39, v150, 0x7fff
	v_permlanex16_b32 v162, v139, s97, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v163, 1, v126
	v_mov_b16_e64 v126.l, v136.h
	v_perm_b32 v33, v144, v37, v120
	v_perm_b32 v34, v144, v37, v121
	v_perm_b32 v35, v36, v154, v120
	v_perm_b32 v36, v36, v154, v121
	v_perm_b32 v37, v38, v155, v120
	v_perm_b32 v38, v38, v155, v121
	v_cndmask_b16 v151.l, 0x7fff, v141.h, s16
	v_cndmask_b16 v140.h, 0x7fff, v40.h, vcc_lo
	v_perm_b32 v39, v162, v139, v120
	v_perm_b32 v40, v162, v139, v121
	v_cndmask_b16 v141.h, 0x7fff, v150.h, s18
	v_and_b32_e32 v150, 1, v126
	v_mov_b16_e64 v126.l, v135.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v153, v86 offset:6144
	ds_load_u16_d16 v154, v86 offset:6400
	ds_load_u16_d16 v155, v86 offset:6656
	ds_load_u16_d16 v156, v86 offset:6912
	ds_load_u16_d16 v157, v86 offset:7168
	ds_load_u16_d16 v158, v86 offset:7424
	ds_load_u16_d16 v159, v86 offset:7680
	ds_load_u16_d16 v160, v86 offset:7936
	ds_load_u16_d16_hi v9, v86 offset:128
	ds_load_u16_d16_hi v10, v86 offset:384
	ds_load_u16_d16_hi v11, v86 offset:640
	ds_load_u16_d16_hi v12, v86 offset:896
	ds_load_u16_d16_hi v13, v86 offset:1152
	ds_load_u16_d16_hi v14, v86 offset:1408
	ds_load_u16_d16_hi v15, v86 offset:1664
	ds_load_u16_d16_hi v16, v86 offset:1920
	ds_load_u16_d16_hi v17, v86 offset:2176
	ds_load_u16_d16_hi v18, v86 offset:2432
	ds_load_u16_d16_hi v19, v86 offset:2688
	ds_load_u16_d16_hi v20, v86 offset:2944
	ds_load_u16_d16_hi v21, v86 offset:3200
	ds_load_u16_d16_hi v22, v86 offset:3456
	ds_load_u16_d16_hi v23, v86 offset:3712
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v24, v86 offset:3968
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v25, v86 offset:4224
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v26, v86 offset:4480
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v27, v86 offset:4736
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v28, v86 offset:4992
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v29, v86 offset:5248
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v30, v86 offset:5504
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v31, v86 offset:5760
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v32, v86 offset:6016
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s19, v137, v137
	v_add3_u32 v137, v137, v163, 0x7fff
	v_cndmask_b16 v141.l, 0x7fff, v167.h, s11
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[33:40], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v13, v136, v150, 0x7fff
	v_and_b32_e32 v14, 1, v126
	v_mov_b16_e64 v126.l, v134.h
	v_cndmask_b16 v143.l, 0x7fff, v143.h, s7
	v_cndmask_b16 v142.h, 0x7fff, v137.h, s19
	v_cndmask_b16 v143.h, 0x7fff, v13.h, s20
	v_cmp_o_f32_e64 s22, v134, v134
	v_and_b32_e32 v33, 1, v126
	v_mov_b16_e64 v126.l, v133.h
	v_permlanex16_b32 v139, v140, s97, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v141, s97, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v142, s97, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v16, v135, v14, 0x7fff
	v_permlanex16_b32 v34, v143, s97, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v33, v134, v33, 0x7fff
	v_and_b32_e32 v35, 1, v126
	v_mov_b16_e64 v126.l, v132.h
	v_cndmask_b16 v144.l, 0x7fff, v145.h, s8
	v_perm_b32 v9, v139, v140, v120
	v_perm_b32 v10, v139, v140, v121
	v_perm_b32 v11, v12, v141, v120
	v_perm_b32 v12, v12, v141, v121
	v_perm_b32 v13, v15, v142, v120
	v_perm_b32 v14, v15, v142, v121
	v_cndmask_b16 v144.h, 0x7fff, v16.h, s21
	v_perm_b32 v15, v34, v143, v120
	v_perm_b32 v16, v34, v143, v121
	v_cndmask_b16 v145.h, 0x7fff, v33.h, s22
	v_add3_u32 v33, v133, v35, 0x7fff
	v_and_b32_e32 v35, 1, v126
	v_mov_b16_e64 v126.l, v131.h
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[17:24], v[9:16], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v133, v133
	v_cndmask_b16 v145.l, 0x7fff, v146.h, s9
	v_add3_u32 v13, v132, v35, 0x7fff
	v_and_b32_e32 v14, 1, v126
	v_mov_b16_e64 v126.l, v130.h
	v_cndmask_b16 v146.l, 0x7fff, v147.h, s10
	v_cndmask_b16 v146.h, 0x7fff, v33.h, s23
	v_cndmask_b16 v147.h, 0x7fff, v13.h, s24
	v_add3_u32 v17, v131, v14, 0x7fff
	v_and_b32_e32 v16, 1, v126
	v_mov_b16_e64 v126.l, v128.h
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16_hi v153, v86 offset:6272
	ds_load_u16_d16_hi v154, v86 offset:6528
	ds_load_u16_d16_hi v155, v86 offset:6784
	ds_load_u16_d16_hi v156, v86 offset:7040
	ds_load_u16_d16_hi v157, v86 offset:7296
	ds_load_u16_d16_hi v158, v86 offset:7552
	ds_load_u16_d16_hi v159, v86 offset:7808
	ds_load_u16_d16_hi v160, v86 offset:8064
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v34, v144, s97, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v148.h, 0x7fff, v17.h, s25
	v_add3_u32 v17, v130, v16, 0x7fff
	v_and_b32_e32 v19, 1, v126
	v_mov_b16_e64 v126.l, v129.h
	v_permlanex16_b32 v12, v145, s97, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v146, s97, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v147, s97, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v19, v128, v19, 0x7fff
	v_and_b32_e32 v20, 1, v126
	v_cndmask_b16 v149.h, 0x7fff, v17.h, s26
	v_perm_b32 v9, v34, v144, v120
	v_perm_b32 v10, v34, v144, v121
	v_perm_b32 v11, v12, v145, v120
	v_add3_u32 v17, v129, v20, 0x7fff
	v_perm_b32 v12, v12, v145, v121
	v_perm_b32 v13, v15, v146, v120
	v_perm_b32 v14, v15, v146, v121
	v_perm_b32 v15, v18, v147, v120
	v_perm_b32 v16, v18, v147, v121
	v_cndmask_b16 v151.h, 0x7fff, v19.h, s27
	v_cndmask_b16 v161.h, 0x7fff, v17.h, s28
	v_permlanex16_b32 v18, v148, s97, 0xfedcba98 op_sel:[1,0]
	.loc	1 818 13                        ; attention.py:818:13
	v_cmp_lt_i32_e32 vcc_lo, s94, v53
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[25:32], v[9:16], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_permlanex16_b32 v12, v149, s97, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v151, s97, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v161, s97, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v9, v18, v148, v120
	v_perm_b32 v10, v18, v148, v121
	v_perm_b32 v11, v12, v149, v120
	v_perm_b32 v12, v12, v149, v121
	v_perm_b32 v13, v14, v151, v120
	v_perm_b32 v14, v14, v151, v121
	v_perm_b32 v15, v16, v161, v120
	v_perm_b32 v16, v16, v161, v121
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v127, v152, v138
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[153:160], v[9:16], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_vccnz .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v125, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v127, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v52
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s93, s93, s3
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s79, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s92, s93
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v9, 0xff800000, v125 :: v_dual_cndmask_b32 v2, 0, v2
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v15, 0, v7 :: v_dual_mov_b32 v10, v9
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v11, 0, v127, vcc_lo
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v12, 0, v4
.Ltmp63:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_cndmask_b32 v16, 0, v8
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_mov_b32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v13 :: v_dual_mov_b32 v20, v16
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v7, v2 :: v_dual_mov_b32 v8, v3
.Ltmp69:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v5, v11
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp71:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v9, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp73:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v9, v4 :: v_dual_add_f32 v2, v2, v7
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v5, v11, v5
.Ltmp78:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v8
	v_dual_add_f32 v1, v1, v6 :: v_dual_mov_b32 v8, v2
.Ltmp79:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp81:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp82:
	.loc	1 1025 30 is_stmt 1             ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp86:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
.Ltmp87:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v8 :: v_dual_mov_b32 v7, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v4, v4, v9 :: v_dual_add_f32 v5, v5, v6
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v3, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v2
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v6, v4 :: v_dual_mov_b32 v3, v5
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp96:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v9, v1 :: v_dual_max_f32 v6, v6, v6
.Ltmp97:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v5, v3
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v9
.Ltmp100:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v4, v6
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v8, v11
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v2, v10 :: v_dual_mov_b32 v2, v1
.Ltmp104:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v8, v7
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v12, v11 :: v_dual_add_f32 v12, v13, v17
	v_add_f32_e32 v13, v14, v18
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v19, v15
.Ltmp111:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v15, v19 :: v_dual_add_f32 v15, v16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v12 :: v_dual_mov_b32 v20, v15
	v_mov_b32_e32 v16, v11
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v16, v13, v18
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v19, v14 :: v_dual_add_f32 v18, v15, v20
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v17, v14, v19 :: v_dual_mov_b32 v14, v12
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v13, v11
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v13
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v15, v16
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v13, v12, v14 :: v_dual_mov_b32 v12, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v17
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v16, v15
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v17, v19
	v_add_f32_e32 v17, v18, v20
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v16, v13 :: v_dual_mov_b32 v19, v15
	v_mov_b32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp130:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp131:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v8
.Ltmp133:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp134:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v9, v10
.Ltmp135:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_mov_b32_e32 v9, 0
	s_add_u32 s4, s76, s4
	s_addc_u32 s5, s77, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp136:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
	v_dual_add_f32 v8, v14, v18 :: v_dual_lshlrev_b32 v15, 2, v0
	v_add_f32_e32 v7, v13, v16
	v_dual_add_f32 v14, v11, v12 :: v_dual_add_f32 v13, v4, v6
	v_dual_add_f32 v12, v3, v5 :: v_dual_lshlrev_b32 v3, 5, v0
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xc0, v15
.Ltmp137:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v5, 0xe0, v51
	v_and_b32_e32 v1, 28, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v2, 32, v3
	v_add_nc_u32_e32 v3, 0, v4
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v4, 0, v5
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v5, 63, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	s_barrier
	v_add3_u32 v1, v3, v2, v1
	ds_store_b128 v4, v[11:14]
	ds_store_b128 v4, v[7:10] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 0xc0, v0
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
.Ltmp138:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
		.amdhsa_next_free_vgpr 189
		.amdhsa_next_free_sgpr 99
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_vgpr, 189
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.numbered_sgpr, 99
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8840
; TotalNumSgprs: 101
; NumVgprs: 189
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 101
; NumVGPRsForWavesPerEU: 189
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
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     101
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     189
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
