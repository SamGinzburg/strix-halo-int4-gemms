	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
	s_mov_b32 s83, 0x31027000
	s_mov_b32 s82, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x80
	s_load_b32 s14, s[0:1], 0x88
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
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s15, s16, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s16, v1
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v3, s15, v1
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s92, s2, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 1, v5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[3:4], null, v3, s78, v[2:3]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s93, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s93
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v3, vcc_lo
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s4, s4
	s_ashr_i32 s8, s8, 31
	s_mul_hi_u32 s6, s4, s6
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v3, 3, v0
	buffer_load_u16 v2, v2, s[80:83], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v3, 24, v3
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v3, v27, v3, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s2, s4, s6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s13, s14
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s2, s2, s8
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, s16
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s4, s14, s12
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, 16
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s2, s8
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s5, s5, 0x800
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s4, s4, s16
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s5, s5, 63
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s6, s92, s2
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s7, s5, 31
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s4, s4, 0
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s7, s7, 26
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s6, s6, 6
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s5, s5, s7
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s4, s4, 0x7fffffc0
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s6, s2
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s5, s5, 63
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s94, s6, s4
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s95, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s94, s95
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v3, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v2, s16, v28
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v3, s15, v28, 1
	v_dual_mov_b32 v102, 0xff800000 :: v_dual_and_b32 v29, 1, v1
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v30, 62, v1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 1, v2
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v4, 0xf8, v0
	v_dual_mov_b32 v7, 0x5410 :: v_dual_and_b32 v6, 16, v0
	.loc	1 779 31                        ; attention.py:779:31
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_and_b32 v12, 7, v0
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v15, s14, v2
	v_lshrrev_b32_e32 v5, 1, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u32_e64 s2, 0, v6
	v_and_b32_e32 v14, 0x60, v0
	v_bfe_i32 v8, v0, 3, 1
	v_lshlrev_b32_e32 v21, 4, v12
	.loc	1 822 49                        ; attention.py:822:49
	v_lshlrev_b32_e32 v11, 3, v0
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s81, s9, 0xffff
	s_mov_b32 s80, s8
	v_mov_b32_e32 v2, v1
	buffer_load_u16 v10, v3, s[80:83], 0 offen
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v3, 24, v27
	s_load_b32 s8, s[0:1], 0x68
	v_dual_mov_b32 v13, 0x7632 :: v_dual_mov_b32 v6, v1
	.loc	1 889 86                        ; attention.py:889:86
	v_lshlrev_b32_e32 v9, 3, v12
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v16, v28, 5, v3
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v18, 2, v4
	v_and_b32_e32 v19, 24, v5
	v_cndmask_b32_e64 v20, 0x1054, v7, s2
	v_lshrrev_b32_e32 v22, 1, v4
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v24, 8, v16
	v_xor_b32_e32 v25, 16, v16
	v_add_nc_u32_e32 v61, 0, v16
	v_xor_b32_e32 v16, 24, v16
	v_mov_b32_e32 v3, v1
	v_and_or_b32 v23, 0x410, v8, v14
	v_lshl_or_b32 v14, v14, 6, v21
	v_dual_mov_b32 v4, v1 :: v_dual_add_nc_u32 v75, 0, v24
	.loc	1 822 49                        ; attention.py:822:49
	v_and_b32_e32 v17, 24, v11
	v_dual_mov_b32 v5, v1 :: v_dual_add_nc_u32 v76, 0, v25
	v_mov_b32_e32 v8, v1
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v62, s12, v15
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v63, s13, v15
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s79, v9
	v_xor_b32_e32 v11, v11, v19
	v_xor_b32_e32 v15, v21, v22
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v77, 0, v16
	v_xor_b32_e32 v14, v23, v14
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v50, 40, v29
	v_add_nc_u32_e32 v79, 0, v11
	v_lshl_or_b32 v78, v12, 10, v15
	v_or_b32_e32 v51, 42, v29
	v_lshl_or_b32 v80, v12, 7, v14
	v_or_b32_e32 v52, 44, v29
	v_or_b32_e32 v53, 46, v29
	v_xor_b32_e32 v88, 0x3f0, v78
	v_or_b32_e32 v54, 48, v29
	v_or_b32_e32 v55, 50, v29
	v_or_b32_e32 v56, 52, v29
	v_or_b32_e32 v57, 54, v29
	v_or_b32_e32 v58, 56, v29
	v_or_b32_e32 v59, 58, v29
	v_or_b32_e32 v60, 60, v29
	v_xor_b32_e32 v15, 0x120, v78
	v_xor_b32_e32 v16, 0x1b0, v78
	v_xor_b32_e32 v85, 0x240, v78
	v_xor_b32_e32 v86, 0x2d0, v78
	v_xor_b32_e32 v87, 0x360, v78
	v_xor_b32_e32 v12, 32, v80
	v_xor_b32_e32 v14, 48, v80
	v_xor_b32_e32 v94, 64, v80
	v_xor_b32_e32 v95, 0x50, v80
	v_xor_b32_e32 v96, 0x60, v80
	v_xor_b32_e32 v97, 0x70, v80
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s96, s3, 11
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v31, 2, v29
	v_or_b32_e32 v32, 4, v29
	v_or_b32_e32 v33, 6, v29
	v_or_b32_e32 v34, 8, v29
	v_or_b32_e32 v35, 10, v29
	v_or_b32_e32 v36, 12, v29
	v_or_b32_e32 v37, 14, v29
	v_or_b32_e32 v38, 16, v29
	v_or_b32_e32 v39, 18, v29
	v_or_b32_e32 v40, 20, v29
	v_or_b32_e32 v41, 22, v29
	v_or_b32_e32 v42, 24, v29
	v_or_b32_e32 v43, 26, v29
	v_or_b32_e32 v44, 28, v29
	v_or_b32_e32 v45, 30, v29
	v_or_b32_e32 v46, 32, v29
	v_or_b32_e32 v47, 34, v29
	v_or_b32_e32 v48, 36, v29
	v_or_b32_e32 v49, 38, v29
	v_dual_mov_b32 v101, v1 :: v_dual_add_nc_u32 v84, 0, v16
	v_or_b32_e32 v64, s96, v50
	v_or_b32_e32 v65, s96, v51
	v_or_b32_e32 v66, s96, v52
	v_or_b32_e32 v67, s96, v53
	v_or_b32_e32 v68, s96, v54
	v_or_b32_e32 v69, s96, v55
	v_or_b32_e32 v70, s96, v56
	v_or_b32_e32 v71, s96, v57
	v_or_b32_e32 v72, s96, v58
	v_or_b32_e32 v73, s96, v59
	v_or_b32_e32 v74, s96, v60
	v_add_nc_u32_e32 v83, 0, v15
	v_add_nc_u32_e32 v85, 0, v85
	v_add_nc_u32_e32 v87, 0, v87
	v_add_nc_u32_e32 v91, 0, v12
	v_add_nc_u32_e32 v92, 0, v14
	v_add_nc_u32_e32 v94, 0, v94
	v_add_nc_u32_e32 v95, 0, v95
	v_add_nc_u32_e32 v96, 0, v96
	v_add_nc_u32_e32 v97, 0, v97
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
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
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[18:19], null, s79, v18, v[9:10]
	v_cndmask_b32_e64 v9, 0x3276, v13, s2
	v_lshl_or_b32 v13, v20, 8, v20
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[19:20], v61
	ds_load_b64 v[21:22], v75
	ds_load_b64 v[23:24], v76
	ds_load_b64 v[25:26], v77
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s2, s8, 0x3fb8aa3b
	v_lshl_or_b32 v9, v9, 8, v9
	v_and_b32_e32 v13, 0x540054, v13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v93, s2, v10 :: v_dual_add_nc_u32 v88, 0, v88
	v_add_nc_u32_e32 v86, 0, v86
	v_and_b32_e32 v9, 0x760076, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v11, v13, 4, v13
	v_xor_b32_e32 v13, 0x90, v78
	v_mov_b32_e32 v7, v1
	.loc	1 847 25                        ; attention.py:847:25
	v_mov_b32_e32 v98, v93
	v_lshl_or_b32 v9, v9, 4, v9
	v_and_b32_e32 v81, 0x5040504, v11
	v_xor_b32_e32 v11, 16, v80
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e64 s0, s78, v17
	v_add_nc_u32_e32 v82, 0, v13
	v_and_b32_e32 v89, 0x7060706, v9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v99, v93 :: v_dual_add_nc_u32 v90, 0, v11
	v_mov_b32_e32 v100, v93
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v104, 2, v0
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s2, s94, s96
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v9, s68 :: v_dual_mov_b32 v10, s69
	v_mad_u64_u32 v[105:106], null, s2, s79, v[18:19]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 822 32                        ; attention.py:822:32
	v_or_b32_e32 v104, s2, v104
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v11, s70 :: v_dual_mov_b32 v12, s71
	v_dual_mov_b32 v13, s72 :: v_dual_mov_b32 v14, s73
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[106:107], null, v104, s78, v[17:18]
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v104, 1, v105
	v_add_lshl_u32 v105, v105, s79, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v15, s74 :: v_dual_mov_b32 v16, s75
	v_or_b32_e32 v103, s96, v48
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v138, 0x80000000, v104, s1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v104, 0x80000000, v106, s0
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v160, 0x80000000, v105, s1
	v_or_b32_e32 v139, s96, v49
	v_or_b32_e32 v156, s96, v46
	v_or_b32_e32 v157, s96, v47
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b64 v[104:105], v104, s[80:83], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or_b32_e32 v158, s96, v29
	v_or_b32_e32 v159, s96, v31
	v_or_b32_e32 v168, s96, v32
	v_or_b32_e32 v169, s96, v33
	v_or_b32_e32 v170, s96, v38
	v_or_b32_e32 v171, s96, v39
	v_or_b32_e32 v172, s96, v40
	v_or_b32_e32 v173, s96, v41
	v_or_b32_e32 v174, s96, v42
	v_or_b32_e32 v175, s96, v43
	v_or_b32_e32 v176, s96, v44
	v_or_b32_e32 v177, s96, v45
	v_or_b32_e32 v178, s96, v34
	v_or_b32_e32 v179, s96, v35
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v103, v103, s94, 1
	v_add_lshl_u32 v142, v64, s94, 1
	v_add_lshl_u32 v145, v65, s94, 1
	v_add_lshl_u32 v155, v66, s94, 1
	v_add_lshl_u32 v164, v67, s94, 1
	v_add_lshl_u32 v165, v68, s94, 1
	v_add_lshl_u32 v166, v69, s94, 1
	v_add_lshl_u32 v167, v70, s94, 1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v79, v[104:105]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[126:129], v61 offset1:1
	ds_load_2addr_stride64_b64 v[130:133], v61 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[134:137], v75 offset0:2 offset1:3
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[160:163], v160, s[88:91], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[104:111], v[126:127], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[130:131], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[147:154], v[128:129], v[19:20], v[9:16] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[128:131], v138, s[88:91], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[112:119], v[132:133], v[19:20], v[9:16] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v75 offset1:1
	ds_load_2addr_stride64_b64 v[13:16], v76 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[134:135], v[21:22], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[112:119], v[136:137], v[21:22], v[112:119] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v133, v174, s94, 1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[104:111], v[9:10], v[21:22], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[147:154], v[11:12], v[21:22], v[147:154] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v76 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[15:16], v[23:24], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[120:127], v[13:14], v[23:24], v[120:127] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[13:16], v77 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[104:111], v[9:10], v[23:24], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[147:154], v[11:12], v[23:24], v[147:154] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v77 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[15:16], v[25:26], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[120:127], v[13:14], v[25:26], v[120:127] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v137, v112
	v_cvt_f32_i32_e32 v146, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v144, v123
	v_cvt_f32_i32_e32 v143, v124
	v_cvt_f32_i32_e32 v141, v125
	v_cvt_f32_i32_e32 v140, v126
	v_cvt_f32_i32_e32 v138, v127
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v123, v71, s94, 1
	v_add_lshl_u32 v124, v72, s94, 1
	v_add_lshl_u32 v122, v157, s94, 1
	v_add_lshl_u32 v125, v158, s94, 1
	v_add_lshl_u32 v126, v159, s94, 1
	v_add_lshl_u32 v127, v170, s94, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v135, v113
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[104:111], v[9:10], v[25:26], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[147:154], v[11:12], v[25:26], v[147:154] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v134, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v9, v104
	v_cvt_f32_i32_e32 v11, v107
	v_cvt_f32_i32_e32 v104, v115
	v_cvt_f32_i32_e32 v107, v117
	v_or_b32_e32 v115, s96, v36
	v_or_b32_e32 v117, s96, v37
	v_cvt_f32_i32_e32 v15, v108
	v_cvt_f32_i32_e32 v108, v119
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v119, v139, s94, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v14, v111
	v_cvt_f32_i32_e32 v16, v109
	v_cvt_f32_i32_e32 v109, v120
	v_cvt_f32_i32_e32 v111, v121
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v120, v156, s94, 1
	v_add_lshl_u32 v121, v171, s94, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v10, v105
	v_cvt_f32_i32_e32 v12, v106
	v_cvt_f32_i32_e32 v13, v110
	v_cvt_f32_i32_e32 v105, v116
	v_cvt_f32_i32_e32 v106, v118
	v_cvt_f32_i32_e32 v136, v148
	v_cvt_f32_i32_e32 v132, v149
	v_cvt_f32_i32_e32 v118, v150
	v_cvt_f32_i32_e32 v116, v151
	v_cvt_f32_i32_e32 v114, v154
	v_cvt_f32_i32_e32 v112, v152
	v_cvt_f32_i32_e32 v113, v153
	v_cvt_f32_i32_e32 v110, v147
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v149, v175, s94, 1
	v_add_lshl_u32 v151, v176, s94, 1
	v_add_lshl_u32 v152, v177, s94, 1
	v_add_lshl_u32 v170, v115, s94, 1
	v_add_lshl_u32 v171, v117, s94, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v113, v98, v113 :: v_dual_mul_f32 v12, v99, v12
	v_dual_mul_f32 v9, v93, v9 :: v_dual_mul_f32 v16, v98, v16
	v_dual_mul_f32 v13, v99, v13 :: v_dual_mul_f32 v104, v93, v104
	v_dual_mul_f32 v15, v93, v15 :: v_dual_mul_f32 v106, v100, v106
	v_dual_mul_f32 v105, v98, v105 :: v_dual_mul_f32 v108, v100, v108
	v_dual_mul_f32 v109, v100, v109 :: v_dual_mul_f32 v10, v98, v10
	v_dual_mul_f32 v111, v98, v111 :: v_dual_mul_f32 v14, v100, v14
	v_dual_mul_f32 v11, v100, v11 :: v_dual_mul_f32 v110, v93, v110
	v_mul_f32_e32 v114, v99, v114
	v_mul_f32_e32 v118, v99, v118
	v_mul_f32_e32 v116, v100, v116
	v_mul_f32_e32 v112, v93, v112
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v180.h, v160.l
	v_mov_b16_e64 v181.h, v161.l
	v_mov_b16_e64 v182.h, v162.l
	v_mov_b16_e64 v183.h, v163.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v180.l, v128.l
	v_mov_b16_e64 v160.l, v128.h
	v_mov_b16_e64 v181.l, v129.l
	v_mov_b16_e64 v161.l, v129.h
	v_mov_b16_e64 v182.l, v130.l
	v_mov_b16_e64 v162.l, v130.h
	v_mov_b16_e64 v183.l, v131.l
	v_mov_b16_e64 v163.l, v131.h
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v129, v168, s94, 1
	v_add_lshl_u32 v130, v169, s94, 1
	v_add_lshl_u32 v128, v172, s94, 1
	v_add_lshl_u32 v131, v173, s94, 1
	v_add_lshl_u32 v168, v178, s94, 1
	v_add_lshl_u32 v169, v179, s94, 1
	s_clause 0x1c
	buffer_load_u16 v159, v103, s[84:87], 0 offen
	buffer_load_u16 v158, v119, s[84:87], 0 offen
	buffer_load_u16 v157, v142, s[84:87], 0 offen
	buffer_load_u16 v156, v145, s[84:87], 0 offen
	buffer_load_u16 v155, v155, s[84:87], 0 offen
	buffer_load_u16 v154, v164, s[84:87], 0 offen
	buffer_load_u16 v153, v165, s[84:87], 0 offen
	buffer_load_u16 v150, v166, s[84:87], 0 offen
	buffer_load_u16 v148, v167, s[84:87], 0 offen
	buffer_load_u16 v147, v121, s[84:87], 0 offen
	buffer_load_u16 v145, v128, s[84:87], 0 offen
	buffer_load_u16 v142, v131, s[84:87], 0 offen
	buffer_load_u16 v139, v133, s[84:87], 0 offen
	buffer_load_u16 v121, v120, s[84:87], 0 offen
	buffer_load_u16 v117, v122, s[84:87], 0 offen
	buffer_load_u16 v115, v127, s[84:87], 0 offen
	buffer_load_u16 v127, v149, s[84:87], 0 offen
	buffer_load_u16 v128, v151, s[84:87], 0 offen
	buffer_load_u16 v133, v152, s[84:87], 0 offen
	buffer_load_u16 v125, v125, s[84:87], 0 offen
	buffer_load_u16 v126, v126, s[84:87], 0 offen
	buffer_load_u16 v122, v129, s[84:87], 0 offen
	buffer_load_u16 v129, v130, s[84:87], 0 offen
	buffer_load_u16 v119, v168, s[84:87], 0 offen
	buffer_load_u16 v120, v169, s[84:87], 0 offen
	buffer_load_u16 v130, v170, s[84:87], 0 offen
	buffer_load_u16 v131, v171, s[84:87], 0 offen
	buffer_load_u16 v123, v123, s[84:87], 0 offen
	buffer_load_u16 v124, v124, s[84:87], 0 offen
	v_add_lshl_u32 v103, v73, s94, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v164, s94, v30
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v107, v99, v107
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v165, s94, v60
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v149, v103, s[84:87], 0 offen
	v_add_lshl_u32 v103, v74, s94, 1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s58, v164, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s59, v164, v63
	v_mov_b32_e32 v164, v101
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v101, v93, v146
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v151, v103, s[84:87], 0 offen
	v_add_lshl_u32 v103, s2, v30, 1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s60, v165, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s61, v165, v63
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v152, v103, s[84:87], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v103, 0, v78
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v103, v180
	ds_store_b32 v82, v160
	ds_store_b32 v83, v181
	ds_store_b32 v84, v161
	ds_store_b32 v85, v182
	ds_store_b32 v86, v162
	ds_store_b32 v87, v183
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v160, s94, v55
	v_or_b32_e32 v103, s94, v56
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b32 v88, v163
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v163, s94, v52
	v_or_b32_e32 v162, s94, v53
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s5, v160, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s6, v160, v63
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v160, s94, v50
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v103, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s4, v103, v63
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v103, s94, v51
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s11, v163, v62
	v_cmp_ge_i32_e64 s15, v160, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s16, v160, v63
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v160, s94, v45
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s12, v163, v63
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v163, s94, v47
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s13, v103, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s14, v103, v63
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s25, v160, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s26, v160, v63
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v160, s94, v40
	v_or_b32_e32 v103, s94, v46
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s21, v163, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s22, v163, v63
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v163, s94, v42
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s36, v160, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s37, v160, v63
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v160, s94, v35
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s23, v103, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s24, v103, v63
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v103, s94, v41
	v_or_b32_e32 v161, s94, v54
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s46, v160, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s47, v160, v63
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v160, s94, v29
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s9, v162, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s10, v162, v63
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v162, s94, v48
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s31, v163, v62
	v_cmp_ge_i32_e64 s56, v160, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s57, v160, v63
	v_mov_b32_e32 v160, v102
	v_cmp_le_i32_e64 s33, v163, v63
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v163, s94, v37
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s34, v103, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s35, v103, v63
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v103, s94, v36
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s7, v161, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s8, v161, v63
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v161, s94, v49
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s19, v162, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s20, v162, v63
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v162, s94, v43
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s42, v163, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s43, v163, v63
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v163, s94, v32
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s44, v103, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s45, v103, v63
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v103, s94, v31
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s17, v161, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s18, v161, v63
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v161, s94, v44
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s29, v162, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s30, v162, v63
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s52, v163, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s53, v163, v63
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s54, v103, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s55, v103, v63
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s27, v161, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s28, v161, v63
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v161, s94, v39
	v_or_b32_e32 v162, s94, v38
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s2, s2, s4
	s_and_b32 s4, s7, s8
	s_and_b32 s8, s15, s16
	s_and_b32 s15, s29, s30
	s_and_b32 s16, s31, s33
	s_and_b32 s29, s46, s47
	s_and_b32 s30, s52, s53
	s_and_b32 s31, s54, s55
	s_and_b32 s98, s5, s6
	s_and_b32 s5, s9, s10
	s_and_b32 s9, s17, s18
	s_and_b32 s17, s34, s35
	s_and_b32 s30, vcc_lo, s30
	s_and_b32 s35, vcc_lo, s31
	s_and_b32 s31, vcc_lo, s29
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s38, v161, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s39, v161, v63
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s40, v162, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s41, v162, v63
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s6, s11, s12
	s_and_b32 s7, s13, s14
	s_and_b32 s11, s21, s22
	s_and_b32 s14, s27, s28
	s_and_b32 s18, s36, s37
	s_and_b32 s22, s38, s39
	s_and_b32 s37, s40, s41
	s_and_b32 s39, s58, s59
	s_and_b32 s40, s60, s61
	s_and_b32 s12, s23, s24
	s_and_b32 s24, vcc_lo, s17
	s_and_b32 s23, vcc_lo, s14
	s_and_b32 s14, vcc_lo, s39
	s_and_b32 s17, vcc_lo, s40
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v161, s94, v34
	v_or_b32_e32 v162, s94, v33
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s33, s56, s57
	s_and_b32 s7, vcc_lo, s7
	s_and_b32 s36, vcc_lo, s33
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s48, v161, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s49, v161, v63
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s50, v162, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s51, v162, v63
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v162, s94, v58
	v_or_b32_e32 v163, s94, v57
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s34, s42, s43
	s_and_b32 s38, s44, s45
	s_and_b32 s29, vcc_lo, s34
	s_and_b32 s34, vcc_lo, s38
	s_and_b32 s33, vcc_lo, s37
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v161, s94, v59
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s64, v162, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s65, v162, v63
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s66, v163, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s67, v163, v63
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s13, s25, s26
	s_and_b32 s27, s48, s49
	s_and_b32 s28, s50, s51
	s_and_b32 s10, s19, s20
	s_and_b32 s11, vcc_lo, s11
	s_and_b32 s12, vcc_lo, s12
	s_and_b32 s19, vcc_lo, s13
	s_and_b32 s20, vcc_lo, s15
	s_and_b32 s21, vcc_lo, s16
	s_and_b32 s25, vcc_lo, s18
	s_and_b32 s26, vcc_lo, s22
	s_and_b32 s27, vcc_lo, s27
	s_and_b32 s28, vcc_lo, s28
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s62, v161, v62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s63, v161, v63
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s42, s64, s65
	s_and_b32 s43, s66, s67
	s_and_b32 s2, vcc_lo, s2
	s_and_b32 s4, vcc_lo, s4
	s_and_b32 s5, vcc_lo, s5
	s_and_b32 s6, vcc_lo, s6
	s_and_b32 s8, vcc_lo, s8
	s_and_b32 s9, vcc_lo, s9
	s_and_b32 s10, vcc_lo, s10
	s_and_b32 s16, vcc_lo, s42
	s_and_b32 s18, vcc_lo, s43
	s_and_b32 s22, vcc_lo, s98
	s_and_b32 s41, s62, s63
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s15, vcc_lo, s41
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v103.h, 0
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s13, 0xff800000, v160
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s94, s94, 64
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s94, s95
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v163.h, v103.h
	v_mov_b16_e64 v161.h, v103.h
	v_mov_b16_e64 v162.h, v103.h
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v146, 16, v159
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v159, v101, v146 :: v_dual_add_nc_u32 v102, 0, v80
	s_waitcnt vmcnt(30)
	v_dual_mul_f32 v101, v98, v144 :: v_dual_lshlrev_b32 v144, 16, v158
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v146.h, v103.h
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v142, 16, v142
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v158, v101, v144 :: v_dual_mul_f32 v101, v99, v143
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v143, 16, v157
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v139, 16, v139
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v127, 16, v127
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v128, 16, v128
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v133, 16, v133
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v157, v101, v143
	v_mul_f32_e32 v101, v100, v141
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v141, 16, v156
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v113, v113, v128 :: v_dual_lshlrev_b32 v122, 16, v122
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v120, 16, v120
	v_lshlrev_b32_e32 v121, 16, v121
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v156, v101, v141
	v_dual_mul_f32 v101, v93, v140 :: v_dual_lshlrev_b32 v140, 16, v155
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v120, v16, v120 :: v_dual_lshlrev_b32 v125, 16, v125
	v_mul_f32_e32 v122, v12, v122
	v_dual_mul_f32 v109, v109, v121 :: v_dual_lshlrev_b32 v126, 16, v126
	v_mul_f32_e32 v155, v101, v140
	v_mul_f32_e32 v101, v98, v138
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v138, 16, v154
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v120, 0xff800000, v120, s31
	v_cndmask_b32_e64 v122, 0xff800000, v122, s30
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v123, 16, v123
	v_lshlrev_b32_e32 v130, 16, v130
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v154, v101, v138 :: v_dual_mul_f32 v101, v99, v137
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v137, 16, v153
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v104, v104, v123 :: v_dual_lshlrev_b32 v117, 16, v117
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v139, v116, v139 :: v_dual_lshlrev_b32 v124, 16, v124
	v_mul_f32_e32 v121, v10, v126
	v_mul_f32_e32 v153, v101, v137
	v_mul_f32_e32 v101, v100, v135
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v135, 16, v150
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v126, v13, v130 :: v_dual_mul_f32 v111, v111, v117
	v_dual_mul_f32 v117, v9, v125 :: v_dual_mul_f32 v112, v112, v127
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v150, v101, v135 :: v_dual_mul_f32 v101, v99, v134
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v134, 16, v148
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v114, v114, v133
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v133, 0xff800000, v156, s7
	v_cndmask_b32_e64 v121, 0xff800000, v121, s35
	v_cndmask_b32_e64 v117, 0xff800000, v117, s36
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v148, v101, v134
	v_dual_mul_f32 v101, v93, v136 :: v_dual_lshlrev_b32 v136, 16, v147
	v_dual_mul_f32 v142, v118, v142 :: v_dual_lshlrev_b32 v119, 16, v119
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v126, 0xff800000, v126, s34
	v_cndmask_b32_e64 v113, 0xff800000, v113, s23
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v147, v101, v136
	v_dual_mul_f32 v101, v98, v132 :: v_dual_lshlrev_b32 v132, 16, v145
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v145, 16, v151
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v151, 16, v152
	v_lshlrev_b32_e32 v131, 16, v131
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v132, v101, v132 :: v_dual_lshlrev_b32 v149, 16, v149
	v_mul_f32_e32 v106, v106, v145
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v108, v108, v151
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v152, v117, v121 :: v_dual_mul_f32 v127, v14, v131
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v112, 0xff800000, v112, s20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v106, 0xff800000, v106, s17
	v_cndmask_b32_e64 v108, 0xff800000, v108, s14
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v115, 16, v115
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v109, 0xff800000, v109, s12
	v_cndmask_b32_e64 v114, 0xff800000, v114, s19
	v_cndmask_b32_e64 v111, 0xff800000, v111, s11
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v156, v106, v108 :: v_dual_lshlrev_b32 v129, 16, v129
.Ltmp4:
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v110, v110, v115
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v142, 0xff800000, v142, s24
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v105, v105, v124
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v132, 0xff800000, v132, s25
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v125, v11, v129
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v110, 0xff800000, v110, s33
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v119, v15, v119
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v147, 0xff800000, v147, s26
	v_cndmask_b32_e64 v139, 0xff800000, v139, s21
	v_cndmask_b32_e64 v125, 0xff800000, v125, s28
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v107, v107, v149
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v119, 0xff800000, v119, s27
	v_cndmask_b32_e64 v115, 0xff800000, v150, s22
	v_cndmask_b32_e64 v123, 0xff800000, v153, s4
	v_cndmask_b32_e64 v124, 0xff800000, v154, s5
	v_cndmask_b32_e64 v128, 0xff800000, v155, s6
	v_cndmask_b32_e64 v129, 0xff800000, v157, s8
	v_cndmask_b32_e64 v130, 0xff800000, v158, s9
	v_cndmask_b32_e64 v131, 0xff800000, v159, s10
	v_cndmask_b32_e64 v145, 0xff800000, v148, s2
	v_cndmask_b32_e64 v127, 0xff800000, v127, s29
	v_cndmask_b32_e64 v105, 0xff800000, v105, s16
	v_cndmask_b32_e64 v104, 0xff800000, v104, s18
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v148, v114, v109, v111
	v_max3_f32 v149, v147, v132, v142
	v_max3_f32 v150, v139, v112, v113
	v_max3_f32 v153, v125, v119, v120
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[9:12], v102
	ds_load_b128 v[13:16], v90
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v107, 0xff800000, v107, s15
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v102, v131, v130, v129
	v_max3_f32 v151, v133, v128, v124
	v_max3_f32 v154, v123, v115, v145
	v_max_f32_e32 v155, v104, v105
	v_max3_f32 v157, v126, v127, v110
	v_max3_f32 v148, v149, v150, v148
	v_max3_f32 v149, v152, v122, v153
	v_max3_f32 v102, v102, v151, v154
	v_max3_f32 v150, v155, v107, v156
.Ltmp8:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v144.h, v103.h
	v_mov_b16_e64 v141.h, v103.h
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v148, v149, v157, v148
.Ltmp10:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v116.h, v103.h
	v_mov_b16_e64 v137.h, v103.h
	v_mov_b16_e64 v136.h, v103.h
	v_mov_b16_e64 v134.h, v103.h
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v102, v148, v102, v150
.Ltmp12:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v138.h, v103.h
	v_mov_b16_e64 v135.h, v103.h
	v_mov_b16_e32 v101.h, v103.h
	v_mov_b16_e64 v143.h, v103.h
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v148, v102, s97, 0xfedcba98 op_sel:[1,0]
.Ltmp14:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v118.h, v103.h
	v_mov_b16_e64 v140.h, v103.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v102, v160, v102, v148
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v110, v110, v102
	v_sub_f32_e32 v120, v120, v102
	v_sub_f32_e32 v126, v126, v102
	v_sub_f32_e32 v145, v145, v102
	v_sub_f32_e32 v108, v108, v102
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v110, v110
	v_exp_f32_e32 v120, v120
	v_exp_f32_e32 v126, v126
	v_exp_f32_e32 v145, v145
	v_exp_f32_e32 v108, v108
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v142, v142, v102
	v_sub_f32_e32 v122, v122, v102
	v_sub_f32_e32 v132, v132, v102
	v_sub_f32_e32 v105, v105, v102
	v_sub_f32_e32 v107, v107, v102
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v110, 0, v110, s33
	v_cndmask_b32_e64 v150, 0, v120, s31
	v_cndmask_b32_e64 v120, 0, v126, s34
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v130, v130, v102
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v158, 0, v108, s14
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v144.l, v110.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v111, v111, v102
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v142, v142
	v_exp_f32_e32 v130, v130
	v_exp_f32_e32 v122, v122
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v144, 1, v144
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v111, v111
	v_exp_f32_e32 v132, v132
	v_exp_f32_e32 v105, v105
	v_exp_f32_e32 v107, v107
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v146.l, v120.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v123, v123, v102
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v152, 0, v142, s24
	v_cndmask_b32_e64 v154, 0, v130, s9
	v_cndmask_b32_e64 v130, 0, v145, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v128, v128, v102
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v153, 0, v111, s11
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v104, v104, v102
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v122, 0, v122, s30
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v146, 1, v146
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v128, v128
	v_exp_f32_e32 v123, v123
	v_exp_f32_e32 v104, v104
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v157, 0, v107, s15
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s2, v120, v120
	v_add3_u32 v146, v120, v146, 0x7fff
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v148, v160, v102
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v114, v114, v102
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v162.l, v122.h
	v_mov_b16_e64 v101.l, v130.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v128, 0, v128, s6
	v_cndmask_b32_e64 v123, 0, v123, s4
	v_cndmask_b32_e64 v145, 0, v104, s18
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v147, v147, v102
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v114, v114
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v134.l, v128.h
	v_mov_b16_e64 v136.l, v123.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v133, v133, v102
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v147, v147
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s11, v128, v128
	v_and_b32_e32 v134, 1, v134
	v_and_b32_e32 v136, 1, v136
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v133, v133
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v101, 1, v101
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v114, 0, v114, s19
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v134, v128, v134, 0x7fff
	v_cmp_o_f32_e64 s19, v150, v150
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v148, v148
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v147, 0, v147, s26
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v121, v121, v102
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v101, v130, v101, 0x7fff
	v_add3_u32 v144, v110, v144, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v155, 0, v133, s7
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v108, v110, v147
.Ltmp16:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v121, v121
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v127, v127, v102
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v110, v110
	v_add3_u32 v173, v123, v136, 0x7fff
	v_cmp_o_f32_e64 s26, v145, v145
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v127, v127
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v121, 0, v121, s35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v103.l, v121.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v139, v139, v102
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v151, 0, v127, s29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s14, v121, v121
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v139, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v107, v120, v151
.Ltmp18:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v126, 0, v139, s21
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v124, v124, v102
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v130, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v141.l, v126.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v124, v124
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v131, v131, v102
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v126, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v120, 1, v141
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v131, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v169, v126, v120, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v156, 0, v124, s5
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v125, v125, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s24, v156, v156
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v125, v125
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v131, 0, v131, s10
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v137.l, v131.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v129, v129, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v131, v131
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v149, 0, v125, s28
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v112, v112, v102
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v125, 0, v132, s25
	v_cndmask_b32_e64 v132, 0, v105, s16
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v129, v129
.Ltmp19:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v105, v122, v149
.Ltmp20:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v117, v117, v102
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v112, v112
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s16, v122, v122
	v_mov_b16_e64 v143.l, v125.h
	v_mov_b16_e64 v118.l, v132.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v117, v117
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s18, v149, v149
	v_cmp_o_f32_e64 s5, v125, v125
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v129, 0, v129, s8
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v106, v106, v102
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s28, v158, v158
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v112, 0, v112, s20
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s20, v151, v151
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v159, v129, v155
.Ltmp22:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v106, v106
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v117, 0, v117, s36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v119, v119, v102
.Ltmp23:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v111, v126, v112
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v135.l, v129.h
	v_cmp_o_f32_e64 s10, v129, v129
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v104, v117, v121
.Ltmp26:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v119, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v161.l, v117.h
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v142, v131, v154
.Ltmp28:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v133, 0, v106, s17
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v160, v104, v105
	v_dual_add_f32 v104, v128, v156 :: v_dual_sub_f32 v113, v113, v102
.Ltmp30:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v135, 1, v135
	v_cmp_o_f32_e64 s15, v117, v117
	v_mov_b16_e64 v116.l, v133.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v119, 0, v119, s27
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s27, v157, v157
	v_add3_u32 v172, v129, v135, 0x7fff
	v_and_b32_e32 v116, 1, v116
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e64 v163.l, v119.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v109, v109, v102
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v106, v119, v150
.Ltmp32:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s17, v119, v119
	v_add3_u32 v116, v133, v116, 0x7fff
	v_cndmask_b16 v116.l, 0x7fff, v144.h, s4
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v109, v109
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v165, v106, v107
.Ltmp34:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v115, v115, v102 :: v_dual_add_f32 v106, v130, v145
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v107, v132, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v128, v160, v165
.Ltmp36:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v115, v115
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v160.l, 0x7fff, v101.h, s21
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v127, 0, v109, s12
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v109, v125, v152
.Ltmp38:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s12, v123, v123
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v139, v127, v153
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add_f32_e32 v166, v108, v109
.Ltmp40:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v109, 1, v161
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v115, 0, v115, s22
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v108, v133, v158
	v_add_f32_e32 v139, v139, v142
	v_add_f32_e32 v142, v159, v104
.Ltmp42:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v113, v113
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v105, v123, v115
.Ltmp44:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v138.l, v127.h
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v161, v107, v108 :: v_dual_and_b32 v104, 1, v103
.Ltmp46:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v103.l, v149.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v159, v105, v106
.Ltmp48:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v117, v117, v109, 0x7fff
	v_cmp_o_f32_e64 s8, v127, v127
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v130, v139, v142
.Ltmp50:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v113, 0, v113, s23
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s22, v132, v132
	v_cmp_o_f32_e64 s23, v133, v133
	v_cmp_o_f32_e64 s25, v115, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v124, v113, v114
.Ltmp52:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v140.l, v113.h
	v_cmp_o_f32_e64 s7, v113, v113
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v167, v111, v124
.Ltmp54:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v111, 1, v162
	v_and_b32_e32 v124, 1, v163
	v_add3_u32 v162, v121, v104, 0x7fff
	v_and_b32_e32 v121, 1, v140
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v129, v166, v167
.Ltmp56:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v163, v122, v111, 0x7fff
	v_add3_u32 v168, v119, v124, 0x7fff
	v_and_b32_e32 v122, 1, v138
	v_and_b32_e32 v124, 1, v137
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v128, v128, v129 :: v_dual_and_b32 v119, 1, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp58:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v133.l, 0x7fff, v168.h, s17
	v_add3_u32 v170, v127, v122, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v171, v131, v124, 0x7fff
	v_and_b32_e32 v127, 1, v103
	v_mov_b16_e64 v103.l, v150.h
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v131, v159, v161 :: v_dual_and_b32 v118, 1, v118
.Ltmp60:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v113, v113, v121, 0x7fff
	v_cndmask_b16 v113.l, 0x7fff, v146.h, s2
	v_cndmask_b16 v162.l, 0x7fff, v116.h, s23
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v129, v130, v131
.Ltmp62:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v118, v132, v118, 0x7fff
	v_cndmask_b16 v132.l, 0x7fff, v117.h, s15
	v_add3_u32 v117, v149, v127, 0x7fff
	v_and_b32_e32 v127, 1, v103
	v_mov_b16_e64 v103.l, v151.h
	v_cndmask_b16 v132.h, 0x7fff, v162.h, s14
	v_cndmask_b16 v117.l, 0x7fff, v163.h, s16
	v_cndmask_b16 v117.h, 0x7fff, v117.h, s18
	v_add3_u32 v127, v150, v127, 0x7fff
	v_and_b32_e32 v131, 1, v103
	v_mov_b16_e64 v103.l, v147.h
	v_permlanex16_b32 v130, v132, s97, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v144.l, 0x7fff, v113.h, s7
	v_cndmask_b16 v133.h, 0x7fff, v127.h, s19
	v_add3_u32 v150, v151, v131, 0x7fff
	v_and_b32_e32 v101, 1, v103
	v_mov_b16_e64 v103.l, v152.h
	v_perm_b32 v127, v130, v132, v81
	v_cndmask_b16 v151.l, 0x7fff, v134.h, s11
	v_cndmask_b16 v113.h, 0x7fff, v150.h, s20
	v_cmp_o_f32_e64 s14, v152, v152
	v_and_b32_e32 v134, 1, v103
	v_mov_b16_e32 v103.l, v112.h
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v149, v128, v129
.Ltmp64:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v128, v130, v132, v89
	v_permlanex16_b32 v132, v133, s97, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v130, v117, s97, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[104:107], v91
	ds_load_b128 v[108:111], v92
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v143, v125, v119, 0x7fff
	v_cmp_o_f32_e64 s15, v112, v112
	v_perm_b32 v131, v132, v133, v81
	v_perm_b32 v132, v132, v133, v89
	v_add3_u32 v133, v147, v101, 0x7fff
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v101, v149, s97, 0xfedcba98 op_sel:[1,0]
.Ltmp66:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v129, v130, v117, v81
	v_perm_b32 v130, v130, v117, v89
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v117, 0, v148, s13
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s13, v147, v147
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v101, v149, v101
.Ltmp68:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v147, v113, s97, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v149, v152, v134, 0x7fff
	v_and_b32_e32 v152, 1, v103
	v_mov_b16_e32 v103.l, v114.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v2, v2, v117
	v_mul_f32_e32 v3, v3, v117
	v_mul_f32_e32 v4, v4, v117
	v_mul_f32_e32 v5, v5, v117
	v_mul_f32_e32 v6, v6, v117
	v_mul_f32_e32 v7, v7, v117
	v_mul_f32_e32 v8, v8, v117
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v116.h, 0x7fff, v133.h, s13
	v_perm_b32 v133, v147, v113, v81
	v_perm_b32 v134, v147, v113, v89
	v_and_b32_e32 v147, 1, v103
	v_mov_b16_e64 v103.l, v153.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v117
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s16, v114, v114
	v_add3_u32 v112, v112, v152, 0x7fff
	v_cndmask_b16 v118.l, 0x7fff, v143.h, s5
	v_cndmask_b16 v143.l, 0x7fff, v169.h, s6
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[127:134], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v13, v114, v147, 0x7fff
	v_and_b32_e32 v14, 1, v103
	v_mov_b16_e64 v103.l, v154.h
	v_cndmask_b16 v161.l, 0x7fff, v118.h, s22
	v_permlanex16_b32 v113, v116, s97, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v118.h, 0x7fff, v149.h, s14
	v_cndmask_b16 v143.h, 0x7fff, v112.h, s15
	v_cndmask_b16 v144.h, 0x7fff, v13.h, s16
	v_and_b32_e32 v112, 1, v103
	v_mov_b16_e64 v103.l, v155.h
	v_cmp_o_f32_e64 s17, v153, v153
	v_cmp_o_f32_e64 s18, v154, v154
	v_perm_b32 v9, v113, v116, v81
	v_perm_b32 v10, v113, v116, v89
	v_permlanex16_b32 v12, v118, s97, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v143, s97, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v16, v153, v14, 0x7fff
	v_permlanex16_b32 v113, v144, s97, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v112, v154, v112, 0x7fff
	v_and_b32_e32 v114, 1, v103
	v_mov_b16_e64 v103.l, v156.h
	v_perm_b32 v11, v12, v118, v81
	v_perm_b32 v12, v12, v118, v89
	v_perm_b32 v13, v15, v143, v81
	v_perm_b32 v14, v15, v143, v89
	v_cndmask_b16 v146.h, 0x7fff, v16.h, s17
	v_perm_b32 v15, v113, v144, v81
	v_perm_b32 v16, v113, v144, v89
	v_cndmask_b16 v148.h, 0x7fff, v112.h, s18
	v_add3_u32 v112, v155, v114, 0x7fff
	v_and_b32_e32 v114, 1, v103
	v_mov_b16_e32 v103.l, v115.h
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[104:111], v[9:16], v[1:8]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[119:122], v94
	ds_load_b128 v[123:126], v95
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s19, v155, v155
	v_add3_u32 v13, v156, v114, 0x7fff
	v_and_b32_e32 v14, 1, v103
	v_mov_b16_e64 v103.l, v145.h
	v_cndmask_b16 v146.l, 0x7fff, v170.h, s8
	v_cndmask_b16 v148.l, 0x7fff, v171.h, s9
	v_cndmask_b16 v150.l, 0x7fff, v172.h, s10
	v_cndmask_b16 v150.h, 0x7fff, v112.h, s19
	.loc	1 897 23                        ; attention.py:897:23
	v_dual_fmac_f32 v101, v164, v117 :: v_dual_and_b32 v16, 1, v103
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v103.l, v157.h
	v_cndmask_b16 v151.h, 0x7fff, v13.h, s24
	v_add3_u32 v104, v115, v14, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[135:138], v96
	ds_load_b128 v[139:142], v97
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v113, v146, s97, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v106, 1, v103
	v_mov_b16_e64 v103.l, v158.h
	v_permlanex16_b32 v12, v148, s97, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v150, s97, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v105, v151, s97, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v159.h, 0x7fff, v104.h, s25
	v_and_b32_e32 v103, 1, v103
	v_add3_u32 v104, v145, v16, 0x7fff
	v_add3_u32 v106, v157, v106, 0x7fff
	v_cndmask_b16 v159.l, 0x7fff, v173.h, s12
	v_perm_b32 v9, v113, v146, v81
	v_add3_u32 v103, v158, v103, 0x7fff
	v_perm_b32 v10, v113, v146, v89
	v_perm_b32 v11, v12, v148, v81
	v_perm_b32 v12, v12, v148, v89
	v_perm_b32 v13, v15, v150, v81
	v_perm_b32 v14, v15, v150, v89
	v_perm_b32 v15, v105, v151, v81
	v_perm_b32 v16, v105, v151, v89
	v_cndmask_b16 v160.h, 0x7fff, v104.h, s26
	v_cndmask_b16 v161.h, 0x7fff, v106.h, s27
	v_cndmask_b16 v162.h, 0x7fff, v103.h, s28
	v_permlanex16_b32 v105, v159, s97, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[119:126], v[9:16], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v12, v160, s97, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v161, s97, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v162, s97, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v9, v105, v159, v81
	v_perm_b32 v10, v105, v159, v89
	v_perm_b32 v11, v12, v160, v81
	v_perm_b32 v12, v12, v160, v89
	v_perm_b32 v13, v14, v161, v81
	v_perm_b32 v14, v14, v161, v89
	v_perm_b32 v15, v16, v162, v81
	v_perm_b32 v16, v16, v162, v89
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[135:142], v[9:16], v[1:8]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
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
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v2, 0, v2
.Ltmp70:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_cndmask_b32 v16, 0, v8
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_mov_b32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v13 :: v_dual_mov_b32 v20, v16
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v7, v2 :: v_dual_mov_b32 v8, v3
.Ltmp76:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v5, v11
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp78:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v9, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp82:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v9, v4 :: v_dual_add_f32 v2, v2, v7
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v5, v11, v5
.Ltmp85:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v8
	v_dual_add_f32 v1, v1, v6 :: v_dual_mov_b32 v8, v2
.Ltmp86:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp88:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp89:
	.loc	1 1025 30 is_stmt 1             ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp91:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
.Ltmp94:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v8 :: v_dual_mov_b32 v7, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp95:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v4, v4, v9 :: v_dual_add_f32 v5, v5, v6
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v3, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v2
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp98:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v6, v4 :: v_dual_mov_b32 v3, v5
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp101:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp103:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v9, v1 :: v_dual_max_f32 v6, v6, v6
.Ltmp104:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v5, v3
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v9
.Ltmp107:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v4, v6
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v8, v11
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v2, v10 :: v_dual_mov_b32 v2, v1
.Ltmp111:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v8, v7
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp115:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v12, v11 :: v_dual_add_f32 v12, v13, v17
	v_add_f32_e32 v13, v14, v18
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v19, v15
.Ltmp118:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp120:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v15, v19 :: v_dual_add_f32 v15, v16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v12 :: v_dual_mov_b32 v20, v15
	v_mov_b32_e32 v16, v11
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v16, v13, v18
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v19, v14 :: v_dual_add_f32 v18, v15, v20
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v17, v14, v19 :: v_dual_mov_b32 v14, v12
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v13, v11
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v13
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v15, v16
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v13, v12, v14 :: v_dual_mov_b32 v12, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v17
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v16, v15
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v17, v19
	v_add_f32_e32 v17, v18, v20
.Ltmp135:
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
.Ltmp136:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp137:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp138:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v8
.Ltmp140:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp141:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v9, v10
.Ltmp142:
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
.Ltmp143:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
	v_dual_add_f32 v8, v14, v18 :: v_dual_lshlrev_b32 v15, 2, v0
	v_add_f32_e32 v7, v13, v16
	v_dual_add_f32 v14, v11, v12 :: v_dual_add_f32 v13, v4, v6
	v_dual_add_f32 v12, v3, v5 :: v_dual_lshlrev_b32 v3, 5, v0
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xc0, v15
.Ltmp144:
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
.Ltmp145:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_vgpr, 184
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.numbered_sgpr, 99
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8684
; TotalNumSgprs: 101
; NumVgprs: 184
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 101
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
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
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
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
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
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     101
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.kd
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
