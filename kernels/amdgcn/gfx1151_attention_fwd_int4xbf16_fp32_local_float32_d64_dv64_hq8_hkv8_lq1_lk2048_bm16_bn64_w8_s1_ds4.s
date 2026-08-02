	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b32 s54, s[0:1], 0x64
	s_load_b64 s[42:43], s[0:1], 0x5c
	s_load_b64 s[56:57], s[0:1], 0x0
	s_load_b64 s[52:53], s[0:1], 0x40
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s7, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v37, 15, v0
	v_lshrrev_b32_e32 v9, 4, v0
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x7c
	s_load_b32 s19, s[0:1], 0x84
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v2, 1, v37
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v33, 0xc0, v0
	v_lshlrev_b32_e32 v34, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v35, 31, v0
	v_and_b32_e32 v38, 0xf0, v0
	.loc	1 889 86                        ; attention.py:889:86
	v_and_b32_e32 v39, 7, v0
	v_lshlrev_b32_e32 v36, 5, v0
	s_mov_b32 s44, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s54
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s8, s2, s54
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s8, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
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
	s_and_b32 s57, s57, 0xffff
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s42, v2
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s18, s7, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s54
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s12, s18, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s18, v9
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v3, s12, v9
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s41, s2, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 1, v1
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[3:4], null, v3, s42, v[2:3]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s4, s4, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v2, 0x80000000, v3, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s54, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v3, 3, v33
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s54
	s_abs_i32 s4, s4
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_u16 v2, v2, s[56:59], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s6, s4, s6
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v3, v34, v3, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s2, s4, s6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s17, s19
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s2, s2, s8
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, s18
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s4, s19, s16
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, 16
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s2, s8
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s5, s5, 0x800
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s4, s4, s18
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s5, s5, 63
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s6, s41, s2
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
	s_max_i32 s55, s6, s4
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s72, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s55, s72
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
	v_or_b32_e32 v2, s18, v37
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v3, s12, v37, 1
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x68
	s_load_b64 s[60:61], s[0:1], 0x30
	v_lshrrev_b32_e32 v5, 1, v0
	.loc	1 822 49                        ; attention.py:822:49
	v_lshlrev_b32_e32 v12, 3, v0
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e64 s2, 1, v2
	v_dual_mov_b32 v133, 0xff800000 :: v_dual_lshlrev_b32 v8, 1, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v28, 24, v5
	v_dual_mov_b32 v131, 0xff800000 :: v_dual_lshlrev_b32 v6, 3, v37
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v2, 0x80000000, v3, s2
	v_dual_mov_b32 v132, 0xff800000 :: v_dual_and_b32 v3, 24, v34
	v_lshl_or_b32 v30, v35, 2, v8
	v_lshlrev_b32_e32 v25, 4, v39
	v_and_b32_e32 v23, 0x60, v0
	v_bfe_i32 v24, v0, 3, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v26, v37, 5, v3
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s57, s9, 0xffff
	s_mov_b32 s56, s8
	v_mov_b32_e32 v19, 0x5410
	buffer_load_u16 v10, v2, s[56:59], 0 offen
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v2, s19, v1
	v_mov_b32_e32 v1, 0
	v_lshlrev_b32_e32 v15, 6, v0
	v_and_b32_e32 v18, 16, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v4, 0xf8, v0
	v_lshlrev_b32_e32 v7, 3, v35
	v_and_b32_e32 v16, 0x380, v36
	v_dual_mov_b32 v8, v1 :: v_dual_and_b32 v17, 30, v0
	v_and_b32_e32 v31, 64, v15
	v_mov_b32_e32 v15, v1
	v_cmp_eq_u32_e64 s2, 0, v18
	.loc	1 889 86                        ; attention.py:889:86
	v_lshlrev_b32_e32 v11, 3, v39
	v_mov_b32_e32 v3, v1
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v27, 2, v4
	v_lshl_or_b32 v29, v38, 4, v6
	v_cndmask_b32_e64 v18, 0x1054, v19, s2
	v_lshrrev_b32_e32 v19, 1, v4
	v_mov_b32_e32 v4, v1
	v_lshl_or_b32 v47, v37, 8, v7
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_or3_b32 v80, v16, v17, v31
	v_dual_mov_b32 v20, 0x7632 :: v_dual_lshlrev_b32 v21, 2, v37
	v_lshrrev_b32_e32 v13, 1, v38
	v_dual_mov_b32 v5, v1 :: v_dual_and_b32 v14, 14, v9
	v_lshl_or_b32 v32, v23, 6, v25
	v_and_or_b32 v81, 0x410, v24, v23
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v78, 0, v26
	v_xor_b32_e32 v82, 8, v26
	v_xor_b32_e32 v83, 16, v26
	v_xor_b32_e32 v26, 24, v26
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v45, s16, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v46, s17, v2
	v_mov_b32_e32 v2, v1
	v_xor_b32_e32 v16, v25, v19
	v_xor_b32_e32 v25, 16, v80
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s1, s3, s0
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s43, v11
	v_xor_b32_e32 v13, v29, v13
	v_xor_b32_e32 v29, 16, v47
	v_xor_b32_e32 v79, v30, v14
	v_xor_b32_e32 v17, v81, v32
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v81, 0, v82
	v_add_nc_u32_e32 v82, 0, v83
	v_add_nc_u32_e32 v83, 0, v26
	v_xor_b32_e32 v26, 20, v80
	v_xor_b32_e32 v30, 28, v80
	v_add_nc_u32_e32 v107, 0, v25
	v_add_nc_u32_e32 v89, 0, v29
	v_lshl_or_b32 v14, v18, 8, v18
	v_add_nc_u32_e32 v108, 0, v26
	v_add_nc_u32_e32 v110, 0, v30
	v_lshl_or_b32 v84, v39, 10, v16
	v_lshl_or_b32 v85, v39, 7, v17
	v_and_b32_e32 v14, 0x540054, v14
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s73, s3, 11
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s8, s1, 3
	v_and_or_b32 v40, v9, 1, s73
	v_or3_b32 v41, s73, v9, 62
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s1, -8
	v_xor_b32_e32 v90, 24, v47
	v_xor_b32_e32 v91, 32, v47
	v_xor_b32_e32 v92, 40, v47
	v_xor_b32_e32 v93, 48, v47
	v_xor_b32_e32 v94, 56, v47
	v_xor_b32_e32 v95, 64, v47
	v_xor_b32_e32 v96, 0x48, v47
	v_xor_b32_e32 v97, 0x50, v47
	v_xor_b32_e32 v98, 0x58, v47
	v_xor_b32_e32 v99, 0x60, v47
	v_xor_b32_e32 v100, 0x68, v47
	v_xor_b32_e32 v101, 0x70, v47
	v_xor_b32_e32 v102, 0x78, v47
	v_xor_b32_e32 v18, 0x210, v79
	v_xor_b32_e32 v19, 4, v80
	v_add_nc_u32_e32 v87, 0, v13
	v_xor_b32_e32 v13, 0x90, v84
	v_xor_b32_e32 v16, 0x1b0, v84
	v_xor_b32_e32 v17, 0x240, v84
	v_xor_b32_e32 v116, 0x2d0, v84
	v_xor_b32_e32 v117, 0x360, v84
	v_xor_b32_e32 v118, 0x3f0, v84
	v_xor_b32_e32 v119, 16, v85
	v_xor_b32_e32 v120, 32, v85
	v_xor_b32_e32 v121, 48, v85
	v_xor_b32_e32 v122, 64, v85
	v_xor_b32_e32 v123, 0x50, v85
	v_xor_b32_e32 v124, 0x60, v85
	v_xor_b32_e32 v125, 0x70, v85
	s_sub_i32 s9, s3, s1
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s8, s13, s8
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s9, s14, s9
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v42, 1, v21
	v_or_b32_e32 v43, 2, v21
	v_or_b32_e32 v44, 3, v21
	v_or_b32_e32 v48, 2, v40
	v_or_b32_e32 v49, 4, v40
	v_or_b32_e32 v50, 6, v40
	v_or_b32_e32 v51, 8, v40
	v_or_b32_e32 v52, 10, v40
	v_or_b32_e32 v53, 12, v40
	v_or_b32_e32 v54, 14, v40
	v_or_b32_e32 v55, 16, v40
	v_or_b32_e32 v56, 18, v40
	v_or_b32_e32 v57, 20, v40
	v_or_b32_e32 v58, 22, v40
	v_or_b32_e32 v59, 24, v40
	v_or_b32_e32 v60, 26, v40
	v_or_b32_e32 v61, 28, v40
	v_or_b32_e32 v62, 30, v40
	v_or_b32_e32 v63, 32, v40
	v_or_b32_e32 v64, 34, v40
	v_or_b32_e32 v65, 36, v40
	v_or_b32_e32 v66, 38, v40
	v_or_b32_e32 v67, 40, v40
	v_or_b32_e32 v68, 42, v40
	v_or_b32_e32 v69, 44, v40
	v_or_b32_e32 v70, 46, v40
	v_or_b32_e32 v71, 48, v40
	v_or_b32_e32 v72, 50, v40
	v_or_b32_e32 v73, 52, v40
	v_or_b32_e32 v74, 54, v40
	v_or_b32_e32 v75, 56, v40
	v_or_b32_e32 v76, 58, v40
	v_or_b32_e32 v77, 60, v40
	v_add_nc_u32_e32 v90, 0, v90
	v_add_nc_u32_e32 v91, 0, v91
	v_add_nc_u32_e32 v92, 0, v92
	v_add_nc_u32_e32 v93, 0, v93
	v_add_nc_u32_e32 v94, 0, v94
	v_add_nc_u32_e32 v95, 0, v95
	v_add_nc_u32_e32 v96, 0, v96
	v_add_nc_u32_e32 v97, 0, v97
	v_add_nc_u32_e32 v98, 0, v98
	v_add_nc_u32_e32 v99, 0, v99
	v_add_nc_u32_e32 v100, 0, v100
	v_add_nc_u32_e32 v101, 0, v101
	v_add_nc_u32_e32 v102, 0, v102
	v_add_nc_u32_e32 v103, 0, v18
	v_add_nc_u32_e32 v104, 0, v19
	v_add_nc_u32_e32 v112, 0, v13
	v_add_nc_u32_e32 v114, 0, v16
	v_add_nc_u32_e32 v115, 0, v17
	v_add_nc_u32_e32 v116, 0, v116
	v_add_nc_u32_e32 v117, 0, v117
	v_add_nc_u32_e32 v118, 0, v118
	v_add_nc_u32_e32 v119, 0, v119
	v_add_nc_u32_e32 v120, 0, v120
	v_add_nc_u32_e32 v121, 0, v121
	v_add_nc_u32_e32 v122, 0, v122
	v_add_nc_u32_e32 v123, 0, v123
	v_add_nc_u32_e32 v124, 0, v124
	v_add_nc_u32_e32 v125, 0, v125
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s18, s18, s15
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_add_i32 s75, s9, s8
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s74, 0x76543210
	s_mov_b32 s66, s58
	s_mov_b32 s67, s59
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	s_mov_b32 s70, s58
	s_mov_b32 s71, s59
	s_and_b32 s61, s61, 0xffff
	s_and_b32 s69, s7, 0xffff
	s_mov_b32 s64, s10
	s_mov_b32 s68, s6
	s_mov_b32 s56, s4
	s_mov_b32 s57, s5
	s_mov_b32 s65, s11
	s_add_i32 s75, s75, s18
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 822 49                        ; attention.py:822:49
	v_and_b32_e32 v22, 24, v12
	v_xor_b32_e32 v12, v12, v28
	v_xor_b32_e32 v28, 8, v47
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[23:24], null, s43, v27, v[11:12]
	v_xor_b32_e32 v24, 12, v80
	v_cndmask_b32_e64 v11, 0x3276, v20, s2
	v_xor_b32_e32 v27, 24, v80
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s2, s12, 0x3fb8aa3b
	v_add_nc_u32_e32 v88, 0, v28
	v_add_nc_u32_e32 v106, 0, v24
	v_lshl_or_b32 v11, v11, 8, v11
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v129, s2, v10
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[24:25], null, s15, v9, v[21:22]
	v_add_nc_u32_e32 v109, 0, v27
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[25:26], v78
	ds_load_b64 v[27:28], v81
	ds_load_b64 v[29:30], v82
	ds_load_b64 v[31:32], v83
	v_and_b32_e32 v11, 0x760076, v11
	v_xor_b32_e32 v20, 8, v80
	v_add_nc_u32_e32 v86, 0, v12
	v_lshl_or_b32 v12, v14, 4, v14
	v_xor_b32_e32 v14, 0x120, v84
	v_lshl_or_b32 v9, v11, 4, v11
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e64 s1, s42, v22
	v_add_nc_u32_e32 v105, 0, v20
	v_and_b32_e32 v111, 0x5040504, v12
	v_add_nc_u32_e32 v113, 0, v14
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v126, 1, v24
	v_add_nc_u32_e32 v127, 2, v24
	v_and_b32_e32 v128, 0x7060706, v9
	v_add_nc_u32_e32 v130, 3, v24
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v9, 2, v0
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s11, s55, s73
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v141, s51 :: v_dual_mov_b32 v140, s50
	v_dual_mov_b32 v139, s49 :: v_dual_mov_b32 v138, s48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 822 32                        ; attention.py:822:32
	v_or_b32_e32 v9, s11, v9
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v137, s47 :: v_dual_mov_b32 v136, s46
	v_dual_mov_b32 v135, s45 :: v_dual_mov_b32 v134, s44
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[9:10], null, v9, s42, v[22:23]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v13, s55, v21
	v_or_b32_e32 v164, s55, v43
	v_or_b32_e32 v20, s55, v42
	v_or_b32_e32 v174, s55, v44
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s9, s75, s55
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v13, v45
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s4, v13, v46
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s7, v164, v45
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s8, v164, v46
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s5, v20, v45
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b64 v[9:10], v9, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s6, v20, v46
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v13, s9, v130, 2
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s10, v174, v46
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s2, s2, s4
	s_and_b32 s4, s7, s8
	s_and_b32 s6, s5, s6
	s_and_b32 s2, vcc_lo, s2
	s_and_b32 s4, vcc_lo, s4
	s_and_b32 s6, vcc_lo, s6
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_add_lshl_u32 v175, s55, v40, 1
	v_add_lshl_u32 v176, v48, s55, 1
	v_add_lshl_u32 v177, v49, s55, 1
	v_add_lshl_u32 v178, v50, s55, 1
	v_add_lshl_u32 v179, v51, s55, 1
	v_add_lshl_u32 v181, v52, s55, 1
	v_add_lshl_u32 v182, v53, s55, 1
	v_add_lshl_u32 v183, v54, s55, 1
	v_add_lshl_u32 v202, v55, s55, 1
	v_add_lshl_u32 v203, v56, s55, 1
	v_add_lshl_u32 v204, v57, s55, 1
	v_add_lshl_u32 v205, v58, s55, 1
	v_add_lshl_u32 v206, v59, s55, 1
	v_add_lshl_u32 v207, v60, s55, 1
	v_add_lshl_u32 v208, v61, s55, 1
	v_add_lshl_u32 v209, v62, s55, 1
	v_add_lshl_u32 v210, v63, s55, 1
	v_add_lshl_u32 v211, v64, s55, 1
	v_add_lshl_u32 v212, v65, s55, 1
	v_add_lshl_u32 v213, v66, s55, 1
	v_add_lshl_u32 v214, v67, s55, 1
	v_add_lshl_u32 v215, v68, s55, 1
	v_add_lshl_u32 v216, v69, s55, 1
	v_add_lshl_u32 v217, v70, s55, 1
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s40, 0xff800000, v131
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v86, v[9:10]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[9:12], v78 offset1:1
	ds_load_2addr_stride64_b64 v[16:19], v78 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[158:161], v81 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[142:149], v[9:10], v[25:26], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[150:157], v[11:12], v[25:26], v[134:141] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v81 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[186:193], v[16:17], v[25:26], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[194:201], v[18:19], v[25:26], v[134:141] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[16:19], v82 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[142:149], v[158:159], v[27:28], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[150:157], v[160:161], v[27:28], v[150:157] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[186:193], v[9:10], v[27:28], v[186:193] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[194:201], v[11:12], v[27:28], v[194:201] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v82 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[142:149], v[16:17], v[29:30], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[150:157], v[18:19], v[29:30], v[150:157] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[16:19], v83 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[186:193], v[9:10], v[29:30], v[186:193] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[194:201], v[11:12], v[29:30], v[194:201] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v83 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[142:149], v[16:17], v[31:32], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[150:157], v[18:19], v[31:32], v[150:157] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v16, v71, s55, 1
	v_add_lshl_u32 v18, v72, s55, 1
	v_add_lshl_u32 v19, v73, s55, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v165, v149
	v_cvt_f32_i32_e32 v180, v150
	v_cvt_f32_i32_e32 v172, v151
	v_cvt_f32_i32_e32 v173, v152
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v149, v74, s55, 1
	v_add_lshl_u32 v150, v75, s55, 1
	v_add_lshl_u32 v151, v76, s55, 1
	v_add_lshl_u32 v152, v77, s55, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v219, v144
	v_cvt_f32_i32_e32 v185, v145
	v_cvt_f32_i32_e32 v14, v147
	v_cvt_f32_i32_e32 v163, v148
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[186:193], v[9:10], v[31:32], v[186:193] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[194:201], v[11:12], v[31:32], v[194:201] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v9, s9, v24, 2
	v_add_lshl_u32 v10, s9, v126, 2
	v_add_lshl_u32 v12, s9, v127, 2
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s9, v174, v45
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v11, v146
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s6
	v_cndmask_b32_e64 v12, 0x80000000, v12, s4
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s9, s10
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v171, v153
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, vcc_lo, s5
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v166, v154
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v13, 0x80000000, v13, s5
	s_clause 0x3
	buffer_load_b32 v9, v9, s[60:63], 0 offen
	buffer_load_b32 v12, v12, s[60:63], 0 offen
	buffer_load_b32 v13, v13, s[60:63], 0 offen
	buffer_load_b32 v20, v10, s[60:63], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v167, v155
	v_cvt_f32_i32_e32 v168, v156
	v_cvt_f32_i32_e32 v169, v157
	v_cvt_f32_i32_e32 v170, v186
	v_cvt_f32_i32_e32 v162, v187
	v_cvt_f32_i32_e32 v154, v188
	v_cvt_f32_i32_e32 v146, v189
	v_cvt_f32_i32_e32 v141, v190
	v_cvt_f32_i32_e32 v144, v193
	v_cvt_f32_i32_e32 v145, v194
	v_cvt_f32_i32_e32 v17, v142
	v_cvt_f32_i32_e32 v218, v143
	v_cvt_f32_i32_e32 v142, v191
	v_cvt_f32_i32_e32 v143, v192
	v_cvt_f32_i32_e32 v134, v195
	v_cvt_f32_i32_e32 v136, v197
	v_cvt_f32_i32_e32 v137, v198
	v_cvt_f32_i32_e32 v138, v199
	v_cvt_f32_i32_e32 v139, v200
	v_cvt_f32_i32_e32 v140, v201
	v_cvt_f32_i32_e32 v135, v196
	v_mul_f32_e32 v185, v129, v185
	v_mul_f32_e32 v11, v129, v11
	v_mul_f32_e32 v141, v129, v141
	v_mul_f32_e32 v169, v129, v169
	v_mul_f32_e32 v146, v129, v146
	v_mul_f32_e32 v135, v129, v135
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v9, 0xff800000, v9, s2
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v10, 0xff800000, v12, s4
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v13, 0xff800000, v13, s5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v12, 0xff800000, v20, s6
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v20, s55, v41, 1
	s_clause 0x1f
	buffer_load_u16 v164, v175, s[64:67], 0 offen
	buffer_load_u16 v187, v176, s[64:67], 0 offen
	buffer_load_u16 v193, v177, s[64:67], 0 offen
	buffer_load_u16 v194, v178, s[64:67], 0 offen
	buffer_load_u16 v184, v179, s[64:67], 0 offen
	buffer_load_u16 v186, v181, s[64:67], 0 offen
	buffer_load_u16 v188, v182, s[64:67], 0 offen
	buffer_load_u16 v189, v183, s[64:67], 0 offen
	buffer_load_u16 v190, v202, s[64:67], 0 offen
	buffer_load_u16 v182, v203, s[64:67], 0 offen
	buffer_load_u16 v183, v204, s[64:67], 0 offen
	buffer_load_u16 v181, v205, s[64:67], 0 offen
	buffer_load_u16 v175, v206, s[64:67], 0 offen
	buffer_load_u16 v176, v207, s[64:67], 0 offen
	buffer_load_u16 v177, v208, s[64:67], 0 offen
	buffer_load_u16 v178, v209, s[64:67], 0 offen
	buffer_load_u16 v179, v210, s[64:67], 0 offen
	buffer_load_u16 v174, v211, s[64:67], 0 offen
	buffer_load_u16 v161, v212, s[64:67], 0 offen
	buffer_load_u16 v160, v213, s[64:67], 0 offen
	buffer_load_u16 v155, v214, s[64:67], 0 offen
	buffer_load_u16 v156, v215, s[64:67], 0 offen
	buffer_load_u16 v157, v216, s[64:67], 0 offen
	buffer_load_u16 v158, v217, s[64:67], 0 offen
	buffer_load_u16 v159, v16, s[64:67], 0 offen
	buffer_load_u16 v147, v18, s[64:67], 0 offen
	buffer_load_u16 v148, v19, s[64:67], 0 offen
	buffer_load_u16 v149, v149, s[64:67], 0 offen
	buffer_load_u16 v150, v150, s[64:67], 0 offen
	buffer_load_u16 v151, v151, s[64:67], 0 offen
	buffer_load_u16 v152, v152, s[64:67], 0 offen
	buffer_load_u16 v153, v20, s[64:67], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v16, 0, v47
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b64 v87, v[9:10], v[12:13] offset1:16
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v9
	v_cmp_neq_f32_e64 s8, 0xff800000, v10
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v20, v129, v17
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v12
	v_cmp_neq_f32_e64 s10, 0xff800000, v13
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[17:18], v16
	ds_load_b64 v[191:192], v88
	ds_load_b64 v[12:13], v89
	ds_load_b64 v[9:10], v90
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v14, v129, v14
	v_mul_f32_e32 v180, v129, v180
	v_mul_f32_e32 v168, v129, v168
	v_mul_f32_e32 v162, v129, v162
	v_mul_f32_e32 v154, v129, v154
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s7, s2, s7
	s_and_b32 s2, s4, s8
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v136, v129, v136
	v_mul_f32_e32 v137, v129, v137
	v_mul_f32_e32 v138, v129, v138
	v_mul_f32_e32 v139, v129, v139
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s4, s5, s10
	s_and_b32 s6, s6, s9
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s55, s55, 64
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s55, s72
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v19, 0x3fb8aa3b, v17
	v_mul_f32_e32 v17, 0x3fb8aa3b, v18
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v18, v129, v218
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v164, 16, v164
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt vmcnt(30)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v19, v20, v164 :: v_dual_lshlrev_b32 v20, 16, v187
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v164, 16, v193
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v187, 16, v194
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[194:195], v94
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v17, v18, v20 :: v_dual_mul_f32 v18, v129, v219
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v20, 0x3fb8aa3b, v191
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v191, v129, v163
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v163, 16, v184
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v20, v18, v164
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v18, 0x3fb8aa3b, v192
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_add_nc_u32_e32 v164, 0, v79
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v192, 16, v186
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v161, 16, v161
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v160, 16, v160
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v18, v185, v187 :: v_dual_add_nc_u32 v187, 0, v80
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v185, v129, v165
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v165, 0x3fb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v165, v11, v163
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[11:12], v91
	v_mul_f32_e32 v163, 0x3fb8aa3b, v13
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v186, 16, v189
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v189, 0x3fb8aa3b, v9
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v9, v129, v172
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v163, v14, v192
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b64 v[13:14], v92
	ds_load_b64 v[192:193], v93
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v188, 16, v188
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v189, v191, v188 :: v_dual_lshlrev_b32 v184, 16, v190
	v_mov_b32_e32 v188, v132
	.loc	1 884 24                        ; attention.py:884:24
	s_waitcnt lgkmcnt(2)
	v_dual_max_f32 v132, v133, v133 :: v_dual_mul_f32 v191, 0x3fb8aa3b, v11
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v11, 0x3fb8aa3b, v12 :: v_dual_lshlrev_b32 v12, 16, v182
	v_mul_f32_e32 v190, 0x3fb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v10, v129, v173 :: v_dual_fmac_f32 v191, v180, v184
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v184, 0, v85
	v_dual_mov_b32 v180, v15 :: v_dual_fmac_f32 v11, v9, v12
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v12, 0x3fb8aa3b, v13 :: v_dual_lshlrev_b32 v15, 16, v183
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v13, v129, v171
	v_dual_mul_f32 v173, v129, v170 :: v_dual_lshlrev_b32 v170, 16, v176
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v183, 16, v179
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v12, v10, v15
	v_mad_u64_u32 v[9:10], null, s11, s43, v[23:24]
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v10, 0x3fb8aa3b, v14 :: v_dual_mul_f32 v15, v129, v167
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v14, 16, v181
	v_lshlrev_b32_e32 v181, 16, v178
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[178:179], v97
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v190, v185, v186 :: v_dual_add_nc_u32 v185, 0, v84
	v_fmac_f32_e32 v10, v13, v14
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v13, v129, v166 :: v_dual_lshlrev_b32 v166, 16, v175
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v14, 0x3fb8aa3b, v192 :: v_dual_lshlrev_b32 v175, 16, v177
	ds_load_b64 v[176:177], v96
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v186.h, 0
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v14, v13, v166
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b64 v[166:167], v95
	v_mul_f32_e32 v13, 0x3fb8aa3b, v193
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v193, 16, v158
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v172.h, v186.h
	v_mov_b16_e64 v133.h, v186.h
	v_mov_b16_e64 v171.h, v186.h
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v13, v15, v170
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v15, 0x3fb8aa3b, v194 :: v_dual_mul_f32 v170, 0x3fb8aa3b, v195
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v15, v168, v175 :: v_dual_fmac_f32 v170, v169, v181
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[181:182], v98
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v169, 16, v174
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v174, 0x3fb8aa3b, v176
	v_mul_f32_e32 v176, 0x3fb8aa3b, v177
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v192, v129, v145 :: v_dual_mul_f32 v145, 0x3fb8aa3b, v178
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v175, 0x3fb8aa3b, v166 :: v_dual_fmac_f32 v174, v154, v161
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v142, v129, v142 :: v_dual_lshlrev_b32 v177, 16, v157
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v168.h, v186.h
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v175, v173, v183
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v173, 0x3fb8aa3b, v167
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v183, v129, v144
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v176, v146, v160
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v160, v129, v143
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v143, 16, v155
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v173, v162, v169 :: v_dual_lshlrev_b32 v144, 16, v156
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b64 v[156:157], v99
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v155, 0x3fb8aa3b, v181
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v145, v141, v143
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v143, 0x3fb8aa3b, v179
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v194, 16, v159
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[158:159], v100
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v179, v9, s43, 1
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v141, v188, v188
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v143, v142, v144 :: v_dual_mul_f32 v144, 0x3fb8aa3b, v182
	v_fmac_f32_e32 v155, v160, v177
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b64 v[177:178], v101
	ds_load_b64 v[181:182], v102
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_lshlrev_b32_e32 v160, 1, v9
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v9, v129, v134 :: v_dual_fmac_f32 v144, v183, v193
	v_mul_f32_e32 v140, v129, v140
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v134, 16, v147
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v147, 16, v148
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v148, 16, v149
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_dual_mul_f32 v156, 0x3fb8aa3b, v156 :: v_dual_lshlrev_b32 v149, 16, v150
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v183, 0x3fb8aa3b, v157 :: v_dual_lshlrev_b32 v150, 16, v151
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v156, v192, v194 :: v_dual_lshlrev_b32 v151, 16, v152
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v192, 0x3fb8aa3b, v158
	v_dual_mul_f32 v196, 0x3fb8aa3b, v159 :: v_dual_fmac_f32 v183, v9, v134
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_cndmask_b32_e64 v134, 0, 1, s7
	v_cndmask_b32_e64 v157, 0, 1, s4
	s_waitcnt lgkmcnt(0)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v199, 0x3fb8aa3b, v181
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v152, 16, v153
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v153, 0, 1, s2
	v_mov_b16_e64 v133.l, v134.l
	v_cndmask_b32_e64 v134, 0, 1, s6
	s_barrier
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v194, 0x3fb8aa3b, v177
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e64 v9.l, v153.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v200, 0x3fb8aa3b, v182
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v192, v135, v147
	v_fmac_f32_e32 v196, v136, v148
	v_fmac_f32_e32 v194, v137, v149
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_lshlrev_b16 v9.l, 8, v9.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v199, v139, v151 :: v_dual_fmac_f32 v200, v140, v152
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v139, 0x80000000, v160, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v137.h, v186.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v9.l, v133.l, v9.l
	v_mov_b16_e64 v133.l, v157.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v169.h, v186.h
	v_mov_b16_e64 v167.h, v186.h
	v_mov_b16_e64 v136.h, v186.h
	v_mov_b16_e64 v142.h, v186.h
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v9.h, 8, v133.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v161.h, v186.h
	v_mov_b16_e64 v135.h, v186.h
	v_mov_b16_e64 v146.h, v186.h
	v_mov_b16_e64 v154.h, v186.h
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v9.h, v134.l, v9.h
	ds_store_b16 v164, v9
	ds_store_b16_d16_hi v103, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v9, v187
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v9, v187 offset:32
	ds_load_u16_d16 v133, v104
	ds_load_u16_d16 v134, v104 offset:32
	ds_load_u16_d16 v135, v105
	ds_load_u16_d16 v136, v105 offset:32
	ds_load_u16_d16 v137, v106
	ds_load_u16_d16 v140, v106 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v140, v107
	ds_load_u16_d16 v142, v107 offset:32
	ds_load_u16_d16 v146, v108
	ds_load_u16_d16 v147, v108 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v147, v109
	ds_load_u16_d16 v148, v109 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v148, v110
	ds_load_u16_d16 v149, v110 offset:32
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v166.h, v186.h
	v_mov_b16_e64 v162.h, v186.h
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v134.h, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s16, 1, v134.h
	v_and_b16 v134.h, 1, v9.h
	v_and_b16 v9.l, 1, v9.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s5, 1, v134.h
	v_and_b16 v134.h, 1, v133.l
	v_cmp_eq_u16_e64 s24, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v9.h
	v_lshrrev_b16 v9.h, 8, v135.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s17, 1, v134.h
	v_and_b16 v134.h, 1, v134.l
	v_and_b16 v9.l, 1, v9.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b16 v9.h, 1, v9.h
	v_cmp_eq_u16_e64 s8, 1, v134.h
	v_and_b16 v134.h, 1, v135.l
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u16_e64 s23, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v133.l
	v_lshrrev_b16 v133.l, 8, v136.l
	v_lshrrev_b16 v135.l, 8, v140.l
	v_cmp_eq_u16_e64 s20, 1, v134.h
	v_and_b16 v134.h, 1, v136.l
	v_and_b16 v9.l, 1, v9.l
	v_lshrrev_b16 v136.l, 8, v140.h
	v_and_b16 v133.l, 1, v133.l
	v_and_b16 v135.l, 1, v135.l
	v_cmp_eq_u16_e64 s9, 1, v134.h
	v_and_b16 v134.h, 1, v137.l
	v_cmp_eq_u16_e64 s25, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v134.l
	v_lshrrev_b16 v134.l, 8, v137.l
	v_lshrrev_b16 v137.l, 8, v142.l
	v_cmp_eq_u16_e64 s22, 1, v134.h
	v_and_b16 v134.h, 1, v140.l
	v_lshrrev_b16 v140.l, 8, v146.l
	v_and_b16 v134.l, 1, v134.l
	v_and_b16 v136.l, 1, v136.l
	v_and_b16 v9.l, 1, v9.l
	v_cmp_eq_u16_e64 s10, 1, v134.h
	v_and_b16 v134.h, 1, v140.h
	v_lshrrev_b16 v140.h, 8, v147.l
	v_and_b16 v140.l, 1, v140.l
	v_and_b16 v137.l, 1, v137.l
	v_cmp_eq_u16_e64 s27, 1, v9.h
	v_cmp_eq_u16_e64 s15, 1, v134.h
	v_and_b16 v134.h, 1, v142.l
	v_lshrrev_b16 v142.l, 8, v147.h
	v_cmp_eq_u16_e64 s28, 1, v134.l
	v_cmp_eq_u16_e64 s29, 1, v136.l
	v_cmp_eq_u16_e64 s30, 1, v140.l
	v_cmp_eq_u16_e64 s11, 1, v134.h
	v_and_b16 v134.h, 1, v146.l
	v_and_b16 v142.l, 1, v142.l
	v_lshrrev_b16 v146.l, 8, v148.l
	v_cmp_eq_u16_e64 s26, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v152, 0xff800000, v165, s20
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s18, 1, v134.h
	v_and_b16 v134.h, 1, v147.l
	v_lshrrev_b16 v147.l, 8, v148.h
	v_cmp_eq_u16_e64 s31, 1, v142.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v157, 0xff800000, v189, s22
	v_cndmask_b32_e64 v164, 0xff800000, v12, s18
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s12, 1, v134.h
	v_and_b16 v134.h, 1, v147.h
	v_and_b16 v147.l, 1, v147.l
	v_lshrrev_b16 v147.h, 8, v149.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v151, 0xff800000, v18, s25
	v_cndmask_b32_e64 v189, 0xff800000, v175, s5
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s19, 1, v134.h
	v_and_b16 v134.h, 1, v148.l
	v_cmp_eq_u16_e64 s33, 1, v147.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v153, 0xff800000, v163, s27
	v_cndmask_b32_e64 v158, 0xff800000, v190, s28
	v_cndmask_b32_e64 v177, 0xff800000, v14, s19
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s13, 1, v134.h
	v_and_b16 v134.h, 1, v148.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v148, 0xff800000, v19, s16
	v_cndmask_b32_e64 v160, 0xff800000, v11, s29
	v_cndmask_b32_e64 v165, 0xff800000, v10, s30
	v_cndmask_b32_e64 v182, 0xff800000, v170, s33
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s21, 1, v134.h
	v_and_b16 v134.h, 1, v149.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v149, 0xff800000, v17, s24
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v198, 0x3fb8aa3b, v178
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v178, 0xff800000, v13, s31
	v_cndmask_b32_e64 v181, 0xff800000, v15, s21
	v_cndmask_b32_e64 v190, 0xff800000, v173, s23
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s34, 1, v133.l
	v_cmp_eq_u16_e64 s35, 1, v135.l
	v_cmp_eq_u16_e64 s36, 1, v137.l
	v_and_b16 v140.h, 1, v140.h
	v_and_b16 v146.l, 1, v146.l
	v_and_b16 v147.h, 1, v147.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v159, 0xff800000, v191, s15
	v_cndmask_b32_e64 v174, 0xff800000, v174, s8
	v_cndmask_b32_e64 v191, 0xff800000, v145, s9
	v_cndmask_b32_e64 v155, 0xff800000, v155, s10
	v_cndmask_b32_e64 v193, 0xff800000, v156, s11
	v_cndmask_b32_e64 v195, 0xff800000, v192, s12
	v_cndmask_b32_e64 v197, 0xff800000, v194, s13
	v_cndmask_b32_e64 v175, 0xff800000, v176, s26
	v_cndmask_b32_e64 v192, 0xff800000, v143, s34
	v_cndmask_b32_e64 v156, 0xff800000, v144, s35
	v_cndmask_b32_e64 v194, 0xff800000, v183, s36
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v9, v160, v164, v165
	v_max3_f32 v10, v177, v178, v181
	v_max3_f32 v11, v182, v189, v190
	v_dual_max_f32 v17, v148, v149 :: v_dual_fmac_f32 v198, v138, v150
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v150, 0xff800000, v20, s17
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v18, v151, v152, v153
.Ltmp4:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s14, 1, v134.h
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v138, 0x80000000, v179, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s37, 1, v140.h
	v_cmp_eq_u16_e64 s38, 1, v146.l
	v_cmp_eq_u16_e64 s39, 1, v147.h
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v13, v174, v175, v191
	v_max3_f32 v14, v192, v155, v156
	v_max3_f32 v15, v193, v194, v195
	v_max3_f32 v19, v157, v158, v159
	v_max3_f32 v20, v9, v10, v11
	v_max3_f32 v17, v17, v150, v18
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v199, 0xff800000, v199, s14
	v_cndmask_b32_e64 v196, 0xff800000, v196, s37
	v_cndmask_b32_e64 v198, 0xff800000, v198, s38
	v_cndmask_b32_e64 v200, 0xff800000, v200, s39
	ds_store_b64 v16, v[148:149]
	ds_store_b64 v88, v[150:151]
	ds_store_b64 v89, v[152:153]
	ds_store_b64 v90, v[157:158]
	ds_store_b64 v91, v[159:160]
	ds_store_b64 v92, v[164:165]
	ds_store_b64 v93, v[177:178]
	ds_store_b64 v94, v[181:182]
	ds_store_b64 v95, v[189:190]
	ds_store_b64 v96, v[174:175]
	ds_store_b64 v97, v[191:192]
	ds_store_b64 v98, v[155:156]
	ds_store_b64 v99, v[193:194]
	ds_store_b64 v100, v[195:196]
	ds_store_b64 v101, v[197:198]
	ds_store_b64 v102, v[199:200]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v144, v13, v14, v15
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[13:16], v139, s[68:71], 0 offen
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v139, v17, v19, v20
.Ltmp10:
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[17:20], v138, s[68:71], 0 offen
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v140, v196, v197 :: v_dual_max_f32 v143, v199, v200
.Ltmp12:
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_2addr_b64 v[9:12], v87 offset1:16
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v134.h, v186.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v138, v140, v198, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v138, v139, v144, v138
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v139, v138, s74, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp15:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v138, v131, v138, v139
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v140, v11, v11 :: v_dual_max_f32 v143, v9, v9
.Ltmp17:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v145, v151, v138
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v151, v131, v138
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v147, v152, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v139, v143, v140 :: v_dual_sub_f32 v140, v149, v138
.Ltmp19:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v143, v148, v138
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v151, v151
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v187, v199, v138
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v139, v139, v10, v12
.Ltmp21:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v131, v140
	v_exp_f32_e32 v140, v143
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v149, v157, v138
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v187, v187
.Ltmp22:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v143, v139
.Ltmp23:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v179, v195, v138
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v147, v147
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v151, 0, v151, s40
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v144, v150, v138
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v143, v143 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v148, v153, v138
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_sub_f32 v153, v160, v138 :: v_dual_mul_f32 v2, v2, v151
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v151
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v144, v144
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v143, v143, v143
.Ltmp27:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v187, 0, v187, s14
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v160, v178, v138
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v140, 0, v140, s16
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v157, v164, v138 :: v_dual_mul_f32 v6, v6, v151
.Ltmp28:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v139, v139, v143
.Ltmp29:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v173, v174, v138
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v149, v149
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v144, 0, v144, s17
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v137.l, v187.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v150, v158, v138 :: v_dual_mul_f32 v5, v5, v151
	v_dual_sub_f32 v158, v165, v138 :: v_dual_mul_f32 v7, v7, v151
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v172.l, v144.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v164, v182, v138
	v_dual_sub_f32 v182, v197, v138 :: v_dual_and_b32 v137, 1, v137
	v_dual_sub_f32 v163, v181, v138 :: v_dual_mul_f32 v8, v8, v151
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v133.l, v140.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v152, v159, v138
	v_dual_sub_f32 v159, v177, v138 :: v_dual_mul_f32 v4, v4, v151
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v151
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v151, 1, v172
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v172, v139
.Ltmp31:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v173, v173
	v_exp_f32_e32 v157, v157
	v_exp_f32_e32 v182, v182
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v149, 0, v149, s22
.Ltmp32:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v172, v172 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v155, v155, v138
	v_sub_f32_e32 v177, v193, v138
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v145, v145
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v168.l, v149.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v165, v189, v138
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v173, 0, v173, s8
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v155, v155
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v157, 0, v157, s18
	v_cndmask_b32_e64 v182, 0, v182, s13
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v179, v179
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v169.l, v173.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v156, v156, v138
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v167.l, v157.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v174, v175, v138
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v136.l, v182.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v175, v191, v138 :: v_dual_and_b32 v168, 1, v168
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v165, v165
	v_exp_f32_e32 v177, v177
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v131, 0, v131, s24
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v169, 1, v169
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v156, v156
	v_exp_f32_e32 v148, v148
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v155, 0, v155, s10
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v136, 1, v136
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v175, v175
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v147, 0, v147, s20
	v_cndmask_b32_e64 v145, 0, v145, s25
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v186.l, v131.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v150, v150
	v_exp_f32_e32 v163, v163
	v_exp_f32_e32 v164, v164
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v165, 0, v165, s5
	v_cndmask_b32_e64 v179, 0, v179, s12
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v142.l, v155.h
	v_mov_b16_e64 v171.l, v147.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v170, v190, v138
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v190, 0, v156, s35
	v_cndmask_b32_e64 v156, 0, v177, s11
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v143, 1, v186
	v_and_b32_e32 v133, 1, v133
	v_mov_b16_e64 v186.l, v145.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v152, v152
	v_exp_f32_e32 v153, v153
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v148, 0, v148, s27
	v_cndmask_b32_e64 v175, 0, v175, s9
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v161.l, v165.h
	v_mov_b16_e64 v135.l, v179.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v178, v194, v138 :: v_dual_and_b32 v167, 1, v167
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v174, v174
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v142, 1, v142
	v_cmp_o_f32_e64 s11, v140, v140
	v_mov_b16_e64 v134.l, v156.h
	v_add3_u32 v133, v140, v133, 0x7fff
	v_add3_u32 v140, v144, v151, 0x7fff
	v_and_b32_e32 v151, 1, v186
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v176, v192, v138 :: v_dual_and_b32 v161, 1, v161
	v_sub_f32_e32 v181, v196, v138
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v158, v158
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v150, 0, v150, s28
	v_cndmask_b32_e64 v163, 0, v163, s21
	v_cndmask_b32_e64 v164, 0, v164, s33
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v131, v131
	v_cmp_o_f32_e64 s12, v144, v144
	v_mov_b16_e64 v146.l, v175.h
	v_cmp_o_f32_e64 s33, v155, v155
	v_and_b32_e32 v171, 1, v171
	v_and_b32_e32 v135, 1, v135
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v178, v178
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v131, v131, v143, 0x7fff
	v_mov_b16_e64 v186.l, v148.h
	v_add3_u32 v142, v155, v142, 0x7fff
	v_and_b32_e32 v134, 1, v134
	v_cndmask_b16 v131.l, 0x7fff, v133.h, s11
	v_add3_u32 v133, v145, v151, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v183, v198, v138
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v181, v181
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v152, 0, v152, s15
	v_cndmask_b32_e64 v153, 0, v153, s29
	v_cndmask_b32_e64 v174, 0, v174, s26
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s13, v147, v147
	v_cmp_o_f32_e64 s14, v149, v149
	v_cmp_o_f32_e64 s15, v145, v145
	v_cmp_o_f32_e64 s20, v157, v157
	v_mov_b16_e64 v154.l, v163.h
	v_cmp_o_f32_e64 s26, v165, v165
	v_and_b32_e32 v146, 1, v146
	v_add3_u32 v143, v147, v171, 0x7fff
	v_add3_u32 v144, v149, v168, 0x7fff
	v_add3_u32 v149, v157, v167, 0x7fff
	v_add3_u32 v157, v165, v161, 0x7fff
	v_cndmask_b16 v131.h, 0x7fff, v131.h, s10
	v_cndmask_b16 v133.l, 0x7fff, v140.h, s12
	v_and_b32_e32 v140, 1, v186
	v_mov_b16_e64 v186.l, v150.h
	v_cndmask_b16 v165.l, 0x7fff, v142.h, s33
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v142, v172, v172
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v134, v156, v134, 0x7fff
	v_add3_u32 v135, v179, v135, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v159, v159
	v_exp_f32_e32 v183, v183
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v158, 0, v158, s30
	v_cndmask_b32_e64 v178, 0, v178, s36
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s16, v148, v148
	v_cmp_o_f32_e64 s30, v175, v175
	v_cmp_o_f32_e64 s36, v156, v156
	v_and_b32_e32 v154, 1, v154
	v_add3_u32 v146, v175, v146, 0x7fff
	v_cndmask_b16 v134.l, 0x7fff, v143.h, s13
	v_cndmask_b16 v135.l, 0x7fff, v144.h, s14
	v_permlanex16_b32 v143, v131, s74, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v133.h, 0x7fff, v133.h, s15
	v_add3_u32 v140, v148, v140, 0x7fff
	v_and_b32_e32 v144, 1, v186
	v_mov_b16_e64 v186.l, v153.h
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v139, v139, v142
.Ltmp37:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v177, 0, v181, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s17, v150, v150
	v_cmp_o_f32_e64 s24, v163, v163
	v_cmp_o_f32_e64 s37, v179, v179
	v_add3_u32 v154, v163, v154, 0x7fff
	v_cndmask_b16 v163.l, 0x7fff, v146.h, s30
	v_cndmask_b16 v175.l, 0x7fff, v134.h, s36
	v_perm_b32 v142, v143, v131, v111
	v_perm_b32 v143, v143, v131, v128
	v_permlanex16_b32 v131, v133, s74, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v134.h, 0x7fff, v140.h, s16
	v_add3_u32 v140, v150, v144, 0x7fff
	v_and_b32_e32 v146, 1, v186
	v_mov_b16_e64 v186.l, v158.h
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v148, v139
.Ltmp39:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v159, 0, v159, s19
	v_cndmask_b32_e64 v181, 0, v183, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v166.l, v152.h
	v_cmp_o_f32_e64 s19, v153, v153
	v_cmp_o_f32_e64 s38, v182, v182
	v_add3_u32 v136, v182, v136, 0x7fff
	v_cndmask_b16 v179.l, 0x7fff, v135.h, s37
	v_perm_b32 v144, v131, v133, v111
	v_perm_b32 v145, v131, v133, v128
	v_cndmask_b16 v135.h, 0x7fff, v140.h, s17
	v_add3_u32 v133, v153, v146, 0x7fff
	v_and_b32_e32 v140, 1, v186
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v148, v148 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v197.l, 0x7fff, v136.h, s38
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v160, v160
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v136.h, 0x7fff, v133.h, s19
	v_add3_u32 v133, v158, v140, 0x7fff
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v140, v148, v148
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v166, 1, v166
	v_cmp_o_f32_e64 s18, v152, v152
	v_permlanex16_b32 v131, v134, s74, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v189, v200, v138
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v170, v170
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v147, v152, v166, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v160, 0, v160, s31
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v146, v131, v134, v111
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v189, v189
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v137, v187, v137, 0x7fff
	v_cndmask_b16 v136.l, 0x7fff, v147.h, s18
	v_perm_b32 v147, v131, v134, v128
	v_permlanex16_b32 v131, v135, s74, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v137.l, 0x7fff, v149.h, s20
	v_mov_b16_e64 v186.l, v160.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v176, v176
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v170, 0, v170, s23
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_perm_b32 v148, v131, v135, v111
	v_perm_b32 v149, v131, v135, v128
	v_permlanex16_b32 v131, v136, s74, 0xfedcba98 op_sel:[1,0]
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v135, v139, v140
.Ltmp45:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v183, 0, v189, s39
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v158, v158
	v_cmp_o_f32_e64 s39, v187, v187
	v_perm_b32 v150, v131, v136, v111
	v_perm_b32 v151, v131, v136, v128
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v136, v135
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v134, 1, v186
	v_mov_b16_e64 v186.l, v164.h
	v_mov_b16_e64 v162.l, v159.h
	v_cmp_o_f32_e64 s23, v160, v160
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v136, v136 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v198.l, 0x7fff, v137.h, s39
	v_cndmask_b16 v137.h, 0x7fff, v133.h, s21
	v_add3_u32 v133, v160, v134, 0x7fff
	v_and_b32_e32 v134, 1, v186
	v_mov_b16_e64 v186.l, v170.h
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v136, v136, v136
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v162, 1, v162
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v176, 0, v176, s34
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s25, v164, v164
	v_cndmask_b16 v155.h, 0x7fff, v133.h, s23
	v_add3_u32 v133, v164, v134, 0x7fff
	v_and_b32_e32 v134, 1, v186
	v_mov_b16_e64 v186.l, v174.h
	v_cmp_o_f32_e64 s22, v159, v159
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v135, v135, v136
.Ltmp53:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v152, v159, v162, 0x7fff
	v_add3_u32 v159, v173, v169, 0x7fff
	v_cmp_o_f32_e64 s27, v170, v170
	v_cmp_o_f32_e64 s28, v173, v173
	v_cndmask_b16 v159.l, 0x7fff, v157.h, s26
	v_cndmask_b16 v157.h, 0x7fff, v133.h, s25
	v_add3_u32 v133, v170, v134, 0x7fff
	v_and_b32_e32 v134, 1, v186
	v_mov_b16_e64 v186.l, v176.h
	v_cmp_o_f32_e64 s29, v174, v174
	v_cndmask_b16 v161.l, 0x7fff, v159.h, s28
	v_cndmask_b16 v159.h, 0x7fff, v133.h, s27
	v_add3_u32 v133, v174, v134, 0x7fff
	v_and_b32_e32 v134, 1, v186
	v_cmp_o_f32_e64 s31, v176, v176
	v_mov_b16_e64 v186.l, v190.h
	v_cndmask_b16 v155.l, 0x7fff, v152.h, s22
	v_cndmask_b16 v161.h, 0x7fff, v133.h, s29
	v_add3_u32 v133, v176, v134, 0x7fff
	v_permlanex16_b32 v131, v137, s74, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v134, 1, v186
	v_mov_b16_e64 v186.l, v178.h
	v_cmp_o_f32_e64 s35, v178, v178
	v_cndmask_b16 v163.h, 0x7fff, v133.h, s31
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v133, v132, v135
	v_max_f32_e32 v132, v141, v135
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v157.l, 0x7fff, v154.h, s24
	v_perm_b32 v152, v131, v137, v111
	v_perm_b32 v153, v131, v137, v128
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v9, v9, v133
	v_sub_f32_e32 v11, v11, v133
	v_sub_f32_e32 v10, v10, v133
	v_sub_f32_e32 v12, v12, v133
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v131, v155, s74, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v9, v9
	v_exp_f32_e32 v11, v11
	v_exp_f32_e32 v10, v10
	v_exp_f32_e32 v12, v12
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v177, v177
	v_perm_b32 v154, v131, v155, v111
	v_perm_b32 v155, v131, v155, v128
	v_permlanex16_b32 v131, v157, s74, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s34, v190, v190
	v_add3_u32 v134, v190, v134, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v9, 0, v9, s7
	v_cndmask_b32_e64 v11, 0, v11, s6
	v_cndmask_b32_e64 v10, 0, v10, s2
	v_cndmask_b32_e64 v12, 0, v12, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v156, v131, v157, v111
	v_perm_b32 v157, v131, v157, v128
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v11
.Ltmp55:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v131, v159, s74, 0xfedcba98 op_sel:[1,0]
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v10, v10, v12
.Ltmp57:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v165.h, 0x7fff, v134.h, s34
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v11.l, v15.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v11.h, v19.l
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v158, v131, v159, v111
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v10
.Ltmp59:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v135, 1, v186
	v_mov_b16_e64 v186.l, v177.h
	v_perm_b32 v159, v131, v159, v128
	v_permlanex16_b32 v131, v161, s74, 0xfedcba98 op_sel:[1,0]
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v10, v9
.Ltmp61:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v135, v178, v135, 0x7fff
	v_and_b32_e32 v136, 1, v186
	v_mov_b16_e64 v186.l, v181.h
	v_perm_b32 v160, v131, v161, v111
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v175.h, 0x7fff, v135.h, s35
	v_add3_u32 v135, v177, v136, 0x7fff
	v_and_b32_e32 v136, 1, v186
	v_mov_b16_e64 v186.l, v183.h
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v10
.Ltmp65:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v161, v131, v161, v128
	v_cndmask_b16 v179.h, 0x7fff, v135.h, s9
	v_permlanex16_b32 v131, v163, s74, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v10, v9 :: v_dual_and_b32 v135, 1, v186
.Ltmp67:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v12.l, v16.l
	v_mov_b16_e32 v12.h, v20.l
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v162, v131, v163, v111
	v_perm_b32 v163, v131, v163, v128
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v131, v165, s74, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v19.l, v15.h
	v_mov_b16_e32 v20.l, v16.h
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s8, v181, v181
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v137, v9, v10
.Ltmp71:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v9.l, v13.l
	v_mov_b16_e32 v9.h, v17.l
	v_mov_b16_e32 v17.l, v13.h
	v_mov_b16_e32 v10.l, v14.l
	v_mov_b16_e32 v10.h, v18.l
	v_mov_b16_e32 v18.l, v14.h
	ds_store_b32 v185, v9
	ds_store_b32 v112, v17
	ds_store_b32 v113, v10
	ds_store_b32 v114, v18
	ds_store_b32 v115, v11
	ds_store_b32 v116, v19
	ds_store_b32 v117, v12
	ds_store_b32 v118, v20
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v184
	ds_load_b128 v[13:16], v119
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v134, v188, v132
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v164, v131, v165, v111
	v_perm_b32 v165, v131, v165, v128
	v_add3_u32 v131, v181, v136, 0x7fff
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v17, v137
.Ltmp73:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[166:169], v120
	ds_load_b128 v[170:173], v121
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v183, v183
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v134, v134
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cmp_neq_f32_e64 s10, 0xff800000, v188
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v197.h, 0x7fff, v131.h, s8
	v_add3_u32 v131, v183, v135, 0x7fff
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[181:184], v122
	ds_load_b128 v[185:188], v123
	ds_load_b128 v[189:192], v124
	ds_load_b128 v[193:196], v125
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v136, v175, s74, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v198.h, 0x7fff, v131.h, s5
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v17, v137, v17
.Ltmp77:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v18, 0, v134, s10
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v135, v179, s74, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[142:149], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v9, v197, s74, 0xfedcba98 op_sel:[1,0]
.Ltmp78:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v10, v17
.Ltmp79:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v11, v198, s74, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v139, v136, v175, v111
	v_perm_b32 v140, v136, v175, v128
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[166:173], v[150:157], v[1:8]
.Ltmp80:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v141, v135, v179, v111
	v_perm_b32 v142, v135, v179, v128
	v_perm_b32 v143, v9, v197, v111
	v_perm_b32 v144, v9, v197, v128
	v_perm_b32 v145, v11, v198, v111
	v_perm_b32 v146, v11, v198, v128
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v15, v17, v10
.Ltmp83:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[181:188], v[158:165], v[1:8]
	v_mov_b32_e32 v131, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v15, v180, v18
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[189:196], v[139:146], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v132, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v15, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v38
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshrrev_b32_e32 v10, 3, v0
	s_mov_b32 s1, 0x76543210
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
.Ltmp85:
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v9, 0xff800000, v132 :: v_dual_and_b32 v10, 28, v10
	.loc	1 1038 13                       ; attention.py:1038:13
	v_lshrrev_b32_e32 v21, 5, v0
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s54, s54, s3
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s43, 2
.Ltmp86:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v11, v9, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp87:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v12, 0, v15
.Ltmp88:
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v37
	.loc	1 1036 13                       ; attention.py:1036:13
	v_or_b32_e32 v21, v21, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp89:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_add_nc_u32 v10, 0, v10
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v13, v12, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp91:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v2, 0, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp92:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v11
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshl_add_u32 v11, v39, 2, 0
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v12, v12, v13 :: v_dual_cndmask_b32 v3, 0, v3
.Ltmp95:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s41, s54
.Ltmp96:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v10, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v11
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v10, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v11
.Ltmp98:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v12, 0, v4, vcc_lo
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v4, v1 :: v_dual_cndmask_b32 v13, 0, v5
	v_dual_mov_b32 v5, v2 :: v_dual_cndmask_b32 v14, 0, v6
	v_mov_b32_e32 v11, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp102:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v15, 0, v7, vcc_lo
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v8, 0, v8, vcc_lo
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v14
.Ltmp104:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v9
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v5
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v8
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v4
	v_dual_add_f32 v3, v3, v11 :: v_dual_max_f32 v4, v9, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_add_f32 v14, v14, v18
.Ltmp111:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v5, v10
.Ltmp113:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
.Ltmp114:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v4, v4, v6 :: v_dual_mov_b32 v7, v1
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v15, v19 :: v_dual_add_f32 v8, v8, v20
.Ltmp117:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v5, v10, v5
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v8
.Ltmp121:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp124:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v9, v2 :: v_dual_mov_b32 v10, v1
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v11, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp128:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v4, v6
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v3, v3, v11
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v11, v2 :: v_dual_add_f32 v4, v3, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp131:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v7, v5 :: v_dual_mov_b32 v16, v12
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v3, v1 :: v_dual_mov_b32 v6, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp133:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v11
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp135:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp136:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v5, v7
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v5, v2 :: v_dual_add_f32 v12, v12, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v17, v13 :: v_dual_mov_b32 v10, v7
.Ltmp138:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v11, v9 :: v_dual_mov_b32 v16, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp140:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp141:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_add_f32 v12, v12, v16
	v_mov_b32_e32 v17, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v14, v18
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v16, v12 :: v_dual_add_f32 v13, v13, v17
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v17, v15, v19 :: v_dual_add_f32 v18, v8, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v14
	v_mov_b32_e32 v15, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v22, v18
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v12, v16
.Ltmp150:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp152:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp153:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v14, v19 :: v_dual_mov_b32 v12, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v16, v17, v20
.Ltmp154:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v14, v13 :: v_dual_add_f32 v17, v18, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v18, v15
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v19, v16
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp155:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp156:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v11, v11, v11
	v_dual_max_f32 v9, v9, v9 :: v_dual_add_f32 v10, v7, v10
.Ltmp157:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
	v_mov_b32_e32 v7, 0
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp158:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v11
.Ltmp159:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s52, s4
	s_addc_u32 s5, s53, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v7, v[9:10], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp160:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v13, v14 :: v_dual_lshlrev_b32 v9, 2, v0
	v_add_f32_e32 v15, v15, v18
	v_dual_add_f32 v6, v4, v6 :: v_dual_add_f32 v5, v2, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_add_f32 v7, v8, v12 :: v_dual_and_b32 v2, 0xc0, v9
.Ltmp161:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v8, 0xe0, v34
.Ltmp162:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v1, v3 :: v_dual_and_b32 v1, 28, v34
.Ltmp163:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 32, v36
	v_add_nc_u32_e32 v2, 0, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v8, 0, v8
.Ltmp164:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v17, v17, v20 :: v_dual_add_f32 v16, v16, v19
.Ltmp165:
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v0, 63, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v1, v2, v3, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[4:7]
	ds_store_b128 v8, v[14:17] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v0
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s43, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	v_cmp_eq_u32_e64 s0, 0, v33
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s55, 0x31027000
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s54, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[52:55], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp166:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 220
		.amdhsa_next_free_sgpr 76
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_vgpr, 220
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.numbered_sgpr, 76
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10188
; TotalNumSgprs: 78
; NumVgprs: 220
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 78
; NumVGPRsForWavesPerEU: 220
; Occupancy: 6
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
	.short	1031                            ; DW_AT_call_line
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
	.short	1032                            ; DW_AT_call_line
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     78
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     220
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
