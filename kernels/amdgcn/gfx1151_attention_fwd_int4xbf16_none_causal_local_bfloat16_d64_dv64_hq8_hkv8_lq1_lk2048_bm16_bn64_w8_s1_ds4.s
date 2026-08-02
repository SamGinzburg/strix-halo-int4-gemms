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
	v_and_b32_e32 v28, 15, v0
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x80
	s_load_b32 s14, s[0:1], 0x88
	s_mov_b32 s83, 0x31027000
	s_mov_b32 s82, 0x7ffffffe
	s_mov_b32 s68, 0
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v2, 1, v28
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v27, 1, v0
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
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
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v3, s15, v1
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s8, s8, 26
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s7, s7, 6
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s4, s4, s16
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[3:4], null, v3, s78, v[2:3]
	.loc	1 811 18                        ; attention.py:811:18
	v_mov_b32_e32 v4, s5
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s5, s6, s8
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s7, s2
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s5, s5, 63
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s4, s4, 0
	.loc	1 811 18                        ; attention.py:811:18
	v_min3_i32 v29, s2, s5, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v3, vcc_lo
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s2, s4, 0x7fffffc0
	.loc	1 807 18 is_stmt 0              ; attention.py:807:18
	s_max_i32 s94, s7, s2
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	buffer_load_u16 v2, v2, s[80:83], 0 offen
	v_and_b32_e32 v3, 24, v3
	.loc	1 818 13                        ; attention.py:818:13
	v_cmp_ge_i32_e32 vcc_lo, s94, v29
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v3, v27, v3, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v3, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_vccnz .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v2, s16, v28
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v3, s15, v28, 1
	v_dual_mov_b32 v7, 0x5410 :: v_dual_and_b32 v30, 1, v1
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v31, 62, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 1, v2
	v_dual_mov_b32 v13, 0x7632 :: v_dual_and_b32 v12, 7, v0
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v4, 0xf8, v0
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_lshrrev_b32_e32 v5, 1, v0
	v_and_b32_e32 v6, 16, v0
	v_and_b32_e32 v14, 0x60, v0
	v_bfe_i32 v8, v0, 3, 1
	.loc	1 889 86                        ; attention.py:889:86
	v_lshlrev_b32_e32 v9, 3, v12
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v18, 2, v4
	v_and_b32_e32 v19, 24, v5
	v_mov_b32_e32 v5, v1
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s81, s9, 0xffff
	s_mov_b32 s80, s8
	s_load_b32 s8, s[0:1], 0x68
	buffer_load_u16 v10, v3, s[80:83], 0 offen
	v_dual_mov_b32 v102, 0xff800000 :: v_dual_and_b32 v3, 24, v27
	v_and_or_b32 v23, 0x410, v8, v14
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v15, s14, v2
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v16, v28, 5, v3
	v_mov_b32_e32 v3, v1
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	v_dual_mov_b32 v6, v1 :: v_dual_lshlrev_b32 v11, 3, v0
	v_add_nc_u32_e32 v62, 0, v16
	v_xor_b32_e32 v24, 8, v16
	v_cndmask_b32_e32 v20, 0x1054, v7, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 822 49                        ; attention.py:822:49
	v_and_b32_e32 v17, 24, v11
	v_mov_b32_e32 v7, v1
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v25, 16, v16
	v_xor_b32_e32 v16, 24, v16
	v_xor_b32_e32 v11, v11, v19
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s8, s8, 0x3fb8aa3b
	v_lshrrev_b32_e32 v22, 1, v4
	v_dual_mov_b32 v101, v1 :: v_dual_add_nc_u32 v26, s13, v15
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s79, v9
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v52, 42, v30
	v_or_b32_e32 v53, 44, v30
	v_or_b32_e32 v54, 46, v30
	v_min_i32_e32 v79, v15, v26
	v_or_b32_e32 v55, 48, v30
	v_or_b32_e32 v56, 50, v30
	v_or_b32_e32 v57, 52, v30
	v_or_b32_e32 v58, 54, v30
	v_or_b32_e32 v59, 56, v30
	v_or_b32_e32 v60, 58, v30
	v_or_b32_e32 v61, 60, v30
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v63, s12, v15
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s95, s3, 11
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v32, 2, v30
	v_or_b32_e32 v33, 4, v30
	v_or_b32_e32 v34, 6, v30
	v_or_b32_e32 v35, 8, v30
	v_or_b32_e32 v36, 10, v30
	v_or_b32_e32 v37, 12, v30
	v_or_b32_e32 v38, 14, v30
	v_or_b32_e32 v39, 16, v30
	v_or_b32_e32 v40, 18, v30
	v_or_b32_e32 v41, 20, v30
	v_or_b32_e32 v42, 22, v30
	v_or_b32_e32 v43, 24, v30
	v_or_b32_e32 v44, 26, v30
	v_or_b32_e32 v45, 28, v30
	v_or_b32_e32 v46, 30, v30
	v_or_b32_e32 v47, 32, v30
	v_or_b32_e32 v48, 34, v30
	v_or_b32_e32 v49, 36, v30
	v_or_b32_e32 v50, 38, v30
	v_or_b32_e32 v51, 40, v30
	v_mov_b32_e32 v4, v1
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e64 s0, s78, v17
	v_or_b32_e32 v64, s95, v52
	v_or_b32_e32 v65, s95, v53
	v_or_b32_e32 v66, s95, v54
	v_or_b32_e32 v67, s95, v55
	v_or_b32_e32 v68, s95, v56
	v_or_b32_e32 v69, s95, v57
	v_or_b32_e32 v70, s95, v58
	v_or_b32_e32 v71, s95, v59
	v_or_b32_e32 v72, s95, v60
	v_or_b32_e32 v73, s95, v61
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_mov_b32 s69, s68
	s_mov_b32 s70, s68
	s_mov_b32 s71, s68
	s_mov_b32 s72, s68
	s_mov_b32 s73, s68
	s_mov_b32 s74, s68
	s_mov_b32 s75, s68
	s_mov_b32 s96, 0x76543210
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
	v_add_nc_u32_e32 v74, 0, v24
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[18:19], null, s79, v18, v[9:10]
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v10, 16, v10
	v_dual_cndmask_b32 v9, 0x3276, v13 :: v_dual_add_nc_u32 v76, 0, v16
	v_lshl_or_b32 v13, v20, 8, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v93, s8, v10
	v_lshlrev_b32_e32 v21, 4, v12
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v75, 0, v25
	v_and_b32_e32 v13, 0x540054, v13
	v_lshl_or_b32 v9, v9, 8, v9
	.loc	1 847 25                        ; attention.py:847:25
	v_mov_b32_e32 v98, v93
	v_xor_b32_e32 v19, v21, v22
	v_lshl_or_b32 v14, v14, 6, v21
	v_mov_b32_e32 v100, v93
	v_dual_mov_b32 v99, v93 :: v_dual_add_nc_u32 v78, 0, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v77, v12, 10, v19
	v_xor_b32_e32 v14, v23, v14
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[19:20], v62
	ds_load_b64 v[21:22], v74
	ds_load_b64 v[23:24], v75
	ds_load_b64 v[25:26], v76
	v_lshl_or_b32 v11, v13, 4, v13
	v_and_b32_e32 v9, 0x760076, v9
	v_xor_b32_e32 v13, 0x90, v77
	v_lshl_or_b32 v80, v12, 7, v14
	v_xor_b32_e32 v15, 0x120, v77
	v_xor_b32_e32 v16, 0x1b0, v77
	v_xor_b32_e32 v85, 0x240, v77
	v_xor_b32_e32 v86, 0x2d0, v77
	v_xor_b32_e32 v87, 0x360, v77
	v_xor_b32_e32 v88, 0x3f0, v77
	v_and_b32_e32 v81, 0x5040504, v11
	v_lshl_or_b32 v9, v9, 4, v9
	v_xor_b32_e32 v11, 16, v80
	v_xor_b32_e32 v12, 32, v80
	v_xor_b32_e32 v14, 48, v80
	v_xor_b32_e32 v94, 64, v80
	v_xor_b32_e32 v95, 0x50, v80
	v_xor_b32_e32 v96, 0x60, v80
	v_xor_b32_e32 v97, 0x70, v80
	v_add_nc_u32_e32 v82, 0, v13
	v_add_nc_u32_e32 v83, 0, v15
	v_add_nc_u32_e32 v84, 0, v16
	v_add_nc_u32_e32 v85, 0, v85
	v_add_nc_u32_e32 v86, 0, v86
	v_add_nc_u32_e32 v87, 0, v87
	v_add_nc_u32_e32 v88, 0, v88
	v_and_b32_e32 v89, 0x7060706, v9
	v_add_nc_u32_e32 v90, 0, v11
	v_add_nc_u32_e32 v91, 0, v12
	v_add_nc_u32_e32 v92, 0, v14
	v_add_nc_u32_e32 v94, 0, v94
	v_add_nc_u32_e32 v95, 0, v95
	v_add_nc_u32_e32 v96, 0, v96
	v_add_nc_u32_e32 v97, 0, v97
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v104, 2, v0
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s4, s94, s95
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v9, s68 :: v_dual_mov_b32 v10, s69
	s_waitcnt lgkmcnt(3)
	v_mad_u64_u32 v[105:106], null, s4, s79, v[18:19]
	.loc	1 822 32                        ; attention.py:822:32
	v_or_b32_e32 v104, s4, v104
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v11, s70 :: v_dual_mov_b32 v12, s71
	v_dual_mov_b32 v13, s72 :: v_dual_mov_b32 v14, s73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[106:107], null, v104, s78, v[17:18]
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v104, 1, v105
	v_add_lshl_u32 v105, v105, s79, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v15, s74 :: v_dual_mov_b32 v16, s75
	v_or_b32_e32 v103, s95, v49
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v120, 0x80000000, v104, s1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v104, 0x80000000, v106, s0
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v160, 0x80000000, v105, s1
	v_or_b32_e32 v129, s95, v50
	v_or_b32_e32 v150, s95, v51
	v_or_b32_e32 v154, s95, v47
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b64 v[104:105], v104, s[80:83], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or_b32_e32 v155, s95, v48
	v_or_b32_e32 v156, s95, v30
	v_or_b32_e32 v157, s95, v32
	v_or_b32_e32 v159, s95, v34
	v_or_b32_e32 v167, s95, v39
	v_or_b32_e32 v168, s95, v40
	v_or_b32_e32 v169, s95, v41
	v_or_b32_e32 v170, s95, v42
	v_or_b32_e32 v171, s95, v43
	v_or_b32_e32 v158, s95, v33
	v_or_b32_e32 v172, s95, v44
	v_or_b32_e32 v173, s95, v45
	v_or_b32_e32 v174, s95, v46
	v_or_b32_e32 v175, s95, v35
	v_or_b32_e32 v176, s95, v36
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v103, v103, s94, 1
	v_add_lshl_u32 v129, v129, s94, 1
	v_add_lshl_u32 v151, v64, s94, 1
	v_add_lshl_u32 v152, v65, s94, 1
	v_add_lshl_u32 v153, v66, s94, 1
	v_add_lshl_u32 v164, v67, s94, 1
	v_add_lshl_u32 v165, v68, s94, 1
	v_add_lshl_u32 v166, v69, s94, 1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v78, v[104:105]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[112:115], v62 offset1:1
	ds_load_2addr_stride64_b64 v[116:119], v62 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[146:149], v74 offset0:2 offset1:3
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[160:163], v160, s[88:91], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[104:111], v[112:113], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[121:128], v[118:119], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[116:117], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[138:145], v[114:115], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[121:128], v[148:149], v[21:22], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[146:147], v[21:22], v[130:137] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[146:149], v120, s[88:91], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v74 offset1:1
	ds_load_2addr_stride64_b64 v[13:16], v75 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[104:111], v[9:10], v[21:22], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[138:145], v[11:12], v[21:22], v[138:145] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v75 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[121:128], v[15:16], v[23:24], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[13:14], v[23:24], v[130:137] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[13:16], v76 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[104:111], v[9:10], v[23:24], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[138:145], v[11:12], v[23:24], v[138:145] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v76 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[121:128], v[15:16], v[25:26], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[13:14], v[25:26], v[130:137] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v119, v122
	v_cvt_f32_i32_e32 v118, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v123, v136
	v_cvt_f32_i32_e32 v122, v137
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v136, v156, s94, 1
	v_add_lshl_u32 v137, v157, s94, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v121, v121
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[104:111], v[9:10], v[25:26], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[138:145], v[11:12], v[25:26], v[138:145] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v9, v104
	v_cvt_f32_i32_e32 v15, v108
	v_cvt_f32_i32_e32 v104, v124
	v_cvt_f32_i32_e32 v108, v128
	v_or_b32_e32 v124, s95, v37
	v_or_b32_e32 v128, s95, v38
	v_cvt_f32_i32_e32 v16, v109
	v_cvt_f32_i32_e32 v109, v130
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v130, v150, s94, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v10, v105
	v_cvt_f32_i32_e32 v11, v107
	v_cvt_f32_i32_e32 v12, v106
	v_cvt_f32_i32_e32 v13, v110
	v_cvt_f32_i32_e32 v14, v111
	v_cvt_f32_i32_e32 v105, v125
	v_cvt_f32_i32_e32 v106, v127
	v_cvt_f32_i32_e32 v107, v126
	v_cvt_f32_i32_e32 v127, v133
	v_cvt_f32_i32_e32 v126, v134
	v_cvt_f32_i32_e32 v125, v135
	v_cvt_f32_i32_e32 v111, v131
	v_cvt_f32_i32_e32 v120, v139
	v_cvt_f32_i32_e32 v116, v141
	v_cvt_f32_i32_e32 v115, v142
	v_cvt_f32_i32_e32 v112, v143
	v_cvt_f32_i32_e32 v113, v144
	v_cvt_f32_i32_e32 v110, v138
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v134, v70, s94, 1
	v_add_lshl_u32 v135, v71, s94, 1
	v_add_lshl_u32 v131, v154, s94, 1
	v_add_lshl_u32 v133, v155, s94, 1
	v_add_lshl_u32 v141, v159, s94, 1
	v_add_lshl_u32 v138, v167, s94, 1
	v_add_lshl_u32 v139, v168, s94, 1
	v_add_lshl_u32 v142, v169, s94, 1
	v_add_lshl_u32 v143, v170, s94, 1
	v_add_lshl_u32 v144, v171, s94, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v117, v140
	v_cvt_f32_i32_e32 v114, v145
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v140, v158, s94, 1
	v_add_lshl_u32 v145, v172, s94, 1
	v_add_lshl_u32 v167, v174, s94, 1
	v_add_lshl_u32 v168, v175, s94, 1
	v_add_lshl_u32 v169, v176, s94, 1
	v_add_lshl_u32 v170, v124, s94, 1
	v_add_lshl_u32 v171, v128, s94, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v108, v100, v108
	v_mul_f32_e32 v116, v99, v116
	v_mul_f32_e32 v112, v93, v112
	v_mul_f32_e32 v10, v98, v10
	v_mul_f32_e32 v114, v99, v114
	v_mul_f32_e32 v16, v98, v16
	v_mul_f32_e32 v14, v100, v14
	v_mul_f32_e32 v12, v99, v12
	v_mul_f32_e32 v110, v93, v110
	v_mul_f32_e32 v104, v93, v104
	v_mul_f32_e32 v106, v100, v106
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v177.h, v160.l
	v_mov_b16_e64 v178.h, v161.l
	v_mov_b16_e64 v179.h, v162.l
	v_mov_b16_e64 v180.h, v163.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v177.l, v146.l
	v_mov_b16_e64 v160.l, v146.h
	v_mov_b16_e64 v178.l, v147.l
	v_mov_b16_e64 v161.l, v147.h
	v_mov_b16_e64 v179.l, v148.l
	v_mov_b16_e64 v162.l, v148.h
	v_mov_b16_e64 v180.l, v149.l
	v_mov_b16_e64 v163.l, v149.h
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v146, v173, s94, 1
	s_clause 0x1c
	buffer_load_u16 v159, v103, s[84:87], 0 offen
	buffer_load_u16 v158, v129, s[84:87], 0 offen
	buffer_load_u16 v157, v130, s[84:87], 0 offen
	buffer_load_u16 v156, v151, s[84:87], 0 offen
	buffer_load_u16 v155, v152, s[84:87], 0 offen
	buffer_load_u16 v154, v153, s[84:87], 0 offen
	buffer_load_u16 v153, v164, s[84:87], 0 offen
	buffer_load_u16 v152, v165, s[84:87], 0 offen
	buffer_load_u16 v151, v166, s[84:87], 0 offen
	buffer_load_u16 v150, v139, s[84:87], 0 offen
	buffer_load_u16 v149, v142, s[84:87], 0 offen
	buffer_load_u16 v148, v143, s[84:87], 0 offen
	buffer_load_u16 v147, v144, s[84:87], 0 offen
	buffer_load_u16 v131, v131, s[84:87], 0 offen
	buffer_load_u16 v128, v133, s[84:87], 0 offen
	buffer_load_u16 v124, v138, s[84:87], 0 offen
	buffer_load_u16 v138, v145, s[84:87], 0 offen
	buffer_load_u16 v139, v146, s[84:87], 0 offen
	buffer_load_u16 v144, v167, s[84:87], 0 offen
	buffer_load_u16 v136, v136, s[84:87], 0 offen
	buffer_load_u16 v137, v137, s[84:87], 0 offen
	buffer_load_u16 v133, v140, s[84:87], 0 offen
	buffer_load_u16 v141, v141, s[84:87], 0 offen
	buffer_load_u16 v129, v168, s[84:87], 0 offen
	buffer_load_u16 v130, v169, s[84:87], 0 offen
	buffer_load_u16 v142, v170, s[84:87], 0 offen
	buffer_load_u16 v143, v171, s[84:87], 0 offen
	buffer_load_u16 v134, v134, s[84:87], 0 offen
	buffer_load_u16 v135, v135, s[84:87], 0 offen
	v_add_lshl_u32 v103, v72, s94, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v115, v100, v115
	v_mul_f32_e32 v9, v93, v9
	v_mul_f32_e32 v11, v100, v11
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v164, s94, v58
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v140, v103, s[84:87], 0 offen
	v_add_lshl_u32 v103, v73, s94, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v109, v100, v109
	v_mul_f32_e32 v113, v98, v113
	v_mul_f32_e32 v111, v98, v111
	v_mul_f32_e32 v13, v99, v13
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v145, v103, s[84:87], 0 offen
	v_add_lshl_u32 v103, s4, v31, 1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s66, v164, v63
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s67, v79, v164
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v15, v93, v15
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v165, s94, v61
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v146, v103, s[84:87], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v103, 0, v77
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v103, v177
	ds_store_b32 v82, v160
	ds_store_b32 v83, v178
	ds_store_b32 v84, v161
	ds_store_b32 v85, v179
	ds_store_b32 v86, v162
	ds_store_b32 v87, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v161, s94, v55
	v_or_b32_e32 v160, s94, v56
	v_or_b32_e32 v103, s94, v57
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b32 v88, v163
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v163, s94, v53
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s7, v161, v63
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s8, v79, v161
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v161, s94, v50
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s5, v160, v63
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s6, v79, v160
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v160, s94, v51
	v_or_b32_e32 v162, s94, v54
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s17, v161, v63
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s18, v79, v161
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v161, s94, v45
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s15, v160, v63
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s16, v79, v160
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v160, s94, v46
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e32 vcc_lo, v103, v63
	v_cmp_ge_i32_e64 s27, v161, v63
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s28, v79, v161
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v161, s94, v40
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s25, v160, v63
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s26, v79, v160
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v160, s94, v41
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s4, v79, v103
	.loc	1 866 30 is_stmt 0              ; attention.py:866:30
	v_cmp_ge_i32_e64 s40, v161, v63
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s41, v79, v161
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v161, s94, v35
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s36, v160, v63
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s37, v79, v160
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v160, s94, v36
	v_or_b32_e32 v103, s94, v52
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s48, v161, v63
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s49, v79, v161
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v161, s94, v31
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s46, v160, v63
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s47, v79, v160
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v160, s94, v30
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s11, v163, v63
	v_cmp_ge_i32_e64 s58, v161, v63
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s59, v79, v161
	v_mov_b32_e32 v161, v101
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v101, v93, v132
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s56, v160, v63
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s57, v79, v160
	v_mov_b32_e32 v160, v102
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_nc_u32_e32 v102, 0, v80
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s12, v79, v163
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v163, s94, v48
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s9, v162, v63
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s10, v79, v162
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v162, s94, v49
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s13, v103, v63
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s14, v79, v103
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v103, s94, v47
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s21, v163, v63
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s22, v79, v163
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v163, s94, v43
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s19, v162, v63
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s20, v79, v162
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v162, s94, v44
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s23, v103, v63
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s24, v79, v103
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v103, s94, v42
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s31, v163, v63
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s33, v79, v163
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v163, s94, v38
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s29, v162, v63
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s30, v79, v162
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v162, s94, v39
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s34, v103, v63
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s35, v79, v103
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v103, s94, v37
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s42, v163, v63
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s43, v79, v163
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v163, s94, v33
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s38, v162, v63
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s39, v79, v162
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v162, s94, v34
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s44, v103, v63
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s45, v79, v103
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v103, s94, v32
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s52, v163, v63
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s53, v79, v163
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v163, s94, v59
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v105, v98, v105
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s50, v162, v63
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s51, v79, v162
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s54, v103, v63
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s55, v79, v103
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s64, v163, v63
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s65, v79, v163
	.loc	1 867 21 is_stmt 1              ; attention.py:867:21
	s_and_b32 s97, s6, s5
	s_and_b32 s5, s8, s7
	s_and_b32 s6, s10, s9
	s_and_b32 s7, s12, s11
	s_and_b32 s10, s18, s17
	s_and_b32 s12, s22, s21
	s_and_b32 s17, s33, s31
	s_and_b32 s22, s37, s36
	s_and_b32 s33, s57, s56
	s_and_b32 s37, s39, s38
	s_and_b32 s36, s2, s33
	s_and_b32 s33, s2, s37
	s_and_b32 s4, s4, vcc_lo
	s_and_b32 s8, s14, s13
	s_and_b32 s9, s16, s15
	s_and_b32 s13, s24, s23
	s_and_b32 s15, s28, s27
	s_and_b32 s16, s30, s29
	s_and_b32 s18, s35, s34
	s_and_b32 s23, s41, s40
	s_and_b32 s29, s47, s46
	s_and_b32 s28, s51, s50
	s_and_b32 s31, s55, s54
	s_and_b32 s34, s43, s42
	s_and_b32 s42, s65, s64
	s_and_b32 s43, s67, s66
	s_and_b32 s14, s26, s25
	s_and_b32 vcc_lo, s2, s4
	s_and_b32 s21, s2, s17
	s_and_b32 s26, s2, s23
	s_and_b32 s23, s2, s15
	s_and_b32 s28, s2, s28
	s_and_b32 s35, s2, s31
	s_and_b32 s31, s2, s29
	s_and_b32 s29, s2, s34
	s_and_b32 s15, s2, s42
	s_and_b32 s17, s2, s43
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v162, s94, v60
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s60, v165, v63
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s61, v79, v165
	.loc	1 867 21 is_stmt 1              ; attention.py:867:21
	s_and_b32 s11, s20, s19
	s_and_b32 s27, s49, s48
	s_and_b32 s4, s2, s5
	s_and_b32 s5, s2, s6
	s_and_b32 s6, s2, s7
	s_and_b32 s7, s2, s8
	s_and_b32 s8, s2, s9
	s_and_b32 s9, s2, s10
	s_and_b32 s10, s2, s11
	s_and_b32 s11, s2, s12
	s_and_b32 s12, s2, s13
	s_and_b32 s19, s2, s14
	s_and_b32 s20, s2, s16
	s_and_b32 s24, s2, s18
	s_and_b32 s25, s2, s22
	s_and_b32 s27, s2, s27
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s62, v162, v63
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s63, v79, v162
	.loc	1 867 21 is_stmt 1              ; attention.py:867:21
	s_and_b32 s30, s53, s52
	s_and_b32 s38, s45, s44
	s_and_b32 s39, s59, s58
	s_and_b32 s40, s61, s60
	s_and_b32 s30, s2, s30
	s_and_b32 s34, s2, s38
	s_and_b32 s13, s2, s39
	s_and_b32 s16, s2, s40
	s_and_b32 s22, s2, s97
	s_and_b32 s41, s63, s62
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s14, s2, s41
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s18, 0xff800000, v160
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v103.h, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s94, s94, 64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v163.h, v103.h
	v_mov_b16_e64 v164.h, v103.h
	v_mov_b16_e64 v162.h, v103.h
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v132, 16, v159
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v159, v101, v132
	v_mul_f32_e32 v101, v98, v127
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v127, 16, v158
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v132.h, v103.h
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v148, 16, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v158, v101, v127 :: v_dual_mul_f32 v101, v99, v126
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v126, 16, v157
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(19)
	v_dual_mul_f32 v148, v116, v148 :: v_dual_lshlrev_b32 v147, 16, v147
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v124, 16, v124
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v157, v101, v126 :: v_dual_lshlrev_b32 v144, 16, v144
	v_mul_f32_e32 v101, v100, v125
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v125, 16, v156
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v147, v115, v147 :: v_dual_lshlrev_b32 v138, 16, v138
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v130, 16, v130
	v_lshlrev_b32_e32 v128, 16, v128
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v156, v101, v125
	v_mul_f32_e32 v101, v93, v123
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v123, 16, v155
	v_lshlrev_b32_e32 v136, 16, v136
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v130, v16, v130 :: v_dual_lshlrev_b32 v141, 16, v141
	v_dual_mul_f32 v110, v110, v124 :: v_dual_lshlrev_b32 v133, 16, v133
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v155, v101, v123
	v_mul_f32_e32 v101, v98, v122
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v122, 16, v154
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v143, 16, v143
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v134, 16, v134
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v135, 16, v135
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v112, v112, v138 :: v_dual_lshlrev_b32 v131, 16, v131
	v_dual_mul_f32 v154, v101, v122 :: v_dual_mul_f32 v101, v99, v121
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v121, 16, v153
	v_lshlrev_b32_e32 v139, 16, v139
	v_lshlrev_b32_e32 v142, 16, v142
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v146, 16, v146
	v_lshlrev_b32_e32 v129, 16, v129
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v153, v101, v121
	v_mul_f32_e32 v101, v100, v119
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v119, 16, v152
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v111, v111, v128
	v_mul_f32_e32 v128, v9, v136
	v_mul_f32_e32 v136, v11, v141
	v_dual_mul_f32 v138, v14, v143 :: v_dual_lshlrev_b32 v137, 16, v137
	v_dual_mul_f32 v152, v101, v119 :: v_dual_mul_f32 v101, v99, v118
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v118, 16, v151
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v104, v104, v134
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v110, 0xff800000, v110, s33
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v105, v105, v135
	v_dual_mul_f32 v107, v99, v107 :: v_dual_mul_f32 v114, v114, v144
	v_mul_f32_e32 v151, v101, v118
	v_dual_mul_f32 v101, v93, v120 :: v_dual_lshlrev_b32 v120, 16, v150
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v145, 16, v145
	v_lshlrev_b32_e32 v140, 16, v140
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v108, v108, v146
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e32 v144, 0xff800000, v151, vcc_lo
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v150, v101, v120 :: v_dual_mul_f32 v101, v98, v117
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v117, 16, v149
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v109, v109, v131 :: v_dual_mul_f32 v106, v106, v145
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v136, 0xff800000, v136, s28
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v131, v10, v137
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v117, v101, v117
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v138, 0xff800000, v138, s29
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v129, v15, v129
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v105, 0xff800000, v105, s15
	v_cndmask_b32_e64 v104, 0xff800000, v104, s17
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v113, v113, v139
	v_mul_f32_e32 v137, v13, v142
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v143, 0xff800000, v156, s7
	v_cndmask_b32_e64 v112, 0xff800000, v112, s20
	v_cndmask_b32_e64 v109, 0xff800000, v109, s12
	v_cndmask_b32_e64 v114, 0xff800000, v114, s19
	v_cndmask_b32_e64 v111, 0xff800000, v111, s11
	v_cndmask_b32_e64 v145, 0xff800000, v148, s24
	v_cndmask_b32_e64 v117, 0xff800000, v117, s25
	v_cndmask_b32_e64 v146, 0xff800000, v150, s26
	v_cndmask_b32_e64 v147, 0xff800000, v147, s21
	v_cndmask_b32_e64 v130, 0xff800000, v130, s31
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v133, v12, v133
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v129, 0xff800000, v129, s27
	v_cndmask_b32_e64 v131, 0xff800000, v131, s35
	v_cndmask_b32_e64 v128, 0xff800000, v128, s36
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v156, v104, v105
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v113, 0xff800000, v113, s23
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v107, v107, v140
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v124, 0xff800000, v152, s22
	v_cndmask_b32_e64 v134, 0xff800000, v153, s4
	v_cndmask_b32_e64 v135, 0xff800000, v154, s5
	v_cndmask_b32_e64 v139, 0xff800000, v155, s6
	v_cndmask_b32_e64 v140, 0xff800000, v157, s8
	v_cndmask_b32_e64 v141, 0xff800000, v158, s9
	v_cndmask_b32_e64 v142, 0xff800000, v159, s10
	v_cndmask_b32_e64 v133, 0xff800000, v133, s30
	v_cndmask_b32_e64 v137, 0xff800000, v137, s34
	v_cndmask_b32_e64 v106, 0xff800000, v106, s16
	v_cndmask_b32_e64 v108, 0xff800000, v108, s13
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v150, v114, v109, v111
	v_max3_f32 v151, v146, v117, v145
	v_max3_f32 v152, v147, v112, v113
	v_max_f32_e32 v153, v128, v131
	v_max3_f32 v154, v136, v129, v130
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[9:12], v102
	ds_load_b128 v[13:16], v90
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v107, 0xff800000, v107, s14
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v102, v142, v141, v140
	v_max3_f32 v148, v143, v139, v135
	v_max3_f32 v149, v134, v124, v144
	v_max3_f32 v155, v137, v138, v110
	v_max_f32_e32 v157, v106, v108
	v_max3_f32 v150, v151, v152, v150
	v_max3_f32 v151, v153, v133, v154
	v_max3_f32 v102, v102, v148, v149
.Ltmp6:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v120.h, v103.h
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v148, v156, v107, v157
.Ltmp8:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v116.h, v103.h
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v149, v151, v155, v150
.Ltmp10:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v125.h, v103.h
	v_mov_b16_e32 v127.h, v103.h
	v_mov_b16_e32 v123.h, v103.h
	v_mov_b16_e32 v126.h, v103.h
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v102, v149, v102, v148
.Ltmp12:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v101.h, v103.h
	v_mov_b16_e32 v122.h, v103.h
	v_mov_b16_e32 v121.h, v103.h
	v_mov_b16_e32 v118.h, v103.h
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v148, v102, s96, 0xfedcba98 op_sel:[1,0]
.Ltmp14:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v115.h, v103.h
	v_mov_b16_e32 v119.h, v103.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v102, v160, v102, v148
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v136, v136, v102
	v_sub_f32_e32 v112, v112, v102
	v_sub_f32_e32 v141, v141, v102
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v148, v160, v102
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v128, v128, v102
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v136, v136
	v_exp_f32_e32 v112, v112
	v_exp_f32_e32 v141, v141
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v148, v148
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v135, v135, v102
	v_sub_f32_e32 v104, v104, v102
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v128, v128
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v110, v110, v102
	v_sub_f32_e32 v146, v146, v102
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v135, v135
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v136, 0, v136, s28
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v142, v142, v102
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v112, 0, v112, s20
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v134, v134, v102
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v141, 0, v141, s9
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v148, 0, v148, s18
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v142, v142
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v105, v105, v102
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v134, v134
	v_exp_f32_e32 v104, v104
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v2, v2, v148
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v128, 0, v128, s36
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v105, v105
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v151, 0, v135, s5
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v110, v110
	v_exp_f32_e32 v146, v146
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v142, 0, v142, s10
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v131, v131, v102
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v134, 0, v134, s4
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v144, v144, v102
	v_sub_f32_e32 v130, v130, v102
.Ltmp15:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v158, v142, v141
.Ltmp16:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v131, v131
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v153, 0, v105, s15
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v144, v144
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v114, v114, v102
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v120.l, v134.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v143, v143, v102
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v116.l, v153.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v139, v139, v102
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v110, 0, v110, s33
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v120, 1, v120
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v131, 0, v131, s35
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v143, v143
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e32 v135, 0, v144, vcc_lo
	v_cndmask_b32_e64 v144, 0, v104, s17
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v116, 1, v116
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v104, v128, v131 :: v_dual_sub_f32 v133, v133, v102
.Ltmp18:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v139, v139
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v117, v117, v102
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v146, 0, v146, s26
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v138, v138, v102
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v133, v133
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v143, 0, v143, s7
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v106, v106, v102
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v117, v117
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v107, v107, v102 :: v_dual_mul_f32 v4, v4, v148
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v139, 0, v139, s6
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v129, v129, v102
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v106, v106
	v_exp_f32_e32 v130, v130
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v133, 0, v133, s30
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v138, v138
	v_exp_f32_e32 v107, v107
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v117, 0, v117, s25
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v103.l, v131.h
	v_mov_b16_e64 v163.l, v133.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v108, v108, v102 :: v_dual_add_f32 v105, v133, v136
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v155, 0, v106, s16
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v147, v147, v102
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v130, 0, v130, s31
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v108, v108
.Ltmp19:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v160, v104, v105
	v_add_f32_e32 v104, v139, v151
.Ltmp20:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v129, v129
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v138, 0, v138, s29
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v127.l, v110.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v114, v114
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v154, 0, v107, s14
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v148
	v_mul_f32_e32 v8, v8, v148
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v156, 0, v108, s13
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v145, v145, v102
.Ltmp21:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v108, v110, v146
.Ltmp22:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v129, 0, v129, s27
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v127, 1, v127
	v_mov_b16_e64 v162.l, v128.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v145, v145
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v114, 0, v114, s19
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v164.l, v129.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v109, v109, v102
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v106, v129, v130
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v126.l, v117.h
	v_cmp_o_f32_e64 s15, v133, v133
	v_cmp_o_f32_e64 s16, v129, v129
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v109, v109
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v101.l, v135.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v145, 0, v145, s24
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v140, v140, v102
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s14, v128, v128
	v_cmp_o_f32_e64 s13, v131, v131
	v_and_b32_e32 v101, 1, v101
	v_mov_b16_e64 v121.l, v142.h
	v_mov_b16_e64 v118.l, v139.h
	v_add3_u32 v170, v134, v120, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v149, 0, v109, s12
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v109, v117, v145
.Ltmp26:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v137, v137, v102
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v140, v140
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v101, v135, v101, 0x7fff
	v_mov_b16_e64 v122.l, v149.h
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v166, v108, v109
.Ltmp28:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v137, v137
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v108, v155, v156 :: v_dual_and_b32 v109, 1, v162
.Ltmp30:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s12, v134, v134
	v_cmp_o_f32_e64 s17, v136, v136
	v_cmp_o_f32_e64 s19, v130, v130
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v140, 0, v140, s8
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v128, v128, v109, 0x7fff
	v_cmp_o_f32_e64 s20, v138, v138
	v_mov_b16_e64 v115.l, v155.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v137, 0, v137, s34
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v159, v140, v143
.Ltmp32:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v113, v113, v102
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v116, v153, v116, 0x7fff
	v_and_b32_e32 v115, 1, v115
	v_mov_b16_e64 v132.l, v137.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v111, v111, v102
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v107, v137, v138
.Ltmp34:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v124, v124, v102
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e32 vcc_lo, v137, v137
	v_and_b32_e32 v132, 1, v132
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v111, v111
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v165, v106, v107
.Ltmp36:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v124, v124
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v106, v135, v144
.Ltmp38:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v132, v137, v132, 0x7fff
	v_add3_u32 v115, v155, v115, 0x7fff
	v_cmp_o_f32_e64 s4, v110, v110
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v148
	v_mul_f32_e32 v3, v3, v148
	v_mul_f32_e32 v5, v5, v148
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v150, 0, v111, s11
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v7, v7, v148
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v152, 0, v124, s22
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s22, v153, v153
	v_cmp_o_f32_e64 s5, v117, v117
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v157, v149, v150
.Ltmp40:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v142, v142
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v105, v134, v152
.Ltmp42:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s8, v149, v149
	v_cmp_o_f32_e64 s18, v141, v141
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v157, v157, v158 :: v_dual_add_f32 v158, v159, v104
.Ltmp44:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v113, v113
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v104, 1, v103
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v147, v147
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v103.l, v136.h
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v159, v105, v106
	v_dual_add_f32 v134, v157, v158 :: v_dual_and_b32 v121, 1, v121
.Ltmp46:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v131, v131, v104, 0x7fff
	v_cndmask_b16 v131.l, 0x7fff, v128.h, s14
	v_cmp_o_f32_e64 s14, v145, v145
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v113, 0, v113, s23
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v155, v155
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v147, 0, v147, s21
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v135, v135
	v_cndmask_b16 v131.h, 0x7fff, v131.h, s13
	v_mov_b16_e32 v123.l, v113.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v124, v113, v114 :: v_dual_add_f32 v111, v147, v112
.Ltmp48:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v125.l, v147.h
	v_cmp_o_f32_e64 s6, v147, v147
	v_and_b32_e32 v123, 1, v123
	v_cmp_o_f32_e64 s7, v113, v113
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v167, v111, v124
.Ltmp50:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v111, 1, v163
	v_and_b32_e32 v124, 1, v164
	v_and_b32_e32 v125, 1, v125
	v_add3_u32 v113, v113, v123, 0x7fff
	v_cndmask_b16 v113.l, 0x7fff, v132.h, vcc_lo
	v_add3_u32 v133, v133, v111, 0x7fff
	v_add3_u32 v129, v129, v124, 0x7fff
	v_and_b32_e32 v124, 1, v126
	v_and_b32_e32 v126, 1, v103
	v_mov_b16_e64 v103.l, v130.h
	v_cndmask_b16 v128.l, 0x7fff, v133.h, s15
	v_cndmask_b16 v135.l, 0x7fff, v129.h, s16
	v_add3_u32 v147, v147, v125, 0x7fff
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v125, v160, v165
.Ltmp52:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v133, 1, v103
	v_mov_b16_e64 v103.l, v138.h
	v_cndmask_b16 v160.l, 0x7fff, v101.h, s21
	v_add3_u32 v163, v110, v127, 0x7fff
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v127, v166, v167 :: v_dual_and_b32 v122, 1, v122
.Ltmp54:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v129, v130, v133, 0x7fff
	v_and_b32_e32 v133, 1, v103
	v_mov_b16_e64 v103.l, v146.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v125, v125, v127 :: v_dual_and_b32 v118, 1, v118
.Ltmp56:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v126, v136, v126, 0x7fff
	v_permlanex16_b32 v130, v131, s96, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v101, 1, v103
	v_mov_b16_e64 v103.l, v145.h
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v107, v153, v154
.Ltmp58:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v128.h, 0x7fff, v126.h, s17
	v_perm_b32 v126, v130, v131, v89
	v_cndmask_b16 v135.h, 0x7fff, v129.h, s19
	v_and_b32_e32 v132, 1, v103
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v162, v107, v108
.Ltmp60:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v147.l, 0x7fff, v113.h, s7
	v_mov_b16_e32 v103.l, v112.h
	v_permlanex16_b32 v129, v128, s96, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s13, v146, v146
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v137, v159, v162
.Ltmp62:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v145, v145, v132, 0x7fff
	v_cndmask_b16 v162.l, 0x7fff, v116.h, s22
	v_cndmask_b16 v163.l, 0x7fff, v115.h, s23
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[104:107], v91
	ds_load_b128 v[108:111], v92
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v127, v134, v137
.Ltmp64:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v116.h, 0x7fff, v145.h, s14
	v_add3_u32 v164, v117, v124, 0x7fff
	v_add3_u32 v142, v142, v121, 0x7fff
	v_cmp_o_f32_e64 s15, v112, v112
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v153, v125, v127
.Ltmp66:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v125, v130, v131, v81
	v_add3_u32 v131, v138, v133, 0x7fff
	v_permlanex16_b32 v130, v135, s96, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v127, v129, v128, v81
	v_perm_b32 v128, v129, v128, v89
	v_cmp_o_f32_e64 s16, v114, v114
	v_cndmask_b16 v113.h, 0x7fff, v131.h, s20
	v_add3_u32 v131, v146, v101, 0x7fff
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v101, v153, s96, 0xfedcba98 op_sel:[1,0]
.Ltmp68:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v129, v130, v135, v81
	v_perm_b32 v130, v130, v135, v89
	v_permlanex16_b32 v146, v113, s96, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v115.h, 0x7fff, v131.h, s13
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v101, v153, v101
.Ltmp70:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v153, 1, v103
	v_mov_b16_e32 v103.l, v114.h
	v_perm_b32 v131, v146, v113, v81
	v_perm_b32 v132, v146, v113, v89
	v_cndmask_b16 v115.l, 0x7fff, v163.h, s4
	v_add3_u32 v112, v112, v153, 0x7fff
	v_and_b32_e32 v145, 1, v103
	v_mov_b16_e64 v103.l, v150.h
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[125:132], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v116.l, 0x7fff, v164.h, s5
	v_cndmask_b16 v142.l, 0x7fff, v147.h, s6
	v_add3_u32 v13, v114, v145, 0x7fff
	v_and_b32_e32 v14, 1, v103
	v_mov_b16_e64 v103.l, v141.h
	v_cndmask_b16 v155.l, 0x7fff, v142.h, s9
	v_permlanex16_b32 v113, v115, s96, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v142.h, 0x7fff, v112.h, s15
	v_cndmask_b16 v147.h, 0x7fff, v13.h, s16
	v_and_b32_e32 v112, 1, v103
	v_mov_b16_e64 v103.l, v143.h
	v_add3_u32 v149, v149, v122, 0x7fff
	v_cmp_o_f32_e64 s17, v150, v150
	v_perm_b32 v9, v113, v115, v81
	v_perm_b32 v10, v113, v115, v89
	v_permlanex16_b32 v12, v116, s96, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v142, s96, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v16, v150, v14, 0x7fff
	v_permlanex16_b32 v113, v147, s96, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v112, v141, v112, 0x7fff
	v_and_b32_e32 v114, 1, v103
	v_mov_b16_e64 v103.l, v151.h
	v_cndmask_b16 v149.l, 0x7fff, v149.h, s8
	v_perm_b32 v11, v12, v116, v81
	v_perm_b32 v12, v12, v116, v89
	v_perm_b32 v13, v15, v142, v81
	v_perm_b32 v14, v15, v142, v89
	v_cndmask_b16 v149.h, 0x7fff, v16.h, s17
	v_perm_b32 v15, v113, v147, v81
	v_perm_b32 v16, v113, v147, v89
	v_cndmask_b16 v155.h, 0x7fff, v112.h, s18
	v_and_b32_e32 v112, 1, v103
	v_mov_b16_e64 v103.l, v152.h
	v_mov_b16_e64 v119.l, v140.h
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[104:111], v[9:16], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v140, v140
	v_cmp_o_f32_e64 s11, v139, v139
	v_and_b32_e32 v14, 1, v103
	v_mov_b16_e64 v103.l, v144.h
	v_and_b32_e32 v119, 1, v119
	v_add3_u32 v169, v139, v118, 0x7fff
	v_cmp_o_f32_e64 s19, v143, v143
	v_cmp_o_f32_e64 s24, v151, v151
	v_and_b32_e32 v16, 1, v103
	v_mov_b16_e64 v103.l, v154.h
	v_add3_u32 v168, v140, v119, 0x7fff
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[117:120], v94
	ds_load_b128 v[121:124], v95
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v114, v143, v114, 0x7fff
	v_add3_u32 v13, v151, v112, 0x7fff
	v_and_b32_e32 v106, 1, v103
	v_mov_b16_e64 v103.l, v156.h
	v_cmp_o_f32_e64 s25, v152, v152
	v_cndmask_b16 v157.l, 0x7fff, v168.h, s10
	v_cndmask_b16 v158.l, 0x7fff, v169.h, s11
	v_cndmask_b16 v157.h, 0x7fff, v114.h, s19
	v_cndmask_b16 v158.h, 0x7fff, v13.h, s24
	v_add3_u32 v104, v152, v14, 0x7fff
	v_and_b32_e32 v103, 1, v103
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[133:136], v96
	ds_load_b128 v[137:140], v97
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s26, v144, v144
	v_cmp_o_f32_e64 s27, v154, v154
	v_cmp_o_f32_e64 s28, v156, v156
	v_permlanex16_b32 v113, v149, s96, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v155, s96, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v157, s96, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v105, v158, s96, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v159.h, 0x7fff, v104.h, s25
	v_add3_u32 v104, v144, v16, 0x7fff
	v_add3_u32 v106, v154, v106, 0x7fff
	v_add3_u32 v103, v156, v103, 0x7fff
	v_cndmask_b16 v159.l, 0x7fff, v170.h, s12
	v_perm_b32 v9, v113, v149, v81
	v_perm_b32 v10, v113, v149, v89
	v_perm_b32 v11, v12, v155, v81
	v_perm_b32 v12, v12, v155, v89
	v_perm_b32 v13, v15, v157, v81
	v_perm_b32 v14, v15, v157, v89
	v_perm_b32 v15, v105, v158, v81
	v_perm_b32 v16, v105, v158, v89
	v_cndmask_b16 v160.h, 0x7fff, v104.h, s26
	v_cndmask_b16 v162.h, 0x7fff, v106.h, s27
	v_cndmask_b16 v163.h, 0x7fff, v103.h, s28
	v_permlanex16_b32 v105, v159, s96, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[117:124], v[9:16], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v12, v160, s96, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v162, s96, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v163, s96, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v9, v105, v159, v81
	v_perm_b32 v10, v105, v159, v89
	v_perm_b32 v11, v12, v160, v81
	v_perm_b32 v12, v12, v160, v89
	v_perm_b32 v13, v14, v162, v81
	v_perm_b32 v14, v14, v162, v89
	v_perm_b32 v15, v16, v163, v81
	v_perm_b32 v16, v16, v163, v89
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	v_cmp_lt_i32_e32 vcc_lo, s94, v29
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v101, v161, v148
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[133:140], v[9:16], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_vccnz .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v102, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v101, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v28
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s93, s93, s3
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s79, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s92, s93
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v9, 0xff800000, v102 :: v_dual_cndmask_b32 v12, 0, v4
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v15, 0, v7 :: v_dual_mov_b32 v10, v9
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v11, 0, v101, vcc_lo
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v2, 0, v2
.Ltmp72:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_cndmask_b32 v16, 0, v8
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_mov_b32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v13 :: v_dual_mov_b32 v20, v16
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v7, v2 :: v_dual_mov_b32 v8, v3
.Ltmp78:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v5, v11
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v9, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp82:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v9, v4 :: v_dual_add_f32 v2, v2, v7
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v5, v11, v5
.Ltmp87:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v8
	v_dual_add_f32 v1, v1, v6 :: v_dual_mov_b32 v8, v2
.Ltmp88:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp90:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp91:
	.loc	1 1025 30 is_stmt 1             ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp95:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
.Ltmp96:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v8 :: v_dual_mov_b32 v7, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp97:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v4, v4, v9 :: v_dual_add_f32 v5, v5, v6
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v3, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v2
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp100:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v6, v4 :: v_dual_mov_b32 v3, v5
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp103:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp105:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v9, v1 :: v_dual_max_f32 v6, v6, v6
.Ltmp106:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v5, v3
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v9
.Ltmp109:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v4, v6
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v8, v11
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v2, v10 :: v_dual_mov_b32 v2, v1
.Ltmp113:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp115:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v8, v7
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp117:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v12, v11 :: v_dual_add_f32 v12, v13, v17
	v_add_f32_e32 v13, v14, v18
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v19, v15
.Ltmp120:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp122:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v15, v19 :: v_dual_add_f32 v15, v16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v12 :: v_dual_mov_b32 v20, v15
	v_mov_b32_e32 v16, v11
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v16, v13, v18
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v19, v14 :: v_dual_add_f32 v18, v15, v20
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v17, v14, v19 :: v_dual_mov_b32 v14, v12
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v13, v11
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v13
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v15, v16
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v13, v12, v14 :: v_dual_mov_b32 v12, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v17
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v16, v15
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v17, v19
	v_add_f32_e32 v17, v18, v20
.Ltmp137:
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
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp145:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
	v_dual_add_f32 v8, v14, v18 :: v_dual_lshlrev_b32 v15, 2, v0
	v_add_f32_e32 v7, v13, v16
	v_dual_add_f32 v14, v11, v12 :: v_dual_add_f32 v13, v4, v6
	v_dual_add_f32 v12, v3, v5 :: v_dual_lshlrev_b32 v3, 5, v0
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xc0, v15
.Ltmp146:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v5, 0xe0, v27
	v_and_b32_e32 v1, 28, v27
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
.Ltmp147:
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
		.amdhsa_next_free_vgpr 181
		.amdhsa_next_free_sgpr 98
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
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_vgpr, 181
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.numbered_sgpr, 98
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8588
; TotalNumSgprs: 100
; NumVgprs: 181
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 100
; NumVGPRsForWavesPerEU: 181
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
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
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
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
    .sgpr_count:     100
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     181
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
