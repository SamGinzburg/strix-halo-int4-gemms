	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x30
	s_load_b32 s19, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v70, 4, v0
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_and_b32_e32 v71, 7, v0
	v_lshrrev_b32_e32 v75, 5, v0
	v_mov_b32_e32 v8, 0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v76, 3, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v66, 0x1f0, v70
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_lshlrev_b32_e32 v65, 1, v71
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v7, v8 :: v_dual_lshlrev_b32 v68, 1, v0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_bfe_i32 v41, v0, 6, 1
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_and_b32_e32 v81, 0x1e0, v0
	v_bfe_i32 v69, v0, 3, 1
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s17, 0x1ff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s16, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 23
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 9
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s14, s4, 2
	v_mov_b32_e32 v9, v8
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s14
	v_mov_b32_e32 v24, v8
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_rcp_iflag_f32_e32 v1, s5
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_readfirstlane_b32 s5, v1
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_mov_b32_e32 v40, v8
	v_mov_b32_e32 v39, v8
	v_mov_b32_e32 v38, v8
	s_cvt_u32_f32 s5, s5
	v_mov_b32_e32 v37, v8
	v_mov_b32_e32 v36, v8
	v_mov_b32_e32 v35, v8
	s_mul_i32 s8, s8, s5
	v_mov_b32_e32 v34, v8
	s_mul_hi_u32 s8, s5, s8
	v_mov_b32_e32 v33, v8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s14
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	v_mov_b32_e32 v56, v8
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	v_mov_b32_e32 v55, v8
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	v_mov_b32_e32 v54, v8
	s_cselect_b32 s4, s9, s5
	v_mov_b32_e32 v53, v8
	s_xor_b32 s4, s4, s8
	v_mov_b32_e32 v52, v8
	s_sub_i32 s15, s4, s8
	v_mov_b32_e32 v51, v8
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s16, s15, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s15, s15, s14
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s7, s16
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s15
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s18, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s21, s18
	s_abs_i32 s14, s2
	s_cvt_f32_u32 s12, s21
	s_load_b64 s[0:1], s[0:1], 0x20
	v_mov_b32_e32 v50, v8
	v_mov_b32_e32 v49, v8
	v_rcp_iflag_f32_e32 v1, s12
	v_mov_b32_e32 v64, v8
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v62, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v60, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v58, v8
	v_mov_b32_e32 v57, v8
	v_mov_b32_e32 v48, v8
	v_readfirstlane_b32 s12, v1
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_mad_u64_u32 v[1:2], null, s17, v75, v[66:67]
	v_dual_mov_b32 v6, v8 :: v_dual_and_b32 v67, 15, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s12, s12, 0x4f7ffffe
	v_mov_b32_e32 v47, v8
	v_mov_b32_e32 v46, v8
	v_mov_b32_e32 v45, v8
	s_cvt_u32_f32 s20, s12
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[12:13], s[6:7]
	s_sub_i32 s6, 0, s21
	s_mov_b32 s7, 0x31027000
	s_mul_i32 s6, s6, s20
	v_mov_b32_e32 v44, v8
	s_mul_hi_u32 s6, s20, s6
	v_mov_b32_e32 v43, v8
	s_add_i32 s20, s20, s6
	s_xor_b32 s6, s2, s18
	s_mul_hi_u32 s15, s14, s20
	s_ashr_i32 s20, s6, 31
	s_mul_i32 s22, s15, s21
	s_mov_b32 s6, 0x7ffffffe
	s_sub_i32 s14, s14, s22
	s_add_i32 s22, s15, 1
	s_sub_i32 s23, s14, s21
	s_cmp_ge_u32 s14, s21
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v41, 0x88, v41
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s15, s22, s15
	s_cselect_b32 s14, s23, s14
	s_add_i32 s22, s15, 1
	s_cmp_ge_u32 s14, s21
	s_cselect_b32 s14, s22, s15
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s15, s19, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s22, s14, s20
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s23, s3, 4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s3, s19, s15
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s15, s22, s20
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s21, s3, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s3, s15, s18
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mad_u64_u32 v[2:3], null, s21, v76, v[65:66]
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s3
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v4, s23, v65
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v5, s23, v75
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s16, s2, 6
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s3, s15, 9
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s21, v4
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s15, s16, s21
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s19, 1
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	s_mul_i32 s14, s17, s23
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e64 s2, s21, v5
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add3_u32 v2, s23, s15, v2
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s18, -1, 0
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_add3_u32 v1, s14, s3, v1
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s18, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_and_b32 s5, s5, 0xffff
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s18, s2
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s14, s6
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_mov_b32 s15, s7
	s_and_b32 s13, s13, 0xffff
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u16 v74, v2, s[4:7], 0 offen
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b128 v[77:80], v1, s[12:15], 0 offen
	v_mov_b32_e32 v5, v8
	v_dual_mov_b32 v3, v8 :: v_dual_and_b32 v42, 0x37e, v68
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v4, v8
	v_dual_mov_b32 v1, v8 :: v_dual_add_nc_u32 v72, 0, v70
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xor_b32_e32 v73, v41, v42
	v_mov_b32_e32 v16, v8
	v_dual_mov_b32 v15, v8 :: v_dual_lshlrev_b32 v70, 4, v71
	v_mov_b32_e32 v42, v8
	v_mov_b32_e32 v41, v8
	v_add_nc_u32_e32 v73, 0, v73
	v_lshrrev_b32_e32 v71, 1, v81
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lt_i32 s19, 34
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(1)
	ds_store_b16 v73, v74 offset:8192
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v72, v[77:80]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_add_i32 s2, s23, 16
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v2, 0, v67
	v_add_nc_u32_e32 v1, s2, v75
	v_and_or_b32 v3, 0x88, v69, v70
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s14, s21, 15
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v44, v41 :: v_dual_add_nc_u32 v5, s16, v76
	v_mov_b32_e32 v42, v41
.Ltmp13:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_mul_lo_u32 v1, s17, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s14, s14, 4
	v_xor_b32_e32 v6, 8, v3
.Ltmp15:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_sub_nc_u32_e64 v4, s14, 2 clamp
	s_lshl_b32 s14, s22, 9
	v_dual_mov_b32 v46, v41 :: v_dual_add_nc_u32 v3, 0, v3
	v_sub_nc_u32_e32 v74, s21, v65
	s_delay_alu instid0(VALU_DEP_3)
	v_readfirstlane_b32 s19, v4
	v_add3_u32 v1, v1, s14, v66
	v_dual_mov_b32 v43, v41 :: v_dual_add_nc_u32 v4, 0, v6
	v_mad_u64_u32 v[65:66], null, s21, v5, v[65:66]
	s_lshl_b32 s15, s20, 9
	v_sub_nc_u32_e32 v75, s21, v75
	v_subrev_nc_u32_e32 v76, s15, v1
	v_dual_mov_b32 v45, v41 :: v_dual_add_nc_u32 v66, v2, v71
	v_dual_mov_b32 v48, v41 :: v_dual_add_nc_u32 v77, 0x2000, v3
	v_dual_mov_b32 v47, v41 :: v_dual_add_nc_u32 v78, 0x2000, v4
	v_mov_b32_e32 v57, v41
	v_mov_b32_e32 v58, v41
	v_mov_b32_e32 v59, v41
	v_mov_b32_e32 v60, v41
	v_mov_b32_e32 v61, v41
	v_mov_b32_e32 v62, v41
	v_mov_b32_e32 v63, v41
	v_mov_b32_e32 v64, v41
	v_mov_b32_e32 v49, v41
	v_mov_b32_e32 v50, v41
	v_mov_b32_e32 v51, v41
	v_mov_b32_e32 v52, v41
	v_mov_b32_e32 v53, v41
	v_mov_b32_e32 v54, v41
	v_mov_b32_e32 v55, v41
	v_mov_b32_e32 v56, v41
	v_mov_b32_e32 v33, v41
	v_mov_b32_e32 v34, v41
	v_mov_b32_e32 v35, v41
	v_mov_b32_e32 v36, v41
	v_mov_b32_e32 v37, v41
	v_mov_b32_e32 v38, v41
	v_mov_b32_e32 v39, v41
	v_mov_b32_e32 v40, v41
	v_mov_b32_e32 v25, v41
	v_mov_b32_e32 v26, v41
	v_mov_b32_e32 v27, v41
	v_mov_b32_e32 v28, v41
	v_mov_b32_e32 v29, v41
	v_mov_b32_e32 v30, v41
	v_mov_b32_e32 v31, v41
	v_mov_b32_e32 v32, v41
	v_mov_b32_e32 v17, v41
	v_mov_b32_e32 v18, v41
	v_mov_b32_e32 v19, v41
	v_mov_b32_e32 v20, v41
	v_mov_b32_e32 v21, v41
	v_mov_b32_e32 v22, v41
	v_mov_b32_e32 v23, v41
	v_mov_b32_e32 v24, v41
	v_mov_b32_e32 v9, v41
	v_mov_b32_e32 v10, v41
	v_mov_b32_e32 v11, v41
	v_mov_b32_e32 v12, v41
	v_mov_b32_e32 v13, v41
	v_mov_b32_e32 v14, v41
	v_mov_b32_e32 v15, v41
	v_mov_b32_e32 v16, v41
	v_mov_b32_e32 v1, v41
	v_mov_b32_e32 v2, v41
	v_mov_b32_e32 v3, v41
	v_mov_b32_e32 v4, v41
	v_mov_b32_e32 v5, v41
	v_mov_b32_e32 v6, v41
	v_mov_b32_e32 v7, v41
	v_mov_b32_e32 v8, v41
	s_add_i32 s19, s19, 1
	s_lshl_b32 s20, s17, 4
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s2, v75
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v79, s2, v65
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s19, s19, -1
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_cndmask_b32_e32 v80, 0x80000000, v76, vcc_lo
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e32 vcc_lo, s2, v74
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v76, s20, v76
	s_add_i32 s2, s2, 16
	s_cmp_lg_u32 s19, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	buffer_load_u16 v107, v79, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b128 v[79:82], v80, s[12:15], 0 offen
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v99, v66 offset:2560
	ds_load_u8 v100, v66 offset:2048
	ds_load_u8 v101, v66 offset:3584
	ds_load_u8 v102, v66 offset:3072
	ds_load_u8 v103, v66 offset:3840
	ds_load_u8 v104, v66 offset:3328
	ds_load_u8 v105, v66 offset:2816
	ds_load_u8 v106, v66 offset:2304
	ds_load_u8 v108, v66 offset:512
	ds_load_u8 v109, v66
	ds_load_u8 v110, v66 offset:1536
	ds_load_u8 v111, v66 offset:1792
	ds_load_u8 v112, v66 offset:1280
	ds_load_u8 v113, v66 offset:768
	ds_load_u8 v114, v66 offset:1024
	ds_load_u8 v115, v66 offset:256
	ds_load_u8 v116, v66 offset:6656
	ds_load_u8 v117, v66 offset:6144
	ds_load_u8 v118, v66 offset:7680
	ds_load_u8 v119, v66 offset:7168
	ds_load_u8 v120, v66 offset:7936
	ds_load_u8 v121, v66 offset:7424
	ds_load_u8 v122, v66 offset:6912
	ds_load_u8 v123, v66 offset:6400
	ds_load_u8 v124, v66 offset:4608
	ds_load_u8 v125, v66 offset:4096
	ds_load_u8 v126, v66 offset:5632
	ds_load_u8 v127, v66 offset:5120
	ds_load_u8 v128, v66 offset:4864
	ds_load_u8 v129, v66 offset:5888
	ds_load_u8 v130, v66 offset:4352
	ds_load_u8 v131, v66 offset:5376
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[83:86], v77 offset1:32
	ds_load_2addr_b64 v[87:90], v77 offset0:64 offset1:96
	ds_load_2addr_b64 v[91:94], v78 offset1:32
	ds_load_2addr_b64 v[95:98], v78 offset0:64 offset1:96
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v100, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v101, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v102, v114, v110, 0xc0c0004
	v_perm_b32 v105, v106, v105, 0xc0c0004
	v_perm_b32 v103, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v104, v115, v113, 0xc0c0004
	v_perm_b32 v106, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v108, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v109, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v110, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v111, v127, v126, 0xc0c0004
	v_perm_b32 v112, v123, v122, 0xc0c0004
	v_perm_b32 v113, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v114, v130, v128, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v115, v131, v129, 0xc0c0004
	v_lshl_or_b32 v100, v100, 16, v99
	v_lshl_or_b32 v99, v102, 16, v101
	v_lshl_or_b32 v102, v103, 16, v105
	v_lshl_or_b32 v101, v106, 16, v104
	v_lshl_or_b32 v104, v109, 16, v108
	v_lshl_or_b32 v103, v111, 16, v110
	v_lshl_or_b32 v106, v113, 16, v112
	v_lshl_or_b32 v105, v115, 16, v114
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[99:100], v[83:84], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[101:102], v[83:84], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[99:100], v[85:86], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[101:102], v[85:86], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[99:100], v[87:88], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[99:100], v[89:90], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[101:102], v[87:88], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[101:102], v[89:90], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[103:104], v[91:92], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[105:106], v[91:92], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[103:104], v[93:94], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[105:106], v[93:94], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[103:104], v[95:96], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[105:106], v[95:96], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[103:104], v[97:98], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[105:106], v[97:98], v[1:8] neg_lo:[1,1,0]
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b16 v73, v107 offset:8192
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v72, v[79:82]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, s18
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add3_u32 v65, 0, v71, v67
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_or_b32 v66, 0x88, v69, v70
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v73, v65 offset:2560
	ds_load_u8 v74, v65 offset:2048
	ds_load_u8 v75, v65 offset:3584
	ds_load_u8 v76, v65 offset:3072
	ds_load_u8 v77, v65 offset:512
	ds_load_u8 v78, v65
	ds_load_u8 v79, v65 offset:1536
	ds_load_u8 v80, v65 offset:1024
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xad_u32 v69, v66, 8, 0
	v_add_nc_u32_e32 v66, 0, v66
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v85, v65 offset:3840
	ds_load_u8 v86, v65 offset:3328
	ds_load_u8 v87, v65 offset:2816
	ds_load_u8 v88, v65 offset:2304
	ds_load_u8 v89, v65 offset:1792
	ds_load_u8 v90, v65 offset:1280
	ds_load_u8 v91, v65 offset:768
	ds_load_u8 v92, v65 offset:256
	ds_load_u8 v93, v65 offset:6656
	ds_load_u8 v94, v65 offset:6144
	ds_load_u8 v95, v65 offset:4608
	ds_load_u8 v96, v65 offset:4096
	ds_load_u8 v97, v65 offset:5632
	ds_load_u8 v98, v65 offset:5120
	ds_load_u8 v99, v65 offset:7680
	ds_load_u8 v100, v65 offset:7168
	ds_load_u8 v101, v65 offset:7936
	ds_load_u8 v102, v65 offset:7424
	ds_load_u8 v103, v65 offset:6912
	ds_load_u8 v104, v65 offset:6400
	ds_load_u8 v105, v65 offset:5888
	ds_load_u8 v106, v65 offset:5376
	ds_load_u8 v107, v65 offset:4864
	ds_load_u8 v108, v65 offset:4352
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v82, 0x2000, v69
	v_add_nc_u32_e32 v81, 0x2000, v66
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[69:72], v81 offset1:32
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_perm_b32 v66, v74, v73, 0xc0c0004
	v_perm_b32 v73, v76, v75, 0xc0c0004
	v_perm_b32 v74, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v94, v102, v101, 0xc0c0004
	v_perm_b32 v75, v80, v79, 0xc0c0004
	v_lshl_or_b32 v66, v73, 16, v66
	v_perm_b32 v85, v86, v85, 0xc0c0004
	v_perm_b32 v87, v88, v87, 0xc0c0004
	v_perm_b32 v88, v92, v91, 0xc0c0004
	v_lshl_or_b32 v65, v75, 16, v74
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[73:76], v82 offset0:64 offset1:96
	ds_load_2addr_b64 v[77:80], v82 offset1:32
	ds_load_2addr_b64 v[81:84], v81 offset0:64 offset1:96
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_perm_b32 v89, v90, v89, 0xc0c0004
	v_perm_b32 v90, v100, v99, 0xc0c0004
	v_perm_b32 v91, v96, v95, 0xc0c0004
	v_perm_b32 v92, v98, v97, 0xc0c0004
	v_lshl_or_b32 v86, v85, 16, v87
	v_lshl_or_b32 v85, v89, 16, v88
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v89, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v95, v108, v107, 0xc0c0004
	v_perm_b32 v96, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[65:66], v[69:70], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v88, v90, 16, v93
	v_lshl_or_b32 v87, v92, 16, v91
	v_wmma_i32_16x16x16_iu4 v[57:64], v[85:86], v[69:70], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v70, v94, 16, v89
	v_lshl_or_b32 v69, v96, 16, v95
	v_wmma_i32_16x16x16_iu4 v[49:56], v[65:66], v[71:72], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[85:86], v[71:72], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[87:88], v[77:78], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[81:82], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[85:86], v[81:82], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[83:84], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[85:86], v[83:84], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[69:70], v[77:78], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[87:88], v[79:80], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[79:80], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[87:88], v[73:74], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[69:70], v[73:74], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[87:88], v[75:76], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[69:70], v[75:76], v[1:8] neg_lo:[1,1,0]
.LBB0_5:                                ; %._crit_edge._crit_edge
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v65, s16, v67
	.loc	1 128 14 is_stmt 0              ; generate_amdgcn.py:128:14
	s_and_b32 s5, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s8
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_lshlrev_b32_e32 v65, 1, v65
	.loc	1 129 22 is_stmt 1              ; generate_amdgcn.py:129:22
	v_or_b32_e32 v66, s3, v0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v73, v45
	v_cvt_f32_i32_e32 v45, v51
	v_cvt_f32_i32_e32 v75, v43
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_or_b32_e32 v69, 32, v65
	v_or_b32_e32 v70, 64, v65
	v_or_b32_e32 v71, 0x60, v65
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v43, v49
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_clause 0x3
	buffer_load_u16 v82, v65, s[4:7], 0 offen
	buffer_load_u16 v83, v69, s[4:7], 0 offen
	buffer_load_u16 v84, v70, s[4:7], 0 offen
	buffer_load_u16 v85, v71, s[4:7], 0 offen
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v71, v47
	v_cvt_f32_i32_e32 v70, v48
	v_cvt_f32_i32_e32 v47, v53
	v_cvt_f32_i32_e32 v48, v54
	v_cvt_f32_i32_e32 v49, v55
	v_cvt_f32_i32_e32 v72, v46
	v_cvt_f32_i32_e32 v46, v52
	v_cvt_f32_i32_e32 v52, v2
	v_cvt_f32_i32_e32 v77, v41
	v_cvt_f32_i32_e32 v76, v42
	v_cvt_f32_i32_e32 v69, v57
	v_cvt_f32_i32_e32 v65, v59
	v_cvt_f32_i32_e32 v59, v61
	v_cvt_f32_i32_e32 v57, v62
	v_cvt_f32_i32_e32 v41, v63
	v_cvt_f32_i32_e32 v42, v64
	v_cvt_f32_i32_e32 v74, v44
	v_cvt_f32_i32_e32 v44, v50
	v_cvt_f32_i32_e32 v50, v56
	v_cvt_f32_i32_e32 v56, v6
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s16, s16, s17
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	s_mov_b32 s2, 0x76543210
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s1, s1, 0xffff
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v89, 16, v83
	v_lshlrev_b32_e32 v88, 16, v82
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v66, 1, v66
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v86, 0x1f0, v0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_lshlrev_b32_e32 v51, 5, v0
	v_and_b32_e32 v53, 28, v68
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v68, v8
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	buffer_load_u16 v78, v66, s[4:7], 0 offen
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_lshl_add_u32 v55, v86, 2, 0
	v_and_b32_e32 v54, 32, v51
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v51, v1
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v66, v58
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_add3_u32 v1, v55, v54, v53
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v53, v3
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_lshl_add_u32 v3, v86, 1, 0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v58, v60
	v_cvt_f32_i32_e32 v55, v5
	v_cvt_f32_i32_e32 v60, v7
	v_cvt_f32_i32_e32 v54, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.h, 0
	v_and_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b16_e32 v87.h, v4.h
	v_mov_b16_e64 v140.h, v4.h
	v_mov_b16_e64 v142.h, v4.h
	v_mov_b16_e64 v139.h, v4.h
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_mov_b16_e64 v141.h, v4.h
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v78
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	ds_store_b32 v1, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[61:64], v3
	ds_load_b128 v[78:81], v3 offset:16
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v1, s17, v67
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v67.h, v4.h
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v101, v63, v89
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v96, v79, v88 :: v_dual_lshlrev_b32 v91, 16, v85
	v_mul_f32_e32 v94, v64, v88
	v_dual_mul_f32 v103, v78, v89 :: v_dual_lshlrev_b32 v90, 16, v84
	ds_load_b128 v[5:8], v3 offset:1024
	ds_load_b128 v[82:85], v3 offset:1040
	v_mul_f32_e32 v92, v62, v88
	v_mul_f32_e32 v93, v63, v88
	v_dual_mul_f32 v97, v80, v88 :: v_dual_mul_f32 v104, v79, v89
	v_dual_mul_f32 v100, v62, v89 :: v_dual_mul_f32 v107, v61, v90
	v_mul_f32_e32 v108, v62, v90
	v_mul_f32_e32 v62, v62, v91
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v76, v92, v76 :: v_dual_mul_f32 v75, v93, v75
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v95, v78, v88
	v_dual_mul_f32 v98, v81, v88 :: v_dual_mul_f32 v105, v80, v89
	v_mul_f32_e32 v102, v64, v89
	v_dual_mul_f32 v106, v81, v89 :: v_dual_mul_f32 v109, v63, v90
	v_dual_mul_f32 v110, v64, v90 :: v_dual_mul_f32 v63, v63, v91
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v117, v7, v88 :: v_dual_mul_f32 v120, v6, v89
	v_dual_mul_f32 v111, v78, v90 :: v_dual_mul_f32 v64, v64, v91
	v_dual_mul_f32 v113, v80, v90 :: v_dual_mul_f32 v78, v78, v91
	v_dual_mul_f32 v80, v80, v91 :: v_dual_mul_f32 v115, v5, v88
	v_dual_mul_f32 v116, v6, v88 :: v_dual_mul_f32 v119, v5, v89
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v130, v82, v88 :: v_dual_mul_f32 v135, v84, v89
	v_dual_mul_f32 v132, v84, v88 :: v_dual_mul_f32 v133, v82, v89
	v_mul_f32_e32 v134, v83, v89
	v_mul_f32_e32 v138, v84, v90
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v74, v94, v74 :: v_dual_mul_f32 v71, v97, v71
	v_dual_mul_f32 v72, v96, v72 :: v_dual_mul_f32 v65, v117, v65
	v_dual_mul_f32 v10, v62, v10 :: v_dual_mul_f32 v11, v63, v11
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 137 19 is_stmt 1              ; generate_amdgcn.py:137:19
	v_dual_max_f32 v62, 0, v76 :: v_dual_max_f32 v71, 0, v71
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v3, v61, v88
	v_dual_mul_f32 v99, v61, v89 :: v_dual_mul_f32 v112, v79, v90
	v_dual_mul_f32 v114, v81, v90 :: v_dual_mul_f32 v79, v79, v91
	v_dual_mul_f32 v118, v8, v88 :: v_dual_mul_f32 v121, v7, v89
	v_dual_mul_f32 v122, v8, v89 :: v_dual_mul_f32 v123, v5, v90
	v_dual_mul_f32 v124, v6, v90 :: v_dual_mul_f32 v127, v5, v91
	v_dual_mul_f32 v125, v7, v90 :: v_dual_mul_f32 v128, v6, v91
	v_dual_mul_f32 v126, v8, v90 :: v_dual_mul_f32 v129, v7, v91
	v_dual_mul_f32 v8, v8, v91 :: v_dual_mul_f32 v131, v83, v88
	v_dual_mul_f32 v88, v85, v88 :: v_dual_mul_f32 v137, v83, v90
	v_dual_mul_f32 v89, v85, v89 :: v_dual_mul_f32 v136, v82, v90
	v_dual_mul_f32 v90, v85, v90 :: v_dual_mul_f32 v77, v3, v77
	v_dual_mul_f32 v82, v82, v91 :: v_dual_mul_f32 v73, v95, v73
	v_mul_f32_e32 v83, v83, v91
	v_dual_mul_f32 v84, v84, v91 :: v_dual_mul_f32 v69, v115, v69
	v_dual_mul_f32 v85, v85, v91 :: v_dual_mul_f32 v66, v116, v66
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v59, v130, v59
	v_dual_mul_f32 v37, v133, v37 :: v_dual_mul_f32 v38, v134, v38
	v_dual_mul_f32 v23, v138, v23 :: v_dual_mul_f32 v12, v64, v12
	.loc	1 137 19 is_stmt 1              ; generate_amdgcn.py:137:19
	v_dual_max_f32 v64, 0, v74 :: v_dual_max_f32 v69, 0, v69
	v_dual_max_f32 v72, 0, v72 :: v_dual_max_f32 v65, 0, v65
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v62, v62, v62
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v2, 1, v86
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v61, v61, v91 :: v_dual_mul_f32 v70, v98, v70
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v57, v131, v57
	v_dual_mul_f32 v41, v132, v41 :: v_dual_mul_f32 v46, v102, v46
	v_dual_mul_f32 v25, v107, v25 :: v_dual_mul_f32 v26, v108, v26
	v_dual_mul_f32 v53, v129, v53 :: v_dual_mul_f32 v8, v8, v54
	v_dual_mul_f32 v54, v82, v55 :: v_dual_mul_f32 v55, v83, v56
	v_mul_f32_e32 v56, v84, v60
	v_dual_mul_f32 v60, v85, v68 :: v_dual_max_f32 v63, 0, v75
	.loc	1 137 19 is_stmt 1              ; generate_amdgcn.py:137:19
	v_dual_max_f32 v68, 0, v73 :: v_dual_max_f32 v59, 0, v59
	v_dual_max_f32 v38, 0, v38 :: v_dual_max_f32 v25, 0, v25
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v64, v64, v64 :: v_dual_mul_f32 v65, v65, v65
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v62.h
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v81, v81, v91
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v5, s16, s3, v2
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v58, v118, v58
	v_dual_mul_f32 v42, v88, v42 :: v_dual_mul_f32 v43, v99, v43
	v_dual_mul_f32 v29, v111, v29 :: v_dual_mul_f32 v30, v112, v30
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v70, 0, v70 :: v_dual_max_f32 v57, 0, v57
	v_dual_max_f32 v66, 0, v66 :: v_dual_max_f32 v41, 0, v41
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v29, 0, v29
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v72, v72, v72 :: v_dual_mul_f32 v59, v59, v59
	v_dual_mul_f32 v38, v38, v38 :: v_dual_and_b32 v73, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v64.h
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mad_u64_u32 v[2:3], null, s17, 48, v[1:2]
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v44, v100, v44 :: v_dual_add_nc_u32 v3, 0x100, v5
	v_mul_f32_e32 v45, v101, v45
	v_dual_mul_f32 v39, v135, v39 :: v_dual_mul_f32 v40, v89, v40
	v_dual_mul_f32 v31, v113, v31 :: v_dual_mul_f32 v32, v114, v32
	v_dual_mul_f32 v19, v125, v19 :: v_dual_mul_f32 v20, v126, v20
	v_dual_mul_f32 v24, v90, v24 :: v_dual_mul_f32 v9, v61, v9
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v61, 0, v77 :: v_dual_max_f32 v58, 0, v58
	v_dual_max_f32 v43, 0, v43 :: v_dual_mul_f32 v68, v68, v68
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v57, v57, v57 :: v_dual_mul_f32 v70, v70, v70
	v_dual_mul_f32 v41, v41, v41 :: v_dual_mul_f32 v26, v26, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v77, 1, v4
	v_mov_b16_e32 v4.l, v72.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v47, v103, v47 :: v_dual_mul_f32 v48, v104, v48
	v_dual_mul_f32 v35, v121, v35 :: v_dual_mul_f32 v36, v122, v36
	v_dual_mul_f32 v27, v109, v27 :: v_dual_mul_f32 v28, v110, v28
	v_dual_mul_f32 v13, v78, v13 :: v_dual_mul_f32 v14, v79, v14
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v42, 0, v42 :: v_dual_max_f32 v45, 0, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_max_f32 v40, 0, v40 :: v_dual_max_f32 v27, 0, v27
	v_dual_max_f32 v32, 0, v32 :: v_dual_max_f32 v19, 0, v19
	v_dual_max_f32 v8, 0, v8 :: v_dual_mul_f32 v61, v61, v61
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v66, v66, v66 :: v_dual_mul_f32 v45, v45, v45
	v_mul_f32_e32 v43, v43, v43
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v87.l, v68.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v19, v19, v19 :: v_dual_and_b32 v82, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v70.h
	v_mov_b16_e32 v92.h, v4.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v17, v123, v17 :: v_dual_mul_f32 v18, v124, v18
	v_dual_mul_f32 v21, v136, v21 :: v_dual_mul_f32 v22, v137, v22
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v44, 0, v44 :: v_dual_max_f32 v47, 0, v47
	v_dual_max_f32 v36, 0, v36 :: v_dual_max_f32 v39, 0, v39
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v13, 0, v13
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v58, v58, v58 :: v_dual_mul_f32 v47, v47, v47
	v_dual_mul_f32 v40, v40, v40 :: v_dual_and_b32 v75, 1, v87
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v67.l, v61.h
	v_mov_b16_e32 v92.l, v43.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v10, v10, v10 :: v_dual_and_b32 v87, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v66.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v49, v105, v49 :: v_dual_mul_f32 v50, v106, v50
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v18, 0, v18 :: v_dual_max_f32 v21, 0, v21
	v_dual_max_f32 v24, 0, v24 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v54, 0, v54 :: v_dual_mul_f32 v63, v63, v63
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v36, v36, v36 :: v_dual_and_b32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v18, v18, v18 :: v_dual_and_b32 v83, 1, v92
	v_dual_mul_f32 v11, v11, v11 :: v_dual_and_b32 v92, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v58.h
	v_mov_b16_e32 v86.h, v4.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v33, v119, v33 :: v_dual_mul_f32 v34, v120, v34
	v_dual_mul_f32 v51, v127, v51 :: v_dual_mul_f32 v52, v128, v52
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v46, 0, v46 :: v_dual_max_f32 v49, 0, v49
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v42, v42, v42
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v86.l, v63.h
	v_add3_u32 v61, v61, v67, 0x7fff
	v_add3_u32 v67, v68, v75, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v13, v13, v13 :: v_dual_and_b32 v68, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v57.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v15, v80, v15 :: v_dual_mul_f32 v16, v81, v16
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v48, 0, v48 :: v_dual_max_f32 v33, 0, v33
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v51, 0, v51
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v44, v44, v44 :: v_dual_mul_f32 v49, v49, v49
	v_dual_mul_f32 v27, v27, v27 :: v_dual_and_b32 v74, 1, v86
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v62, v62, v73, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v14, v14, v14 :: v_dual_and_b32 v73, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v42.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v50, 0, v50 :: v_dual_max_f32 v35, 0, v35
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v15, 0, v15
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v46, v46, v46 :: v_dual_mul_f32 v33, v33, v33
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v63, v63, v74, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v15, v15, v15 :: v_dual_and_b32 v74, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v44.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v34, 0, v34 :: v_dual_max_f32 v37, 0, v37
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v48, v48, v48 :: v_dual_mul_f32 v35, v35, v35
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v140.l, v65.h
	v_and_b32_e32 v75, 1, v4
	v_mov_b16_e32 v4.l, v46.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v17, 0, v17
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v53, 0, v53
	v_dual_max_f32 v56, 0, v56 :: v_dual_mul_f32 v71, v71, v71
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v50, v50, v50 :: v_dual_mul_f32 v39, v39, v39
	v_mul_f32_e32 v37, v37, v37
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v142.l, v41.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v30, v30, v30 :: v_dual_and_b32 v79, 1, v140
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v62.l, v61.h
	v_add3_u32 v61, v64, v77, 0x7fff
	v_and_b32_e32 v64, 1, v4
	v_mov_b16_e32 v4.l, v48.h
	v_mov_b16_e32 v61.l, v63.h
	v_add3_u32 v63, v72, v82, 0x7fff
	v_mov_b16_e32 v91.h, v4.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v28, 0, v28 :: v_dual_max_f32 v31, 0, v31
	v_dual_max_f32 v60, 0, v60 :: v_dual_mul_f32 v69, v69, v69
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v34, v34, v34 :: v_dual_mul_f32 v25, v25, v25
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v91.l, v71.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v28, v28, v28 :: v_dual_and_b32 v81, 1, v142
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v65, v65, v79, 0x7fff
	v_mov_b16_e32 v63.l, v67.h
	v_add3_u32 v67, v70, v87, 0x7fff
	v_and_b32_e32 v70, 1, v4
	v_mov_b16_e32 v4.l, v50.h
	v_add3_u32 v58, v58, v68, 0x7fff
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v52, 0, v52 :: v_dual_max_f32 v55, 0, v55
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v139.l, v69.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v29, v29, v29 :: v_dual_and_b32 v76, 1, v91
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v41, v41, v81, 0x7fff
	v_mov_b16_e32 v58.l, v65.h
	v_and_b32_e32 v65, 1, v4
	v_mov_b16_e32 v4.l, v34.h
	v_mov_b16_e32 v96.h, v4.h
	v_mov_b16_e32 v96.l, v33.h
	v_add3_u32 v42, v42, v74, 0x7fff
	v_mov_b16_e32 v97.h, v4.h
	v_mov_b16_e32 v97.l, v35.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v17, v17, v17 :: v_dual_and_b32 v78, 1, v139
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v71, v71, v76, 0x7fff
	v_add3_u32 v43, v43, v83, 0x7fff
	v_mov_b16_e32 v42.l, v41.h
	v_add3_u32 v41, v44, v75, 0x7fff
	v_and_b32_e32 v44, 1, v4
	v_mov_b16_e32 v4.l, v36.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v20, 0, v20 :: v_dual_max_f32 v23, 0, v23
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v88, 1, v96
	v_mov_b16_e32 v98.h, v4.h
	v_mov_b16_e32 v98.l, v37.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v20, v20, v20 :: v_dual_and_b32 v89, 1, v97
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v69, v69, v78, 0x7fff
	v_mov_b16_e32 v67.l, v71.h
	v_mov_b16_e32 v41.l, v43.h
	v_add3_u32 v43, v46, v64, 0x7fff
	v_and_b32_e32 v46, 1, v4
	v_mov_b16_e32 v4.l, v38.h
	v_add3_u32 v66, v66, v92, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v23, v23, v23
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v33, v33, v88, 0x7fff
	v_mov_b16_e32 v115.h, v4.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v22, 0, v22 :: v_dual_max_f32 v9, 0, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v115.l, v39.h
	v_and_b32_e32 v90, 1, v98
	v_add3_u32 v35, v35, v89, 0x7fff
	v_mov_b16_e32 v66.l, v69.h
	v_add3_u32 v57, v57, v73, 0x7fff
	v_add3_u32 v34, v34, v44, 0x7fff
	v_and_b32_e32 v44, 1, v4
	v_mov_b16_e32 v4.l, v40.h
	v_mov_b16_e32 v34.l, v33.h
	v_add3_u32 v33, v36, v46, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v24, v24, v24 :: v_dual_and_b32 v91, 1, v115
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v33.l, v35.h
	v_add3_u32 v35, v38, v44, 0x7fff
	v_mov_b16_e32 v38.l, v25.h
	v_mov_b16_e32 v38.h, v4.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v9, v9, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v37, v37, v90, 0x7fff
	v_and_b32_e32 v36, 1, v4
	v_mov_b16_e32 v4.l, v26.h
	v_and_b32_e32 v38, 1, v38
	v_mov_b16_e64 v141.l, v59.h
	v_mov_b16_e32 v35.l, v37.h
	v_add3_u32 v37, v39, v91, 0x7fff
	v_add3_u32 v36, v40, v36, 0x7fff
	v_and_b32_e32 v39, 1, v4
	v_add3_u32 v25, v25, v38, 0x7fff
	v_mov_b16_e32 v37.l, v27.h
	v_mov_b16_e32 v36.l, v37.h
	v_mov_b16_e32 v37.h, v4.h
	v_add3_u32 v26, v26, v39, 0x7fff
	v_and_b32_e32 v80, 1, v141
	v_mov_b16_e32 v4.l, v28.h
	v_mov_b16_e32 v26.l, v25.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v12, v12, v12 :: v_dual_and_b32 v25, 1, v37
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v38.l, v29.h
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v37, 1, v4
	v_mov_b16_e32 v4.l, v30.h
	v_mov_b16_e32 v38.h, v4.h
	v_add3_u32 v25, v27, v25, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v27, v31, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v59, v59, v80, 0x7fff
	v_mov_b16_e32 v94.h, v4.h
	v_mov_b16_e32 v94.l, v47.h
	v_add3_u32 v28, v28, v37, 0x7fff
	v_and_b32_e32 v37, 1, v38
	v_mov_b16_e32 v57.l, v59.h
	v_and_b32_e32 v31, 1, v4
	v_mov_b16_e32 v38.l, v27.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v32, v32, v32 :: v_dual_and_b32 v85, 1, v94
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v28.l, v25.h
	v_add3_u32 v25, v29, v37, 0x7fff
	v_add3_u32 v29, v30, v31, 0x7fff
	v_and_b32_e32 v30, 1, v38
	v_mov_b16_e32 v4.l, v32.h
	v_mov_b16_e32 v93.h, v4.h
	v_mov_b16_e32 v29.l, v25.h
	v_mov_b16_e32 v93.l, v45.h
	v_add3_u32 v27, v27, v30, 0x7fff
	v_mov_b16_e32 v30.l, v17.h
	v_mov_b16_e32 v30.h, v4.h
	v_and_b32_e32 v25, 1, v4
	v_mov_b16_e32 v4.l, v18.h
	v_and_b32_e32 v84, 1, v93
	v_mov_b16_e32 v95.h, v4.h
	v_and_b32_e32 v30, 1, v30
	v_mov_b16_e32 v95.l, v49.h
	v_and_b32_e32 v31, 1, v4
	v_add3_u32 v25, v32, v25, 0x7fff
	v_mov_b16_e32 v32.l, v19.h
	v_add3_u32 v17, v17, v30, 0x7fff
	v_mov_b16_e32 v32.h, v4.h
	v_add3_u32 v18, v18, v31, 0x7fff
	v_mov_b16_e32 v4.l, v20.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v21, v21, v21 :: v_dual_and_b32 v86, 1, v95
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v18.l, v17.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v17, v22, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v45, v45, v84, 0x7fff
	v_mov_b16_e32 v25.l, v27.h
	v_mov_b16_e32 v22.l, v21.h
	v_mov_b16_e32 v22.h, v4.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v8, v8, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v43.l, v45.h
	v_and_b32_e32 v27, 1, v32
	v_and_b32_e32 v30, 1, v4
	v_mov_b16_e32 v4.l, v17.h
	v_cndmask_b32_e32 v38, v35, v34, vcc_lo
	v_cndmask_b32_e32 v34, v34, v35, vcc_lo
	v_add3_u32 v19, v19, v27, 0x7fff
	v_add3_u32 v20, v20, v30, 0x7fff
	v_mov_b16_e32 v27.l, v23.h
	v_mov_b16_e32 v27.h, v4.h
	v_cndmask_b32_e32 v35, v36, v33, vcc_lo
	v_mov_b16_e32 v20.l, v19.h
	v_and_b32_e32 v19, 1, v22
	v_and_b32_e32 v22, 1, v4
	v_mov_b16_e32 v4.l, v24.h
	v_cndmask_b32_e32 v33, v33, v36, vcc_lo
	v_cndmask_b32_e32 v36, v29, v26, vcc_lo
	v_add3_u32 v19, v21, v19, 0x7fff
	v_add3_u32 v17, v17, v22, 0x7fff
	v_and_b32_e32 v21, 1, v4
	v_and_b32_e32 v22, 1, v27
	v_mov_b16_e32 v27.l, v9.h
	v_mov_b16_e32 v17.l, v19.h
	v_mov_b16_e32 v4.l, v10.h
	v_add3_u32 v21, v24, v21, 0x7fff
	v_add3_u32 v19, v23, v22, 0x7fff
	v_and_b32_e32 v22, 1, v27
	v_dual_cndmask_b32 v26, v26, v29 :: v_dual_cndmask_b32 v29, v25, v28
	v_mov_b16_e32 v23.l, v13.h
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v21.l, v19.h
	v_and_b32_e32 v19, 1, v4
	v_mov_b16_e32 v4.l, v12.h
	v_add3_u32 v9, v9, v22, 0x7fff
	v_mov_b16_e32 v22.l, v11.h
	v_mov_b16_e32 v22.h, v4.h
	v_add3_u32 v10, v10, v19, 0x7fff
	v_and_b32_e32 v19, 1, v4
	v_mov_b16_e32 v23.h, v4.h
	v_mov_b16_e32 v10.l, v9.h
	v_dual_cndmask_b32 v25, v28, v25 :: v_dual_and_b32 v22, 1, v22
	v_mov_b16_e32 v4.l, v14.h
	v_cndmask_b32_e32 v39, v17, v18, vcc_lo
	v_cndmask_b32_e32 v17, v18, v17, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v9, v11, v22, 0x7fff
	v_add3_u32 v11, v12, v19, 0x7fff
	v_and_b32_e32 v12, 1, v23
	v_dual_cndmask_b32 v18, v20, v21 :: v_dual_and_b32 v19, 1, v4
	v_mov_b16_e32 v11.l, v9.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v9, v16, v16
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v12, v13, v12, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v16, v51, v51
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v13, v14, v19, 0x7fff
	v_mov_b16_e32 v22.h, v4.h
	v_mov_b16_e32 v4.l, v9.h
	v_mov_b16_e32 v13.l, v12.h
	v_mov_b16_e32 v22.l, v16.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v12, v52, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v47, v47, v85, 0x7fff
	v_and_b32_e32 v19, 1, v4
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v24, v60, v60
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v14.l, v15.h
	v_mov_b16_e32 v4.l, v12.h
	v_mov_b16_e32 v14.h, v4.h
	v_add3_u32 v9, v9, v19, 0x7fff
	v_and_b32_e32 v19, 1, v22
	v_add3_u32 v49, v49, v86, 0x7fff
	v_and_b32_e32 v22, 1, v4
	v_and_b32_e32 v14, 1, v14
	v_mov_b16_e32 v4.l, v8.h
	v_add3_u32 v16, v16, v19, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v19, v54, v54
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v45, v48, v70, 0x7fff
	v_mov_b16_e32 v45.l, v47.h
	v_add3_u32 v14, v15, v14, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v15, v53, v53
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e32 v40, v21, v20, vcc_lo
	v_permlanex16_b32 v26, v26, s2, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v30, v45, v41, vcc_lo
	v_cndmask_b32_e32 v31, v41, v45, vcc_lo
	v_cndmask_b32_e32 v41, v13, v10, vcc_lo
	v_add3_u32 v12, v12, v22, 0x7fff
	v_mov_b16_e32 v12.l, v16.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v16, v55, v55
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v22, 1, v4
	v_mov_b16_e32 v23.l, v15.h
	v_mov_b16_e32 v9.l, v14.h
	v_add3_u32 v47, v50, v65, 0x7fff
	v_mov_b16_e32 v4.l, v16.h
	v_add3_u32 v8, v8, v22, 0x7fff
	v_mov_b16_e32 v47.l, v49.h
	v_cndmask_b32_e32 v10, v10, v13, vcc_lo
	v_permlanex16_b32 v20, v31, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v22, 1, v4
	v_mov_b16_e32 v4.l, v24.h
	v_cndmask_b32_e32 v32, v47, v43, vcc_lo
	v_cndmask_b32_e32 v37, v43, v47, vcc_lo
	v_permlanex16_b32 v28, v25, s2, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v0, v16, v22, 0x7fff
	v_and_b32_e32 v14, 1, v23
	v_mov_b16_e32 v23.l, v19.h
	v_and_b32_e32 v4, 1, v4
	v_cndmask_b32_e32 v16, v67, v61, vcc_lo
	v_cndmask_b32_e32 v22, v57, v66, vcc_lo
	v_add3_u32 v14, v15, v14, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v15, v56, v56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v4, v24, v4, 0x7fff
	v_cndmask_b32_e32 v24, v42, v58, vcc_lo
	v_mov_b16_e32 v8.l, v14.h
	v_mov_b16_e32 v27.l, v15.h
	v_add3_u32 v14, v19, v23, 0x7fff
	v_cndmask_b32_e32 v19, v61, v67, vcc_lo
	v_cndmask_b32_e32 v23, v66, v57, vcc_lo
	v_permlanex16_b32 v21, v37, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v17, s2, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v0.l, v14.h
	v_dual_cndmask_b32 v14, v63, v62 :: v_dual_and_b32 v27, 1, v27
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_lshl_add_u32 v7, s17, 4, v1
	v_lshl_add_u32 v6, s17, 5, v1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e32 v43, v0, v12, vcc_lo
	v_cndmask_b32_e32 v0, v12, v0, vcc_lo
	v_add3_u32 v15, v15, v27, 0x7fff
	v_dual_cndmask_b32 v27, v58, v42 :: v_dual_cndmask_b32 v42, v9, v11
	v_cndmask_b32_e32 v9, v11, v9, vcc_lo
	v_mov_b32_e32 v11, 0x5410
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v4.l, v15.h
	v_dual_mov_b32 v12, 0x7632 :: v_dual_cndmask_b32 v15, v62, v63
	v_permlanex16_b32 v37, v9, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v44, v4, v8, vcc_lo
	v_cndmask_b32_e32 v4, v8, v4, vcc_lo
	v_cndmask_b32_e32 v8, 0x1054, v11, vcc_lo
	v_cndmask_b32_e32 v11, 0x3276, v12, vcc_lo
	v_permlanex16_b32 v13, v15, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v19, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v23, s2, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v8, v8, 8, v8
	v_lshl_or_b32 v11, v11, 8, v11
	v_permlanex16_b32 v19, v27, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v34, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v33, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v8, 0x540054, v8
	v_and_b32_e32 v11, 0x760076, v11
	v_permlanex16_b32 v33, v18, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v10, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v4, s2, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v8, v8, 4, v8
	v_lshl_or_b32 v11, v11, 4, v11
	s_mov_b32 s2, s6
	s_mov_b32 s3, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v45, 0x5040504, v8
	v_and_b32_e32 v46, 0x7060706, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_perm_b32 v8, v13, v14, v45
	v_perm_b32 v9, v13, v14, v46
	v_perm_b32 v10, v12, v16, v45
	v_perm_b32 v11, v12, v16, v46
	v_perm_b32 v12, v15, v22, v45
	v_perm_b32 v13, v15, v22, v46
	v_perm_b32 v14, v19, v24, v45
	v_perm_b32 v15, v19, v24, v46
	v_perm_b32 v16, v20, v30, v45
	v_perm_b32 v17, v20, v30, v46
	v_perm_b32 v18, v21, v32, v45
	v_perm_b32 v19, v21, v32, v46
	v_perm_b32 v20, v23, v38, v45
	v_perm_b32 v21, v23, v38, v46
	v_perm_b32 v22, v27, v35, v45
	v_perm_b32 v23, v27, v35, v46
	v_perm_b32 v24, v26, v36, v45
	v_perm_b32 v25, v26, v36, v46
	v_perm_b32 v26, v28, v29, v45
	v_perm_b32 v27, v28, v29, v46
	v_perm_b32 v28, v31, v39, v45
	v_perm_b32 v29, v31, v39, v46
	v_perm_b32 v30, v33, v40, v45
	v_perm_b32 v31, v33, v40, v46
	v_perm_b32 v32, v34, v41, v45
	v_perm_b32 v33, v34, v41, v46
	v_perm_b32 v34, v37, v42, v45
	v_perm_b32 v35, v37, v42, v46
	v_perm_b32 v36, v0, v43, v45
	v_perm_b32 v37, v0, v43, v46
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v0, v5, v1, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add_lshl_u32 v1, v5, v7, 1
	s_clause 0x2
	buffer_store_b128 v[8:11], v0, s[0:3], 0 offen
	buffer_store_b128 v[12:15], v0, s[0:3], 0 offen offset:512
	buffer_store_b128 v[16:19], v1, s[0:3], 0 offen
	v_add_lshl_u32 v0, v3, v7, 1
	v_add_lshl_u32 v1, v5, v6, 1
	v_perm_b32 v38, v4, v44, v45
	v_perm_b32 v39, v4, v44, v46
	v_add_lshl_u32 v4, v3, v6, 1
	v_add_lshl_u32 v5, v5, v2, 1
	v_add_lshl_u32 v2, v3, v2, 1
	s_clause 0x4
	buffer_store_b128 v[20:23], v0, s[0:3], 0 offen
	buffer_store_b128 v[24:27], v1, s[0:3], 0 offen
	buffer_store_b128 v[28:31], v4, s[0:3], 0 offen
	buffer_store_b128 v[32:35], v5, s[0:3], 0 offen
	buffer_store_b128 v[36:39], v2, s[0:3], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
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
		.amdhsa_next_free_vgpr 143
		.amdhsa_next_free_sgpr 24
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
		.amdhsa_inst_pref_size 55
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 143
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 24
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6984
; TotalNumSgprs: 26
; NumVgprs: 143
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 26
; NumVGPRsForWavesPerEU: 143
; Occupancy: 10
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	86                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	105                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
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
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 512
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     26
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     143
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
