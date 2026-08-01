	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
	v_and_b32_e32 v36, 15, v0
	v_lshrrev_b32_e32 v3, 4, v0
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v31, 0xc0, v0
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v2, 1, v36
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v32, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v35, 31, v0
	v_and_b32_e32 v38, 0xf0, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v39, 3, v0
	.loc	1 889 86                        ; attention.py:889:86
	v_and_b32_e32 v37, 7, v0
	v_lshlrev_b32_e32 v34, 2, v0
	v_lshlrev_b32_e32 v33, 5, v0
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
	s_lshl_b32 s13, s7, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s54
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s12, s13, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v9, s13, v3
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v1, s12, v3
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s41, s2, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 1, v9
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[4:5], null, v1, s42, v[2:3]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s4, s4, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v4, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s54, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v4, 3, v31
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s54
	s_abs_i32 s4, s4
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_u16 v1, v1, s[56:59], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s6, s4, s6
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v4, v32, v4, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s2, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s8
	s_sub_i32 s2, s2, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s4, s41, s2
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s55, s4, 6
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s55, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s72, s2, 0x800
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_ge_i32 s55, s72
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v4, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v1, s13, v36
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v4, s12, v36, 1
	v_dual_mov_b32 v25, 0x7632 :: v_dual_and_b32 v6, 24, v32
	.loc	1 822 49                        ; attention.py:822:49
	v_lshlrev_b32_e32 v12, 3, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e64 s2, 1, v1
	v_dual_mov_b32 v116, 0xff800000 :: v_dual_and_b32 v13, 30, v0
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s73, s3, 11
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v5, v0, 4, 1
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v4, s2
	v_dual_mov_b32 v115, 0xff800000 :: v_dual_lshlrev_b32 v4, 3, v37
	v_dual_mov_b32 v24, 0x5410 :: v_dual_lshlrev_b32 v11, 2, v36
	v_lshrrev_b32_e32 v7, 1, v0
	v_lshlrev_b32_e32 v26, 4, v0
	v_or3_b32 v41, s73, v3, 62
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v28, v36, 5, v6
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s57, s9, 0xffff
	s_mov_b32 s56, s8
	v_lshlrev_b32_e32 v50, 1, v13
	buffer_load_u16 v10, v1, s[56:59], 0 offen
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v8, 0xe0, v0
	v_lshlrev_b32_e32 v17, 3, v35
	v_lshlrev_b32_e32 v18, 3, v36
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x68
	s_load_b64 s[60:61], s[0:1], 0x30
	v_mov_b32_e32 v3, v1
	v_lshrrev_b32_e32 v30, 3, v8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[22:23], null, s43, v39, v[4:5]
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	v_lshrrev_b32_e32 v19, 1, v38
	v_dual_mov_b32 v6, v1 :: v_dual_and_b32 v27, 0x60, v0
	s_add_i32 s1, s3, s0
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s43, v4
	v_and_b32_e32 v29, 24, v7
	v_dual_mov_b32 v4, v1 :: v_dual_add_nc_u32 v47, 0, v26
	v_lshl_or_b32 v45, v36, 8, v17
	v_mov_b32_e32 v7, v1
	v_lshl_or_b32 v17, v38, 4, v18
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v23, 8, v28
	v_xor_b32_e32 v26, 24, v28
	v_xor_b32_e32 v49, v34, v30
	v_lshl_or_b32 v50, v35, 6, v50
	v_lshlrev_b32_e32 v16, 6, v0
	.loc	1 822 49                        ; attention.py:822:49
	v_and_b32_e32 v21, 24, v12
	v_add3_u32 v46, 0, v2, v27
	v_mov_b32_e32 v18, v1
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v48, 0, v28
	v_xor_b32_e32 v12, v12, v29
	v_xor_b32_e32 v27, 40, v45
	v_xor_b32_e32 v29, 56, v45
	v_xor_b32_e32 v30, 64, v45
	v_xor_b32_e32 v17, v17, v19
	v_add_nc_u32_e32 v66, 0, v23
	v_add_nc_u32_e32 v68, 0, v26
	v_xor_b32_e32 v23, 0x420, v49
	v_xor_b32_e32 v26, 12, v50
	v_dual_mov_b32 v117, 0xff800000 :: v_dual_lshlrev_b32 v14, 1, v31
	v_dual_mov_b32 v2, v1 :: v_dual_and_b32 v15, 0x380, v33
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v43, 0x800, v5
	v_or_b32_e32 v44, s73, v5
	v_dual_mov_b32 v5, v1 :: v_dual_and_b32 v16, 64, v16
	v_add_nc_u32_e32 v74, 0, v27
	v_add_nc_u32_e32 v76, 0, v29
	v_add_nc_u32_e32 v77, 0, v30
	v_add_nc_u32_e32 v86, 0, v23
	v_add_nc_u32_e32 v89, 0, v26
	v_lshrrev_b32_e32 v51, 4, v8
	v_lshl_or_b32 v14, v35, 2, v14
	v_or3_b32 v52, v16, v15, v13
	v_xor_b32_e32 v13, 8, v45
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s8, s1, -8
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v9, v9, s15
	v_xor_b32_e32 v51, v14, v51
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s9, s1, 3
	v_add_nc_u32_e32 v70, 0, v13
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s8, s3, s8
	v_xor_b32_e32 v14, 16, v45
	v_xor_b32_e32 v15, 24, v45
	v_xor_b32_e32 v16, 32, v45
	v_xor_b32_e32 v78, 0x48, v45
	v_xor_b32_e32 v79, 0x50, v45
	v_xor_b32_e32 v80, 0x58, v45
	v_xor_b32_e32 v81, 0x60, v45
	v_xor_b32_e32 v82, 0x68, v45
	v_xor_b32_e32 v83, 0x70, v45
	v_xor_b32_e32 v84, 0x78, v45
	v_xor_b32_e32 v90, 16, v50
	v_xor_b32_e32 v91, 20, v50
	v_xor_b32_e32 v92, 24, v50
	v_xor_b32_e32 v93, 28, v50
	v_xor_b32_e32 v94, 32, v50
	v_xor_b32_e32 v95, 36, v50
	v_xor_b32_e32 v96, 40, v50
	v_xor_b32_e32 v97, 44, v50
	v_xor_b32_e32 v98, 48, v50
	v_xor_b32_e32 v99, 52, v50
	v_xor_b32_e32 v100, 56, v50
	v_xor_b32_e32 v101, 60, v50
	v_xor_b32_e32 v102, 0x210, v51
	v_xor_b32_e32 v103, 4, v52
	v_xor_b32_e32 v104, 8, v52
	v_xor_b32_e32 v105, 12, v52
	v_xor_b32_e32 v106, 16, v52
	v_xor_b32_e32 v107, 20, v52
	v_xor_b32_e32 v108, 24, v52
	v_xor_b32_e32 v109, 28, v52
	v_add_nc_u32_e32 v69, 0, v12
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v40, 2, v0
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v42, 0x800, v11
	v_mov_b32_e32 v8, v1
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e64 s1, s42, v21
	v_or_b32_e32 v53, 34, v44
	v_or_b32_e32 v54, 36, v44
	v_or_b32_e32 v55, 38, v44
	v_or_b32_e32 v56, 40, v44
	v_or_b32_e32 v57, 42, v44
	v_or_b32_e32 v58, 44, v44
	v_or_b32_e32 v59, 46, v44
	v_or_b32_e32 v60, 48, v44
	v_or_b32_e32 v61, 50, v44
	v_or_b32_e32 v62, 52, v44
	v_or_b32_e32 v63, 54, v44
	v_or_b32_e32 v64, 56, v44
	v_or_b32_e32 v65, 58, v44
	v_add_nc_u32_e32 v71, 0, v14
	v_add_nc_u32_e32 v72, 0, v15
	v_add_nc_u32_e32 v73, 0, v16
	v_add_nc_u32_e32 v78, 0, v78
	v_add_nc_u32_e32 v79, 0, v79
	v_add_nc_u32_e32 v80, 0, v80
	v_add_nc_u32_e32 v81, 0, v81
	v_add_nc_u32_e32 v82, 0, v82
	v_add_nc_u32_e32 v83, 0, v83
	v_add_nc_u32_e32 v84, 0, v84
	v_add_nc_u32_e32 v85, 0, v17
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
	v_add_nc_u32_e32 v103, 0, v103
	v_add_nc_u32_e32 v104, 0, v104
	v_add_nc_u32_e32 v105, 0, v105
	v_add_nc_u32_e32 v106, 0, v106
	v_add_nc_u32_e32 v107, 0, v107
	v_add_nc_u32_e32 v108, 0, v108
	v_add_nc_u32_e32 v109, 0, v109
	v_or_b32_e32 v114, 60, v44
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s74, s43, 5
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s75, 0x76543210
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
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v10
	v_and_b32_e32 v20, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u32_e64 s2, 0, v20
	v_cndmask_b32_e64 v20, 0x1054, v24, s2
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v24, 16, v28
	v_xor_b32_e32 v28, 48, v45
	v_cndmask_b32_e64 v19, 0x3276, v25, s2
	v_xor_b32_e32 v25, 8, v50
	v_lshl_or_b32 v20, v20, 8, v20
	v_add_nc_u32_e32 v67, 0, v24
	v_xor_b32_e32 v24, 4, v50
	v_add_nc_u32_e32 v75, 0, v28
	v_add_nc_u32_e32 v88, 0, v25
	v_lshl_or_b32 v19, v19, 8, v19
	v_and_b32_e32 v20, 0x540054, v20
	v_add_nc_u32_e32 v87, 0, v24
	ds_load_b64 v[23:24], v48
	ds_load_b64 v[25:26], v66
	ds_load_b64 v[27:28], v67
	ds_load_b64 v[29:30], v68
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s2, s14, s8
	v_and_b32_e32 v13, 0x760076, v19
	v_lshl_or_b32 v12, v20, 4, v20
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s8, s13, s9
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s9, s12, 0x3fb8aa3b
	s_add_i32 s2, s2, s8
	v_lshl_or_b32 v13, v13, 4, v13
	v_and_b32_e32 v110, 0x5040504, v12
	v_add3_u32 v111, s2, v11, v9
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v113, s9, v10 :: v_dual_and_b32 v112, 0x7060706, v13
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s8, s55, s73
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s2, s55, v42
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v120, 0x800, v40
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v122, v111, s55, 1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v123, s55, v44, 1
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_lt_i32_e64 s4, s55, v43
	v_or_b32_e32 v124, 2, v44
	v_or_b32_e32 v125, 4, v44
	v_or_b32_e32 v126, 6, v44
	v_or_b32_e32 v127, 8, v44
	v_or_b32_e32 v128, 10, v44
	v_or_b32_e32 v129, 12, v44
	v_or_b32_e32 v130, 14, v44
	v_or_b32_e32 v131, 16, v44
	v_or_b32_e32 v132, 18, v44
	v_or_b32_e32 v133, 20, v44
	v_or_b32_e32 v134, 22, v44
	v_or_b32_e32 v135, 24, v44
	v_or_b32_e32 v136, 26, v44
	v_or_b32_e32 v137, 28, v44
	v_or_b32_e32 v138, 30, v44
	v_or_b32_e32 v140, 32, v44
	v_dual_mov_b32 v118, v18 :: v_dual_add_nc_u32 v121, 0, v49
	.loc	1 822 32                        ; attention.py:822:32
	v_or_b32_e32 v18, s8, v40
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s5, vcc_lo, s2
	v_dual_mov_b32 v119, v116 :: v_dual_add_nc_u32 v154, 0, v50
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v116, v117, v117 :: v_dual_add_nc_u32 v147, 0, v51
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s6, s55, v120
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v117, v124, s55, 1
	v_add_lshl_u32 v120, v125, s55, 1
	v_add_lshl_u32 v124, v126, s55, 1
	v_add_lshl_u32 v125, v127, s55, 1
	v_add_lshl_u32 v126, v128, s55, 1
	v_add_lshl_u32 v127, v129, s55, 1
	v_add_lshl_u32 v128, v130, s55, 1
	v_add_lshl_u32 v129, v131, s55, 1
	v_add_lshl_u32 v130, v132, s55, 1
	v_add_lshl_u32 v131, v133, s55, 1
	v_add_lshl_u32 v132, v134, s55, 1
	v_add_lshl_u32 v133, v135, s55, 1
	v_add_lshl_u32 v134, v136, s55, 1
	v_add_lshl_u32 v135, v137, s55, 1
	v_add_lshl_u32 v136, v138, s55, 1
	v_add_lshl_u32 v137, v140, s55, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v138, 0x80000000, v122, s5
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v140, 0x80000000, v123, s4
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[122:123], null, v18, s42, v[21:22]
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s2, s1, s6
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v18, 0x80000000, v117, s4
	v_cndmask_b32_e64 v117, 0x80000000, v120, s4
	v_cndmask_b32_e64 v120, 0x80000000, v124, s4
	v_cndmask_b32_e64 v124, 0x80000000, v125, s4
	v_cndmask_b32_e64 v125, 0x80000000, v126, s4
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v122, 0x80000000, v122, s2
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v126, 0x80000000, v127, s4
	v_cndmask_b32_e64 v127, 0x80000000, v128, s4
	v_cndmask_b32_e64 v128, 0x80000000, v129, s4
	v_add_lshl_u32 v139, v53, s55, 1
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b64 v[122:123], v122, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v143, v56, s55, 1
	v_add_lshl_u32 v156, s55, v41, 1
	v_cndmask_b32_e64 v158, 0x80000000, v139, s4
	v_cndmask_b32_e64 v130, 0x80000000, v130, s4
	v_cndmask_b32_e64 v139, 0x80000000, v131, s4
	v_cndmask_b32_e64 v160, 0x80000000, v143, s4
	v_cndmask_b32_e64 v208, 0x80000000, v156, s4
	v_cndmask_b32_e64 v143, 0x80000000, v132, s4
	v_cndmask_b32_e64 v156, 0x80000000, v133, s4
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v9, s44 :: v_dual_mov_b32 v10, s45
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v141, v54, s55, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v11, s46 :: v_dual_mov_b32 v12, s47
	v_dual_mov_b32 v13, s48 :: v_dual_mov_b32 v14, s49
	v_dual_mov_b32 v15, s50 :: v_dual_mov_b32 v16, s51
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v159, 0x80000000, v141, s4
	v_cndmask_b32_e64 v177, 0x80000000, v134, s4
	v_cndmask_b32_e64 v210, 0x80000000, v135, s4
	v_cndmask_b32_e64 v211, 0x80000000, v136, s4
	v_cndmask_b32_e64 v212, 0x80000000, v137, s4
	v_add_lshl_u32 v142, v55, s55, 1
	v_add_lshl_u32 v144, v57, s55, 1
	v_add_lshl_u32 v145, v58, s55, 1
	v_add_lshl_u32 v146, v59, s55, 1
	v_add_lshl_u32 v148, v60, s55, 1
	v_add_lshl_u32 v149, v61, s55, 1
	v_add_lshl_u32 v150, v62, s55, 1
	v_add_lshl_u32 v151, v63, s55, 1
	v_add_lshl_u32 v152, v64, s55, 1
	v_add_lshl_u32 v153, v65, s55, 1
	v_add_lshl_u32 v155, v114, s55, 1
	v_cndmask_b32_e64 v142, 0x80000000, v142, s4
	v_cndmask_b32_e64 v144, 0x80000000, v144, s4
	v_cndmask_b32_e64 v145, 0x80000000, v145, s4
	v_cndmask_b32_e64 v146, 0x80000000, v146, s4
	v_cndmask_b32_e64 v188, 0x80000000, v148, s4
	v_cndmask_b32_e64 v205, 0x80000000, v149, s4
	v_cndmask_b32_e64 v206, 0x80000000, v150, s4
	v_cndmask_b32_e64 v207, 0x80000000, v151, s4
	v_cndmask_b32_e64 v152, 0x80000000, v152, s4
	v_cndmask_b32_e64 v153, 0x80000000, v153, s4
	v_cndmask_b32_e64 v155, 0x80000000, v155, s4
	.loc	1 880 35                        ; attention.py:880:35
	v_mov_b16_e32 v17.l, 0
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v157, 0x800, v39
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s40, 0xff800000, v115
	.loc	1 881 25                        ; attention.py:881:25
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v209.l, v17.l
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v69, v[122:123]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_b64 v[186:187], v138, s[60:63], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x8
	buffer_load_u16 v122, v140, s[64:67], 0 offen
	buffer_load_u16 v213, v18, s[64:67], 0 offen
	buffer_load_u16 v117, v117, s[64:67], 0 offen
	buffer_load_u16 v120, v120, s[64:67], 0 offen
	buffer_load_u16 v124, v124, s[64:67], 0 offen
	buffer_load_u16 v214, v125, s[64:67], 0 offen
	buffer_load_u16 v215, v126, s[64:67], 0 offen
	buffer_load_u16 v216, v127, s[64:67], 0 offen
	buffer_load_u16 v217, v128, s[64:67], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[126:129], v48 offset1:1
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1
	buffer_load_u16 v123, v130, s[64:67], 0 offen
	buffer_load_u16 v125, v139, s[64:67], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[130:133], v48 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[134:137], v66 offset1:1
	ds_load_2addr_stride64_b64 v[138:141], v66 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[148:151], v67 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[197:200], v68 offset1:1
	ds_load_2addr_stride64_b64 v[201:204], v68 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[161:168], v[126:127], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[169:176], v[128:129], v[23:24], v[9:16] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1
	buffer_load_u16 v127, v143, s[64:67], 0 offen
	buffer_load_u16 v129, v156, s[64:67], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[178:185], v[130:131], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[189:196], v[132:133], v[23:24], v[9:16] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v67 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[169:176], v[136:137], v[25:26], v[169:176] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[161:168], v[134:135], v[25:26], v[161:168] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[178:185], v[138:139], v[25:26], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[189:196], v[140:141], v[25:26], v[189:196] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[178:185], v[148:149], v[27:28], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[189:196], v[150:151], v[27:28], v[189:196] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[178:185], v[201:202], v[29:30], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[189:196], v[203:204], v[29:30], v[189:196] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v141, v178
	v_cvt_f32_i32_e32 v148, v190
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[169:176], v[11:12], v[27:28], v[169:176] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x12
	buffer_load_u16 v131, v177, s[64:67], 0 offen
	buffer_load_u16 v132, v210, s[64:67], 0 offen
	buffer_load_u16 v135, v211, s[64:67], 0 offen
	buffer_load_u16 v140, v212, s[64:67], 0 offen
	buffer_load_u16 v143, v158, s[64:67], 0 offen
	buffer_load_u16 v177, v159, s[64:67], 0 offen
	buffer_load_u16 v142, v142, s[64:67], 0 offen
	buffer_load_u16 v160, v160, s[64:67], 0 offen
	buffer_load_u16 v158, v144, s[64:67], 0 offen
	buffer_load_u16 v156, v145, s[64:67], 0 offen
	buffer_load_u16 v12, v146, s[64:67], 0 offen
	buffer_load_u16 v13, v188, s[64:67], 0 offen
	buffer_load_u16 v14, v205, s[64:67], 0 offen
	buffer_load_u16 v15, v206, s[64:67], 0 offen
	buffer_load_u16 v16, v207, s[64:67], 0 offen
	buffer_load_u16 v18, v152, s[64:67], 0 offen
	buffer_load_u16 v137, v153, s[64:67], 0 offen
	buffer_load_u16 v138, v155, s[64:67], 0 offen
	buffer_load_u16 v139, v208, s[64:67], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[161:168], v[9:10], v[27:28], v[161:168] neg_lo:[1,1,0]
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[169:176], v[199:200], v[29:30], v[169:176] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v159, v184
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[161:168], v[197:198], v[29:30], v[161:168] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v151, v193
	v_cvt_f32_i32_e32 v146, v189
	v_cvt_f32_i32_e32 v201, v169
	v_cvt_f32_i32_e32 v202, v170
	v_cvt_f32_i32_e32 v128, v162
	v_cvt_f32_i32_e32 v198, v164
	v_cvt_f32_i32_e32 v126, v161
	v_cvt_f32_i32_e32 v200, v168
	v_cvt_f32_i32_e32 v203, v171
	v_cvt_f32_i32_e32 v204, v172
	v_cvt_f32_i32_e32 v130, v173
	v_cvt_f32_i32_e32 v133, v174
	v_cvt_f32_i32_e32 v136, v176
	v_cvt_f32_i32_e32 v161, v183
	v_dual_mul_f32 v126, v113, v126 :: v_dual_add_nc_u32 v19, 0, v52
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v197, v163
	v_cvt_f32_i32_e32 v199, v166
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v134, v175
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v178.l, v17.l
	v_mov_b16_e64 v189.l, v17.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v150, v192
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v192.l, v17.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v136, v113, v136
	v_mul_f32_e32 v141, v113, v141
	v_cvt_f32_i32_e32 v144, v179
	v_cvt_f32_i32_e32 v163, v181
	v_cvt_f32_i32_e32 v188, v180
	v_cvt_f32_i32_e32 v152, v194
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v194.l, v17.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v162, v182
	v_cvt_f32_i32_e32 v145, v185
	v_cvt_f32_i32_e32 v149, v191
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v191.l, v17.l
	v_mov_b16_e64 v185.l, v17.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v153, v195
	v_cvt_f32_i32_e32 v155, v196
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v180.l, v17.l
	v_mov_b16_e64 v179.l, v17.l
	v_mov_b16_e64 v182.l, v17.l
	v_mov_b16_e64 v181.l, v17.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v128, v113, v128
	v_mul_f32_e32 v134, v113, v134
	v_mul_f32_e32 v159, v113, v159
	v_mul_f32_e32 v166, v113, v197
	v_mul_f32_e32 v133, v113, v133
	v_mul_f32_e32 v161, v113, v161
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(32)
	v_cndmask_b32_e64 v9, 0xff80ff80, v186, s5
	v_cndmask_b32_e64 v10, 0xff80ff80, v187, s5
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v120, 16, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 880 35                        ; attention.py:880:35
	v_mov_b16_e32 v11.l, v9.l
	v_mov_b16_e32 v11.h, v10.l
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v209.h, v10.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mov_b16_e64 v164.l, v9.h
	v_mov_b16_e64 v164.h, v10.h
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v17.h, v9.l
	v_and_b32_e32 v9, 0xffff0000, v9
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b32 v121, v11
	ds_store_b32 v86, v164
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v209
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v164, 16, v213
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v10, 0xffff0000, v10
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v17
	v_cmp_neq_f32_e64 s6, 0xff800000, v9
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s2, s5, s2
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v10
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v9, 0, 1, s2
	s_and_b32 s4, s5, s4
	s_and_b32 s6, s5, s6
	v_cndmask_b32_e64 v10, 0, 1, s4
	s_and_b32 s5, s5, s7
	v_lshlrev_b16 v9.l, 8, v9.l
	v_cndmask_b32_e64 v11, 0, 1, s5
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_barrier
	ds_load_b32 v121, v154
	ds_load_b32 v154, v87
	ds_load_b32 v173, v88
	ds_load_b32 v174, v89
	ds_load_b32 v176, v90
	ds_load_b32 v183, v91
	ds_load_b32 v187, v92
	ds_load_b32 v190, v93
	ds_load_b32 v193, v94
	ds_load_b32 v186, v95
	ds_load_b32 v184, v96
	ds_load_b32 v172, v97
	ds_load_b32 v171, v98
	ds_load_b32 v170, v99
	ds_load_b32 v169, v100
	ds_load_b32 v168, v101
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_or_b16 v9.h, v10.l, v9.l
	v_mov_b16_e32 v9.l, v11.l
	v_cndmask_b32_e64 v10, 0, 1, s6
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(21)
	v_dual_mul_f32 v130, v113, v130 :: v_dual_lshlrev_b32 v125, 16, v125
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v9.l, 8, v9.l
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v129, 16, v129
	v_mov_b16_e64 v178.h, v183.l
	v_mov_b16_e64 v189.h, v187.l
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v187, 0xffff0000, v187
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v9.l, v10.l, v9.l
	v_mad_u64_u32 v[10:11], null, s8, s43, v[22:23]
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v11.l, v17.l
	v_mov_b16_e32 v11.h, v121.l
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v20, 0, v45
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_b16_d16_hi v147, v9
	ds_store_b16 v102, v9
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v178, 0x3fb8aa3b, v178 :: v_dual_lshlrev_b32 v127, 16, v127
	v_mul_f32_e32 v147, 0x3fb8aa3b, v11
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v11, 0xffff0000, v121
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v122, 16, v122
	v_mov_b16_e32 v121.l, v17.l
	v_mov_b16_e64 v121.h, v174.l
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_lt_i32_e64 s7, s55, v157
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v11, 0x3fb8aa3b, v11
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v147, v126, v122
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v122.l, v17.l
	v_mov_b16_e64 v122.h, v154.l
	v_lshlrev_b32_e32 v117, 16, v117
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v11, v128, v164
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v126.l, v17.l
	v_mov_b16_e64 v126.h, v173.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v164, 0x3fb8aa3b, v122
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v122, 0xffff0000, v154
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v128.l, v17.l
	v_mov_b16_e64 v128.h, v176.l
	v_mov_b16_e64 v157.l, v17.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v164, v166, v117 :: v_dual_mul_f32 v117, v113, v198
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v154, 0x3fb8aa3b, v122
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v166, 0x3fb8aa3b, v126
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v122, 0xffff0000, v173
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v173, 0x3fb8aa3b, v121
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v154, v117, v120 :: v_dual_and_b32 v121, 0xffff0000, v174
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v117, v113, v165 :: v_dual_lshlrev_b32 v120, 16, v124
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v165, 0x3fb8aa3b, v122 :: v_dual_lshlrev_b32 v122, 16, v217
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v175, 0x3fb8aa3b, v128 :: v_dual_mul_f32 v124, v113, v202
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v166, v117, v120
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v117, v113, v199 :: v_dual_lshlrev_b32 v120, 16, v214
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v126, 0xffff0000, v176
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v128, v113, v204 :: v_dual_lshlrev_b32 v123, 16, v123
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v165, v117, v120 :: v_dual_and_b32 v176, 0xffff0000, v183
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v117, v113, v167
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v167, 0x3fb8aa3b, v121 :: v_dual_lshlrev_b32 v120, 16, v215
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v121, v113, v201 :: v_dual_mul_f32 v174, 0x3fb8aa3b, v126
	v_mul_f32_e32 v126, v113, v203
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v173, v117, v120
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v117, v113, v200
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v175, v121, v122 :: v_dual_lshlrev_b32 v120, 16, v216
	v_dual_fmac_f32 v174, v124, v123 :: v_dual_mul_f32 v183, 0x3fb8aa3b, v189
	s_waitcnt vmcnt(18)
	v_dual_fmac_f32 v178, v126, v125 :: v_dual_lshlrev_b32 v131, 16, v131
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v167, v117, v120
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v187, 0x3fb8aa3b, v187
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v183, v130, v129 :: v_dual_mul_f32 v176, 0x3fb8aa3b, v176
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v157.h, v190.l
	v_mov_b16_e64 v192.h, v193.l
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt vmcnt(17)
	v_dual_fmac_f32 v187, v133, v131 :: v_dual_lshlrev_b32 v132, 16, v132
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v176, v128, v127 :: v_dual_mul_f32 v189, 0x3fb8aa3b, v157
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v135, 16, v135
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v157, 0xffff0000, v190
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v140, 16, v140
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v192, 0x3fb8aa3b, v192 :: v_dual_lshlrev_b32 v143, 16, v143
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v189, v134, v132 :: v_dual_mul_f32 v190, 0x3fb8aa3b, v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v192, v141, v140 :: v_dual_and_b32 v157, 0xffff0000, v193
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v144, v113, v144
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v194.h, v186.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v163, v113, v163 :: v_dual_and_b32 v186, 0xffff0000, v186
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v193, 0x3fb8aa3b, v157
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v157, v113, v188 :: v_dual_lshlrev_b32 v142, 16, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v186, 0x3fb8aa3b, v186 :: v_dual_lshlrev_b32 v177, 16, v177
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v193, v144, v143 :: v_dual_mul_f32 v188, 0x3fb8aa3b, v194
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v191.h, v184.l
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v184, 0xffff0000, v184
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v185.h, v172.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v162, v113, v162
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v188, v157, v177 :: v_dual_mul_f32 v191, 0x3fb8aa3b, v191
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v160, 16, v160
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v194, 0x3fb8aa3b, v184 :: v_dual_lshlrev_b32 v195, 1, v10
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v185, 0x3fb8aa3b, v185 :: v_dual_lshlrev_b32 v156, 16, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v186, v163, v142 :: v_dual_fmac_f32 v191, v162, v160
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v142, v119, v119
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v185, v159, v156 :: v_dual_lshlrev_b32 v158, 16, v158
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v10, v10, s74, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s7, s0, s7
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v117.h, v17.l
	v_mov_b16_e32 v120.h, v17.l
	v_mov_b16_e32 v121.h, v17.l
	v_mov_b16_e32 v122.h, v17.l
	v_mov_b16_e32 v123.h, v17.l
	v_mov_b16_e32 v124.h, v17.l
	v_mov_b16_e32 v125.h, v17.l
	v_mov_b16_e32 v126.h, v17.l
	v_mov_b16_e32 v127.h, v17.l
	v_mov_b16_e64 v128.h, v17.l
	v_mov_b16_e64 v129.h, v17.l
	v_mov_b16_e64 v130.h, v17.l
	v_mov_b16_e64 v131.h, v17.l
	v_mov_b16_e64 v133.h, v17.l
	v_mov_b16_e64 v132.h, v17.l
	v_mov_b16_e64 v134.h, v17.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v190, v136, v135
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v135.h, v17.l
	v_mov_b16_e64 v136.h, v17.l
	v_mov_b16_e64 v140.h, v17.l
	v_mov_b16_e64 v141.h, v17.l
	v_mov_b16_e64 v143.h, v17.l
	v_mov_b16_e64 v144.h, v17.l
	v_mov_b16_e64 v157.h, v17.l
	v_mov_b16_e64 v177.h, v17.l
	v_mov_b16_e64 v163.h, v17.l
	v_mov_b16_e64 v160.h, v17.l
	v_mov_b16_e64 v162.h, v17.l
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v194, v161, v158 :: v_dual_lshlrev_b32 v13, 16, v13
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v158.h, v17.l
	v_mov_b16_e64 v161.h, v17.l
	v_mov_b16_e64 v156.h, v17.l
	v_mov_b16_e64 v159.h, v17.l
	v_mov_b16_e64 v184.h, v17.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v196, 0x80000000, v10, s7
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v10, v113, v145 :: v_dual_lshlrev_b32 v15, 16, v15
	v_mul_f32_e32 v17, v113, v146
	v_dual_mul_f32 v145, v113, v148 :: v_dual_lshlrev_b32 v14, 16, v14
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v146, v113, v149 :: v_dual_lshlrev_b32 v139, 16, v139
	v_dual_mul_f32 v148, v113, v150 :: v_dual_lshlrev_b32 v137, 16, v137
	v_mul_f32_e32 v149, v113, v151
	v_mul_f32_e32 v150, v113, v152
	v_dual_mul_f32 v151, v113, v153 :: v_dual_lshlrev_b32 v12, 16, v12
	v_dual_mul_f32 v152, v113, v155 :: v_dual_and_b32 v153, 0xffff0000, v172
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v16, 16, v16
	v_mov_b16_e64 v180.h, v171.l
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v155, 0xffff0000, v171
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v179.h, v170.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v197, 0x3fb8aa3b, v153
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v170, 0xffff0000, v170
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v171, 0x3fb8aa3b, v180 :: v_dual_lshlrev_b32 v18, 16, v18
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v155, 0x3fb8aa3b, v155 :: v_dual_lshlrev_b32 v138, 16, v138
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v182.h, v169.l
	v_mov_b16_e64 v181.h, v168.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v171, v17, v13 :: v_dual_and_b32 v168, 0xffff0000, v168
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v9, v19
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v9, v19 offset:32
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v197, v10, v12
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v179, 0x3fb8aa3b, v179 :: v_dual_mul_f32 v198, 0x3fb8aa3b, v170
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v169, 0xffff0000, v169
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u16_d16 v10, v103
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v10, v103 offset:32
	ds_load_u16_d16 v12, v104
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v12, v104 offset:32
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v200, 0x3fb8aa3b, v168 :: v_dual_fmac_f32 v155, v145, v14
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u16_d16 v13, v105
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v13, v105 offset:32
	ds_load_u16_d16 v14, v106
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v14, v106 offset:32
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v198, v148, v16
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v182, 0x3fb8aa3b, v182 :: v_dual_mul_f32 v199, 0x3fb8aa3b, v169
	v_mul_f32_e32 v169, 0x3fb8aa3b, v181
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v179, v146, v15
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u16_d16 v15, v107
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v15, v107 offset:32
	ds_load_u16_d16 v16, v108
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v16, v108 offset:32
	ds_load_u16_d16 v17, v109
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v17, v109 offset:32
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v182, v149, v18
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v18.l, 1, v9.h
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v195, 0x80000000, v195, s7
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v19.l, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v9.l
	v_lshrrev_b16 v9.h, 8, v9.h
	v_and_b16 v18.h, 1, v10.h
	v_and_b16 v19.h, 1, v12.h
	v_cmp_eq_u16_e64 s7, 1, v18.l
	v_lshrrev_b16 v10.h, 8, v10.h
	v_and_b16 v18.l, 1, v13.h
	v_cmp_eq_u16_e64 s8, 1, v18.h
	v_and_b16 v18.h, 1, v14.l
	v_cmp_eq_u16_e64 s9, 1, v19.h
	v_and_b16 v19.h, 1, v14.h
	v_cmp_eq_u16_e64 s10, 1, v18.l
	v_and_b16 v18.l, 1, v15.l
	v_cmp_eq_u16_e64 s16, 1, v18.h
	v_and_b16 v18.h, 1, v15.h
	v_cmp_eq_u16_e64 s11, 1, v19.h
	v_and_b16 v19.h, 1, v16.l
	v_cmp_eq_u16_e64 s17, 1, v18.l
	v_and_b16 v18.l, 1, v16.h
	v_cmp_eq_u16_e64 s12, 1, v18.h
	s_waitcnt lgkmcnt(0)
	v_and_b16 v18.h, 1, v17.l
	v_cmp_eq_u16_e64 s18, 1, v19.h
	v_and_b16 v19.h, 1, v17.h
	v_cmp_eq_u16_e64 s13, 1, v18.l
	v_and_b16 v18.l, 1, v10.l
	v_cmp_eq_u16_e64 s15, 1, v18.h
	v_and_b16 v18.h, 1, v12.l
	v_cmp_eq_u16_e64 s14, 1, v19.h
	v_and_b16 v19.h, 1, v13.l
	v_lshrrev_b16 v10.l, 8, v10.l
	v_lshrrev_b16 v12.l, 8, v12.l
	v_lshrrev_b16 v13.l, 8, v13.l
	v_lshrrev_b16 v14.l, 8, v14.l
	v_lshrrev_b16 v15.l, 8, v15.l
	v_lshrrev_b16 v16.l, 8, v16.l
	v_lshrrev_b16 v17.l, 8, v17.l
	v_lshrrev_b16 v17.h, 8, v17.h
	v_and_b16 v9.l, 1, v9.l
	v_lshrrev_b16 v12.h, 8, v12.h
	v_lshrrev_b16 v13.h, 8, v13.h
	v_lshrrev_b16 v14.h, 8, v14.h
	v_lshrrev_b16 v15.h, 8, v15.h
	v_and_b16 v9.h, 1, v9.h
	v_and_b16 v10.l, 1, v10.l
	v_and_b16 v10.h, 1, v10.h
	v_and_b16 v12.l, 1, v12.l
	v_and_b16 v13.l, 1, v13.l
	v_and_b16 v14.l, 1, v14.l
	v_and_b16 v15.l, 1, v15.l
	v_and_b16 v16.l, 1, v16.l
	v_and_b16 v17.l, 1, v17.l
	v_and_b16 v17.h, 1, v17.h
	v_cmp_eq_u16_e64 s33, 1, v9.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v200, v152, v139
	.loc	1 881 25                        ; attention.py:881:25
	v_lshrrev_b16 v16.h, 8, v16.h
	v_and_b16 v12.h, 1, v12.h
	v_and_b16 v13.h, 1, v13.h
	v_and_b16 v14.h, 1, v14.h
	v_and_b16 v15.h, 1, v15.h
	v_cmp_eq_u16_e64 s19, 1, v19.l
	v_cmp_eq_u16_e64 s20, 1, v18.l
	v_cmp_eq_u16_e64 s21, 1, v18.h
	v_cmp_eq_u16_e64 s34, 1, v10.l
	v_cmp_eq_u16_e64 s35, 1, v12.l
	v_cmp_eq_u16_e64 s36, 1, v13.l
	v_cmp_eq_u16_e64 s37, 1, v14.l
	v_cmp_eq_u16_e64 s38, 1, v15.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v139, 0xff800000, v11, s33
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v169, v151, v138
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s39, 1, v16.l
	v_cmp_eq_u16_e64 s30, 1, v17.l
	v_cmp_eq_u16_e64 s23, 1, v9.h
	v_cmp_eq_u16_e64 s24, 1, v10.h
	v_cmp_eq_u16_e64 s31, 1, v17.h
	v_and_b16 v16.h, 1, v16.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v138, 0xff800000, v147, s19
	v_cndmask_b32_e64 v145, 0xff800000, v164, s20
	v_cndmask_b32_e64 v147, 0xff800000, v166, s21
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s22, 1, v19.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v151, 0xff800000, v175, s16
	v_cndmask_b32_e64 v153, 0xff800000, v178, s17
	v_cndmask_b32_e64 v164, 0xff800000, v183, s18
	v_cndmask_b32_e64 v166, 0xff800000, v189, s15
	v_cndmask_b32_e64 v168, 0xff800000, v192, s7
	v_cndmask_b32_e64 v146, 0xff800000, v154, s34
	v_cndmask_b32_e64 v175, 0xff800000, v185, s10
	v_cndmask_b32_e64 v148, 0xff800000, v165, s35
	v_cndmask_b32_e64 v178, 0xff800000, v171, s11
	v_cndmask_b32_e64 v152, 0xff800000, v174, s37
	v_cndmask_b32_e64 v154, 0xff800000, v176, s38
	v_cndmask_b32_e64 v185, 0xff800000, v169, s14
	v_cndmask_b32_e64 v165, 0xff800000, v187, s39
	v_cndmask_b32_e64 v169, 0xff800000, v193, s23
	v_cndmask_b32_e64 v171, 0xff800000, v186, s24
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s25, 1, v12.h
	v_cmp_eq_u16_e64 s26, 1, v13.h
	v_cmp_eq_u16_e64 s27, 1, v14.h
	v_cmp_eq_u16_e64 s28, 1, v15.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v186, 0xff800000, v200, s31
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v199, v150, v137
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v150, 0xff800000, v167, s36
	v_cndmask_b32_e64 v167, 0xff800000, v190, s30
	v_cndmask_b32_e64 v149, 0xff800000, v173, s22
	v_cndmask_b32_e64 v170, 0xff800000, v188, s8
	v_cndmask_b32_e64 v172, 0xff800000, v191, s9
	v_cndmask_b32_e64 v180, 0xff800000, v179, s12
	v_cndmask_b32_e64 v182, 0xff800000, v182, s13
	v_cndmask_b32_e64 v173, 0xff800000, v194, s25
	v_cndmask_b32_e64 v176, 0xff800000, v197, s26
	v_cndmask_b32_e64 v179, 0xff800000, v155, s27
	v_cndmask_b32_e64 v181, 0xff800000, v198, s28
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s29, 1, v16.h
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v137, v152, v153, v154
	v_max3_f32 v155, v164, v165, v166
	v_max3_f32 v174, v167, v168, v169
	v_max_f32_e32 v190, v138, v139
	v_max3_f32 v191, v146, v147, v148
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v187, v170, v171, v172
	v_max3_f32 v188, v173, v175, v176
	v_max3_f32 v189, v178, v179, v180
	v_max3_f32 v192, v149, v150, v151
	v_max_f32_e32 v194, v185, v186
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v183, 0xff800000, v199, s29
	ds_store_b64 v20, v[138:139]
	ds_store_b64 v70, v[145:146]
	ds_store_b64 v71, v[147:148]
	ds_store_b64 v72, v[149:150]
	ds_store_b64 v73, v[151:152]
	ds_store_b64 v74, v[153:154]
	ds_store_b64 v75, v[164:165]
	ds_store_b64 v76, v[166:167]
	ds_store_b64 v77, v[168:169]
	ds_store_b64 v78, v[170:171]
	ds_store_b64 v79, v[172:173]
	ds_store_b64 v80, v[175:176]
	ds_store_b64 v81, v[178:179]
	ds_store_b64 v82, v[180:181]
	ds_store_b64 v83, v[182:183]
	ds_store_b64 v84, v[185:186]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[9:12], v85 offset1:16
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v193, v181, v182
	v_max3_f32 v137, v137, v155, v174
	v_max3_f32 v155, v190, v145, v191
	v_max3_f32 v174, v187, v188, v189
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[13:16], v195, s[68:71], 0 offen
	buffer_load_b128 v[17:20], v196, s[68:71], 0 offen
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v187, v193, v183, v194
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v137, v155, v192, v137
.Ltmp10:
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s55, s55, 64
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	ds_store_b128 v47, v[13:16]
	s_waitcnt vmcnt(0)
	ds_store_b128 v47, v[17:20] offset:4096
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v137, v137, v174, v187
	v_dual_max_f32 v174, v11, v11 :: v_dual_max_f32 v187, v9, v9
.Ltmp12:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v155, v137, s75, 0xfedcba98 op_sel:[1,0]
.Ltmp14:
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s55, s72
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v137, v115, v137, v155
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v155, v187, v174 :: v_dual_sub_f32 v138, v138, v137
.Ltmp16:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v186, v186, v137
	v_sub_f32_e32 v174, v176, v137
	v_sub_f32_e32 v176, v178, v137
	v_sub_f32_e32 v178, v179, v137
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v138, v138
	v_exp_f32_e32 v186, v186
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v179, v180, v137
	v_sub_f32_e32 v180, v181, v137
.Ltmp17:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v155, v155, v10, v12
.Ltmp18:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v146, v146, v137
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v178, v178
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v138, 0, v138, s19
	v_cndmask_b32_e64 v186, 0, v186, s31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v120.l, v138.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v149, v149, v137
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v159.l, v186.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v178, 0, v178, s27
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v120, 1, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v149, v149
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v159, 1, v159
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v163.l, v178.h
	v_cmp_o_f32_e64 s31, v178, v178
	v_add3_u32 v120, v138, v120, 0x7fff
	v_and_b32_e32 v163, 1, v163
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v149, 0, v149, s22
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v126.l, v149.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v165, v165, v137 :: v_dual_and_b32 v126, 1, v126
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v165, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v126, v149, v126, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v165, 0, v165, s39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v131.l, v165.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v172, v172, v137
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s19, v165, v165
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v131, 1, v131
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v172, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v131, v165, v131, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v172, 0, v172, s9
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v144.l, v172.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v181, v182, v137
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v182, v115, v137
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v115, v155
.Ltmp20:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v146, v146
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v144, 1, v144
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v181, v181
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v182, v182
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v115, v115 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v148, v148, v137 :: v_dual_max_f32 v115, v115, v115
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v148, v148
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v166, v166, v137
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v146, 0, v146, s34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v182, 0, v182, s40
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v147, v147, v137
	v_sub_f32_e32 v145, v145, v137
	v_sub_f32_e32 v152, v152, v137
	v_dual_sub_f32 v139, v139, v137 :: v_dual_mul_f32 v4, v4, v182
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v182
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v147, v147
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v182
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v145, v145
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v148, 0, v148, s35
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v182
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v152, v152
	v_exp_f32_e32 v139, v139
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v115, v155, v115
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v123.l, v148.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v168, v168, v137
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v147, 0, v147, s21
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v164, v164, v137 :: v_dual_mul_f32 v7, v7, v182
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v145, 0, v145, s20
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v123, 1, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v124.l, v147.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v153, v153, v137
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v168, v168
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v122.l, v145.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v151, v151, v137 :: v_dual_and_b32 v124, 1, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v153, v153
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v152, 0, v152, s37
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v122, 1, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v151, v151
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v139, 0, v139, s33
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v121.l, v146.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v168, 0, v168, s7
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v127.l, v152.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v170, v170, v137
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v117.l, v139.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v153, 0, v153, s17
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v136.l, v168.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v175, v175, v137
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v151, 0, v151, s16
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v127, 1, v127
	v_mov_b16_e64 v130.l, v153.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v169, v169, v137 :: v_dual_and_b32 v136, 1, v136
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v128.l, v151.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v167, v167, v137 :: v_dual_and_b32 v130, 1, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v169, v169
	v_exp_f32_e32 v175, v175
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v128, 1, v128
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v167, v167
	v_exp_f32_e32 v170, v170
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v117, 1, v117
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v164, v164
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v139, v139
	v_and_b32_e32 v121, 1, v121
	v_cmp_o_f32_e64 s9, v146, v146
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v169, 0, v169, s23
	v_cndmask_b32_e64 v175, 0, v175, s10
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v117, v139, v117, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v167, 0, v167, s30
	v_cndmask_b32_e64 v170, 0, v170, s8
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v135.l, v169.h
	v_mov_b16_e64 v177.l, v175.h
	v_cmp_o_f32_e64 s8, v138, v138
	v_mov_b16_e64 v132.l, v167.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v171, v171, v137
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v135, 1, v135
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v174, v174
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v121, v146, v121, 0x7fff
	v_and_b32_e32 v132, 1, v132
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v171, v171
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v117.h, 0x7fff, v117.h, s7
	v_cndmask_b16 v117.l, 0x7fff, v120.h, s8
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v164, 0, v164, s18
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s18, v153, v153
	v_add3_u32 v130, v153, v130, 0x7fff
	v_cndmask_b16 v153.h, 0x7fff, v121.h, s9
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v174, 0, v174, s26
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v121, v117, s75, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v181, 0, v181, s13
	v_cndmask_b32_e64 v171, 0, v171, s24
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v150, v150, v137 :: v_dual_mul_f32 v1, v1, v182
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v157.l, v174.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v156.l, v181.h
	v_mov_b16_e64 v140.l, v171.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v154, v154, v137 :: v_dual_mul_f32 v5, v5, v182
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v155, 1, v157
	v_and_b32_e32 v157, 1, v177
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v177, v115
.Ltmp26:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v180, v180
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v140, 1, v140
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v179, v179
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v2, v2, v182
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v177, v177 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp28:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v150, v150
	v_exp_f32_e32 v166, v166
	v_exp_f32_e32 v154, v154
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v133.l, v164.h
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v120, v177, v177
.Ltmp30:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v180, 0, v180, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v141.l, v170.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v179, 0, v179, s12
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s24, v168, v168
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v115, v115, v120
.Ltmp32:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v162.l, v180.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v185, v185, v137
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v158.l, v179.h
	v_perm_b32 v120, v121, v117, v110
	v_perm_b32 v121, v121, v117, v112
	v_and_b32_e32 v162, 1, v162
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v185, v185
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v117, v115 :: v_dual_and_b32 v158, 1, v158
.Ltmp34:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v150, 0, v150, s36
	v_cndmask_b32_e64 v166, 0, v166, s15
	v_cndmask_b32_e64 v154, 0, v154, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s26, v170, v170
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v117, v117 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v156, 1, v156
	v_mov_b16_e64 v125.l, v150.h
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v185, 0, v185, s14
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v134.l, v166.h
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v117, v117, v117
.Ltmp38:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v173, v173, v137
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v129.l, v154.h
	v_mov_b16_e64 v184.l, v185.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v115, v115, v117 :: v_dual_and_b32 v134, 1, v134
.Ltmp40:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v173, v173
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v136, v168, v136, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v182, 1, v184
	v_add3_u32 v138, v171, v140, 0x7fff
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v117, v115
.Ltmp42:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v145, v145
	v_add3_u32 v122, v145, v122, 0x7fff
	v_add3_u32 v146, v178, v163, 0x7fff
	v_cmp_o_f32_e64 s20, v164, v164
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v117, v117 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v173, 0, v173, s25
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s25, v171, v171
	v_cmp_o_f32_e64 s21, v167, v167
	v_cmp_o_f32_e64 s22, v166, v166
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v117, v117, v117
.Ltmp46:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v143.l, v173.h
	v_cmp_o_f32_e64 s27, v173, v173
	v_cmp_o_f32_e64 s23, v169, v169
	v_add3_u32 v132, v167, v132, 0x7fff
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v115, v115, v117
.Ltmp48:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v143, 1, v143
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v176, v176
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v134, v166, v134, 0x7fff
	v_add3_u32 v135, v169, v135, 0x7fff
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v117, v116, v115
	v_max_f32_e32 v116, v142, v115
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v140, v173, v143, 0x7fff
	v_cmp_o_f32_e64 s12, v147, v147
	v_cmp_o_f32_e64 s15, v152, v152
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v9, v9, v117
	v_sub_f32_e32 v11, v11, v117
	v_dual_sub_f32 v10, v10, v117 :: v_dual_sub_f32 v115, v119, v116
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v176, 0, v176, s11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v9, v9
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_2)
	v_exp_f32_e32 v10, v10
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s30, v175, v175
	v_mov_b16_e64 v160.l, v176.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v183, v183, v137
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s33, v176, v176
	v_add3_u32 v124, v147, v124, 0x7fff
	v_add3_u32 v127, v152, v127, 0x7fff
	v_and_b32_e32 v160, 1, v160
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v9, 0, v9, s4
	v_cndmask_b32_e64 v11, 0, v11, s6
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v12, v12, v117
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v145, v176, v160, 0x7fff
	v_cndmask_b16 v160.l, 0x7fff, v136.h, s24
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v11
.Ltmp50:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v12, v12
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v136.h, 0x7fff, v138.h, s25
	v_cndmask_b16 v138.h, 0x7fff, v140.h, s27
	v_cndmask_b16 v140.h, 0x7fff, v146.h, s31
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v183, v183
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v140.l, 0x7fff, v145.h, s33
	v_add3_u32 v147, v179, v158, 0x7fff
	v_add3_u32 v152, v186, v159, 0x7fff
	v_cndmask_b16 v158.h, 0x7fff, v131.h, s19
	v_cndmask_b16 v159.h, 0x7fff, v132.h, s21
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v12, 0, v12, s5
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v159.l, 0x7fff, v134.h, s22
	v_cndmask_b16 v160.h, 0x7fff, v135.h, s23
	v_cmp_o_f32_e64 s11, v148, v148
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v183, 0, v183, s29
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v10, v10, v12
.Ltmp52:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s29, v174, v174
	v_permlanex16_b32 v135, v159, s75, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s13, v150, v150
	v_mov_b16_e64 v161.l, v183.h
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v10
.Ltmp54:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v125, 1, v125
	v_cmp_o_f32_e64 s14, v149, v149
	v_cmp_o_f32_e64 s28, v172, v172
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v10, v9 :: v_dual_and_b32 v161, 1, v161
.Ltmp56:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s34, v180, v180
	v_cmp_o_f32_e64 s35, v179, v179
	v_cmp_o_f32_e64 s37, v181, v181
	v_add3_u32 v123, v148, v123, 0x7fff
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v125, v150, v125, 0x7fff
	v_add3_u32 v148, v180, v162, 0x7fff
	v_add3_u32 v149, v181, v156, 0x7fff
	v_add3_u32 v150, v183, v161, 0x7fff
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v10
.Ltmp60:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v129, 1, v129
	v_perm_b32 v134, v135, v159, v110
	v_perm_b32 v135, v135, v159, v112
	v_cmp_o_f32_e64 s16, v151, v151
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v10, v9
.Ltmp62:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s17, v154, v154
	v_add3_u32 v128, v151, v128, 0x7fff
	v_add3_u32 v129, v154, v129, 0x7fff
	v_cndmask_b16 v153.l, 0x7fff, v122.h, s10
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v154.h, 0x7fff, v123.h, s11
	v_cndmask_b16 v154.l, 0x7fff, v124.h, s12
	v_cndmask_b16 v156.h, 0x7fff, v127.h, s15
	v_cndmask_b16 v156.l, 0x7fff, v128.h, s16
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v10
.Ltmp66:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v133, 1, v133
	v_permlanex16_b32 v123, v153, s75, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s36, v183, v183
	v_cmp_o_f32_e64 s38, v186, v186
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v10, v9
.Ltmp68:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v133, v164, v133, 0x7fff
	v_cmp_o_f32_e64 s39, v185, v185
	v_add3_u32 v151, v185, v182, 0x7fff
	v_perm_b32 v122, v123, v153, v110
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp70:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v141, 1, v141
	v_cndmask_b16 v158.l, 0x7fff, v133.h, s20
	v_perm_b32 v123, v123, v153, v112
	v_cndmask_b16 v182.h, 0x7fff, v150.h, s36
	v_cndmask_b16 v182.l, 0x7fff, v149.h, s37
	v_add3_u32 v139, v170, v141, 0x7fff
	v_add3_u32 v141, v172, v144, 0x7fff
	v_permlanex16_b32 v133, v158, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v141.l, 0x7fff, v147.h, s35
	v_cndmask_b16 v183.h, 0x7fff, v152.h, s38
	v_cndmask_b16 v136.l, 0x7fff, v139.h, s26
	v_cndmask_b16 v138.l, 0x7fff, v141.h, s28
	v_perm_b32 v132, v133, v158, v110
	v_perm_b32 v133, v133, v158, v112
	v_cndmask_b16 v141.h, 0x7fff, v148.h, s34
	v_permlanex16_b32 v146, v136, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v183.l, 0x7fff, v151.h, s39
	v_permlanex16_b32 v148, v138, s75, 0xfedcba98 op_sel:[1,0]
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v17, v115
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v152, v140, s75, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v145, v146, v136, v110
	v_perm_b32 v146, v146, v136, v112
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v136, v9, v10
.Ltmp72:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v184, v141, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v185, v182, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v186, v183, s75, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v147, v148, v138, v110
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v18, v136
.Ltmp74:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v143, v174, v155, 0x7fff
	v_cndmask_b16 v155.h, 0x7fff, v125.h, s13
	v_cndmask_b16 v155.l, 0x7fff, v126.h, s14
	v_permlanex16_b32 v125, v154, s75, 0xfedcba98 op_sel:[1,0]
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp76:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v139.h, 0x7fff, v143.h, s29
	v_perm_b32 v148, v148, v138, v112
	v_permlanex16_b32 v127, v155, s75, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v124, v125, v154, v110
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v18, v136, v18
.Ltmp78:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v144, v175, v157, 0x7fff
	v_cndmask_b16 v157.h, 0x7fff, v129.h, s17
	v_cndmask_b16 v157.l, 0x7fff, v130.h, s18
	v_permlanex16_b32 v129, v156, s75, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v125, v125, v154, v112
	v_cndmask_b16 v139.l, 0x7fff, v144.h, s30
	v_permlanex16_b32 v144, v160, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v131, v157, s75, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v126, v127, v155, v110
	v_perm_b32 v127, v127, v155, v112
	v_permlanex16_b32 v150, v139, s75, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v143, v144, v160, v110
	v_perm_b32 v144, v144, v160, v112
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v9, v46
	ds_load_u16_d16 v10, v46 offset:256
	ds_load_u16_d16 v11, v46 offset:512
	ds_load_u16_d16 v12, v46 offset:768
	ds_load_u16_d16 v13, v46 offset:1024
	ds_load_u16_d16 v14, v46 offset:1280
	ds_load_u16_d16 v15, v46 offset:1536
	ds_load_u16_d16 v16, v46 offset:1792
	ds_load_u16_d16 v158, v46 offset:2048
	ds_load_u16_d16 v159, v46 offset:2304
	ds_load_u16_d16 v160, v46 offset:2560
	ds_load_u16_d16 v161, v46 offset:2816
	ds_load_u16_d16 v162, v46 offset:3072
	ds_load_u16_d16 v163, v46 offset:3328
	ds_load_u16_d16 v164, v46 offset:3584
	ds_load_u16_d16 v165, v46 offset:3840
	ds_load_u16_d16 v166, v46 offset:4096
	ds_load_u16_d16 v167, v46 offset:4352
	ds_load_u16_d16 v168, v46 offset:4608
	ds_load_u16_d16 v169, v46 offset:4864
	ds_load_u16_d16 v170, v46 offset:5120
	ds_load_u16_d16 v171, v46 offset:5376
	ds_load_u16_d16 v172, v46 offset:5632
	ds_load_u16_d16 v173, v46 offset:5888
	ds_load_u16_d16 v174, v46 offset:6144
	ds_load_u16_d16 v175, v46 offset:6400
	ds_load_u16_d16 v176, v46 offset:6656
	ds_load_u16_d16 v177, v46 offset:6912
	ds_load_u16_d16 v178, v46 offset:7168
	ds_load_u16_d16 v179, v46 offset:7424
	ds_load_u16_d16 v180, v46 offset:7680
	ds_load_u16_d16 v181, v46 offset:7936
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v9, v46 offset:128
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v10, v46 offset:384
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v11, v46 offset:640
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v12, v46 offset:896
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v13, v46 offset:1152
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v14, v46 offset:1408
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v15, v46 offset:1664
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v16, v46 offset:1920
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v158, v46 offset:2176
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v159, v46 offset:2432
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v160, v46 offset:2688
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v161, v46 offset:2944
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v162, v46 offset:3200
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v163, v46 offset:3456
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v164, v46 offset:3712
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v165, v46 offset:3968
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v166, v46 offset:4224
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v167, v46 offset:4480
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v168, v46 offset:4736
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v169, v46 offset:4992
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v170, v46 offset:5248
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v171, v46 offset:5504
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v172, v46 offset:5760
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v173, v46 offset:6016
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v174, v46 offset:6272
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v175, v46 offset:6528
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v176, v46 offset:6784
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v177, v46 offset:7040
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v178, v46 offset:7296
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v179, v46 offset:7552
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v180, v46 offset:7808
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v181, v46 offset:8064
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v128, v129, v156, v110
	v_perm_b32 v129, v129, v156, v112
	v_perm_b32 v130, v131, v157, v110
	v_perm_b32 v131, v131, v157, v112
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(24)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[120:127], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v149, v150, v139, v110
	v_perm_b32 v150, v150, v139, v112
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v151, v152, v140, v110
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[158:165], v[128:135], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v152, v152, v140, v112
	v_perm_b32 v153, v184, v141, v110
	v_perm_b32 v154, v184, v141, v112
	v_perm_b32 v155, v185, v182, v110
	v_perm_b32 v156, v185, v182, v112
	v_perm_b32 v157, v186, v183, v110
	v_perm_b32 v158, v186, v183, v112
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v9, 0, v17, s2
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[166:173], v[143:150], v[1:8]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v115, v137 :: v_dual_fmac_f32 v18, v118, v9
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[174:181], v[151:158], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v116, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v18, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v38
	s_mov_b32 s1, 0x76543210
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_and_b32_e32 v11, 28, v39
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp80:
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v9, 0xff800000, v116 :: v_dual_cndmask_b32 v12, 0, v18
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v36
	.loc	1 1038 13                       ; attention.py:1038:13
	v_lshrrev_b32_e32 v21, 5, v0
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s54, s54, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v10, v9, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v13, v12, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v11, 0, v11
.Ltmp84:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp86:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v12, v12, v13 :: v_dual_cndmask_b32 v3, 0, v3
.Ltmp88:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_or_b32_e32 v21, v21, v35
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp89:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v10
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshl_add_u32 v10, v37, 2, 0
.Ltmp91:
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s43, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s41, s54
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
.Ltmp92:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v11, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v10
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v11, v12
.Ltmp94:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v12, 0, v4, vcc_lo
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v4, v1 :: v_dual_cndmask_b32 v13, 0, v5
	v_mov_b32_e32 v6, v3
.Ltmp96:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v10
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v5, v2 :: v_dual_mov_b32 v16, v12
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp98:
	.loc	1 1025 30 is_stmt 1             ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v15, 0, v7, vcc_lo
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v4
	v_dual_add_f32 v3, v3, v6 :: v_dual_max_f32 v4, v9, v9
.Ltmp102:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v7, v9 :: v_dual_add_f32 v2, v2, v5
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v11, v3 :: v_dual_cndmask_b32 v8, 0, v8
.Ltmp104:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v16
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v9, v2 :: v_dual_max_f32 v6, v7, v7
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v16, v12
.Ltmp107:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v4, v4, v6 :: v_dual_mov_b32 v5, v10
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp109:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v8, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v12, v12, v16
.Ltmp112:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v5, v10, v5 :: v_dual_add_f32 v10, v3, v11
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v7, v1 :: v_dual_max_f32 v6, v6, v6
	v_mov_b32_e32 v20, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v18, v10
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v9
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp117:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v4, v6
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp119:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v3, v5
.Ltmp120:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v1, v7 :: v_dual_mov_b32 v16, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v4, v10, v18
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp122:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v11, v1 :: v_dual_mov_b32 v18, v14
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v6, v4 :: v_dual_add_f32 v7, v5, v3
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v10, v7 :: v_dual_add_f32 v1, v1, v11
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v2
.Ltmp125:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v14, v18 :: v_dual_mov_b32 v19, v15
.Ltmp126:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v11, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp128:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v18, v14
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v2, v17
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v19
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v5, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v19, v15 :: v_dual_add_f32 v14, v14, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v17
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v17, v13
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v19
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v19, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp138:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v17
	v_dual_add_f32 v17, v8, v20 :: v_dual_add_f32 v14, v14, v19
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v18, v13
	v_mov_b32_e32 v22, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v12, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v13, v13, v18 :: v_dual_mov_b32 v12, v8
	v_dual_add_f32 v17, v17, v22 :: v_dual_mov_b32 v18, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v16, v13
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp144:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp145:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v11, v11, v11
	v_dual_max_f32 v9, v9, v9 :: v_dual_add_f32 v10, v7, v10
.Ltmp146:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
	v_mov_b32_e32 v7, 0
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp147:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v11
.Ltmp148:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s52, s4
	s_addc_u32 s5, s53, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v7, v[9:10], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp149:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v6, v4, v6 :: v_dual_add_f32 v5, v3, v5
.Ltmp150:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 0xc0, v34
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v7, v8, v12 :: v_dual_add_f32 v4, v1, v2
.Ltmp152:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v8, 0xe0, v32
	v_and_b32_e32 v1, 28, v32
	v_and_b32_e32 v2, 32, v33
.Ltmp153:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v20, v17, v20 :: v_dual_add_nc_u32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_add_f32 v19, v15, v19 :: v_dual_add_nc_u32 v8, 0, v8
	v_dual_add_f32 v18, v14, v18 :: v_dual_add_f32 v17, v13, v16
.Ltmp154:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v1, v3, v2, v1
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v0, 63, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[4:7]
	ds_store_b128 v8, v[17:20] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v0
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s43, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	v_cmp_eq_u32_e64 s0, 0, v31
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
.Ltmp155:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
		.amdhsa_next_free_vgpr 218
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_vgpr, 218
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.numbered_sgpr, 76
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11316
; TotalNumSgprs: 78
; NumVgprs: 218
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 78
; NumVGPRsForWavesPerEU: 218
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     78
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     218
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
