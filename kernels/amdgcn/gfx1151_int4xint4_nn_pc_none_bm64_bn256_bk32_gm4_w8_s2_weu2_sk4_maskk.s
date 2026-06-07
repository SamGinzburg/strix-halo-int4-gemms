	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x30
	s_load_b32 s21, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v70, 15, v0
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_and_b32_e32 v69, 3, v0
	v_lshrrev_b32_e32 v74, 4, v0
	v_mov_b32_e32 v8, 0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v75, 2, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v66, 4, v70
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_lshlrev_b32_e32 v65, 2, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v6, v8 :: v_dual_lshlrev_b32 v41, 2, v0
	v_mov_b32_e32 v7, v8
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_bfe_i32 v42, v0, 5, 1
	v_bfe_i32 v68, v0, 3, 1
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s17, 0xff
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
	s_lshr_b32 s5, s5, 24
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
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s14, s4, 2
	v_mov_b32_e32 v10, v8
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s14
	v_mov_b32_e32 v9, v8
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_rcp_iflag_f32_e32 v1, s5
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_readfirstlane_b32 s5, v1
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v40, v8
	v_mov_b32_e32 v39, v8
	s_cvt_u32_f32 s5, s5
	v_mov_b32_e32 v38, v8
	v_mov_b32_e32 v37, v8
	v_mov_b32_e32 v36, v8
	s_mul_i32 s8, s8, s5
	v_mov_b32_e32 v35, v8
	s_mul_hi_u32 s8, s5, s8
	v_mov_b32_e32 v34, v8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s14
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	v_mov_b32_e32 v33, v8
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	v_mov_b32_e32 v56, v8
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	v_mov_b32_e32 v55, v8
	s_cselect_b32 s4, s9, s5
	v_mov_b32_e32 v54, v8
	s_xor_b32 s4, s4, s8
	v_mov_b32_e32 v53, v8
	s_sub_i32 s15, s4, s8
	v_mov_b32_e32 v52, v8
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
	s_abs_i32 s19, s18
	s_abs_i32 s14, s2
	s_cvt_f32_u32 s12, s19
	v_mov_b32_e32 v51, v8
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
	v_mad_u64_u32 v[1:2], null, s17, v74, v[66:67]
	.loc	1 117 22 is_stmt 0              ; generate_amdgcn.py:117:22
	v_lshlrev_b32_e32 v67, 4, v0
	v_mov_b32_e32 v47, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 93 13 is_stmt 1               ; generate_amdgcn.py:93:13
	s_mul_f32 s12, s12, 0x4f7ffffe
	v_mov_b32_e32 v46, v8
	v_mov_b32_e32 v45, v8
	v_mov_b32_e32 v44, v8
	s_cvt_u32_f32 s20, s12
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[12:13], s[6:7]
	s_sub_i32 s6, 0, s19
	s_mov_b32 s7, 0x31027000
	s_mul_i32 s6, s6, s20
	v_mov_b32_e32 v43, v8
	s_mul_hi_u32 s6, s20, s6
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v42, 0x88, v42
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_add_i32 s20, s20, s6
	s_xor_b32 s6, s2, s18
	s_mul_hi_u32 s15, s14, s20
	s_ashr_i32 s22, s6, 31
	s_mul_i32 s20, s15, s19
	s_mov_b32 s6, 0x7ffffffe
	s_sub_i32 s14, s14, s20
	s_add_i32 s20, s15, 1
	s_sub_i32 s23, s14, s19
	s_cmp_ge_u32 s14, s19
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v41, 0x37c, v41
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s15, s20, s15
	s_cselect_b32 s14, s23, s14
	s_add_i32 s20, s15, 1
	s_cmp_ge_u32 s14, s19
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xor_b32_e32 v41, v42, v41
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s14, s20, s15
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s15, s21, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s24, s14, s22
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s25, s3, 4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s3, s21, s15
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s15, s24, s22
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s23, s3, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s3, s15, s18
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mad_u64_u32 v[2:3], null, s23, v75, v[65:66]
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s3
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v4, s25, v65
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v5, s25, v74
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s16, s2, 6
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s3, s15, 8
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s23, v4
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s15, s16, s23
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s21, 1
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	s_mul_i32 s14, s17, s25
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e64 s2, s23, v5
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add3_u32 v2, s25, s15, v2
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s20, -1, 0
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_add3_u32 v1, s14, s3, v1
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s20, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_and_b32 s5, s5, 0xffff
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s20, s2
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s14, s6
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_mov_b32 s15, s7
	s_and_b32 s13, s13, 0xffff
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_b32 v73, v2, s[4:7], 0 offen
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b128 v[76:79], v1, s[12:15], 0 offen
	s_load_b64 s[18:19], s[0:1], 0x20
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v4, v8
	v_dual_mov_b32 v3, v8 :: v_dual_add_nc_u32 v72, 0, v67
	v_mov_b32_e32 v1, v8
	v_dual_mov_b32 v16, v8 :: v_dual_add_nc_u32 v71, 0, v41
	v_mov_b32_e32 v42, v8
	v_mov_b32_e32 v41, v8
	s_mov_b64 s[0:1], s[10:11]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmpk_lt_i32 s21, 0x82
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(1)
	ds_store_b32 v71, v73 offset:4096
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v72, v[76:79]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_add_i32 s2, s25, 64
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v2, 0, v70
	v_add_nc_u32_e32 v1, s2, v74
	v_and_b32_e32 v3, 0x70, v67
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s10, s23, 63
	v_lshrrev_b32_e32 v5, 1, v0
	v_mov_b32_e32 v42, v41
.Ltmp13:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_mul_lo_u32 v1, s17, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s10, s10, 6
	v_mov_b32_e32 v44, v41
	v_and_or_b32 v3, 0x88, v68, v3
.Ltmp15:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_sub_nc_u32_e64 v4, s10, 2 clamp
	s_lshl_b32 s10, s24, 8
	s_lshl_b32 s11, s22, 8
	v_dual_mov_b32 v46, v41 :: v_dual_and_b32 v5, 0x70, v5
	v_add3_u32 v1, v1, s10, v66
	v_xor_b32_e32 v6, 8, v3
	v_readfirstlane_b32 s14, v4
	v_dual_mov_b32 v43, v41 :: v_dual_add_nc_u32 v4, s16, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_subrev_nc_u32_e32 v75, s11, v1
	v_dual_mov_b32 v48, v41 :: v_dual_add_nc_u32 v1, 0, v3
	v_dual_mov_b32 v58, v41 :: v_dual_add_nc_u32 v3, 0, v6
	v_sub_nc_u32_e32 v73, s23, v65
	v_mad_u64_u32 v[65:66], null, s23, v4, v[65:66]
	v_sub_nc_u32_e32 v74, s23, v74
	v_dual_mov_b32 v45, v41 :: v_dual_add_nc_u32 v66, v2, v5
	v_dual_mov_b32 v47, v41 :: v_dual_add_nc_u32 v76, 0x1000, v1
	v_dual_mov_b32 v60, v41 :: v_dual_add_nc_u32 v77, 0x1000, v3
	v_mov_b32_e32 v57, v41
	v_mov_b32_e32 v59, v41
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
	s_add_i32 s10, s14, 1
	s_lshl_b32 s11, s17, 6
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s2, v74
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v78, s2, v65
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s10, s10, -1
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_cndmask_b32_e32 v79, 0x80000000, v75, vcc_lo
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e32 vcc_lo, s2, v73
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v75, s11, v75
	s_add_i32 s2, s2, 64
	s_cmp_lg_u32 s10, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	buffer_load_b32 v106, v78, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b128 v[78:81], v79, s[12:15], 0 offen
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v98, v66 offset:3328
	ds_load_u8 v99, v66 offset:3072
	ds_load_u8 v100, v66 offset:3840
	ds_load_u8 v101, v66 offset:3584
	ds_load_u8 v102, v66 offset:2304
	ds_load_u8 v103, v66 offset:2048
	ds_load_u8 v104, v66 offset:2816
	ds_load_u8 v105, v66 offset:2560
	ds_load_u8 v107, v66 offset:1280
	ds_load_u8 v108, v66 offset:1024
	ds_load_u8 v109, v66 offset:1792
	ds_load_u8 v110, v66 offset:1536
	ds_load_u8 v111, v66 offset:1920
	ds_load_u8 v112, v66 offset:1664
	ds_load_u8 v113, v66 offset:1408
	ds_load_u8 v114, v66 offset:1152
	ds_load_u8 v115, v66 offset:256
	ds_load_u8 v116, v66
	ds_load_u8 v117, v66 offset:768
	ds_load_u8 v118, v66 offset:512
	ds_load_u8 v119, v66 offset:896
	ds_load_u8 v120, v66 offset:640
	ds_load_u8 v121, v66 offset:384
	ds_load_u8 v122, v66 offset:128
	ds_load_u8 v123, v66 offset:3968
	ds_load_u8 v124, v66 offset:3712
	ds_load_u8 v125, v66 offset:3456
	ds_load_u8 v126, v66 offset:3200
	ds_load_u8 v127, v66 offset:2944
	ds_load_u8 v128, v66 offset:2688
	ds_load_u8 v129, v66 offset:2432
	ds_load_u8 v130, v66 offset:2176
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[82:85], v76 offset1:32
	ds_load_2addr_b64 v[86:89], v76 offset0:64 offset1:96
	ds_load_2addr_b64 v[90:93], v77 offset1:32
	ds_load_2addr_b64 v[94:97], v77 offset0:64 offset1:96
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v108, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v109, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v110, v118, v117, 0xc0c0004
	v_perm_b32 v116, v103, v102, 0xc0c0004
	v_perm_b32 v104, v105, v104, 0xc0c0004
	v_perm_b32 v102, v114, v113, 0xc0c0004
	v_perm_b32 v103, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v105, v122, v121, 0xc0c0004
	v_perm_b32 v111, v120, v119, 0xc0c0004
	v_perm_b32 v115, v99, v98, 0xc0c0004
	v_perm_b32 v100, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v112, v126, v125, 0xc0c0004
	v_perm_b32 v113, v124, v123, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v117, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v114, v130, v129, 0xc0c0004
	v_lshl_or_b32 v99, v108, 16, v107
	v_lshl_or_b32 v98, v110, 16, v109
	v_lshl_or_b32 v103, v103, 16, v102
	v_lshl_or_b32 v102, v111, 16, v105
	v_lshl_or_b32 v101, v100, 16, v115
	v_lshl_or_b32 v100, v104, 16, v116
	v_lshl_or_b32 v105, v113, 16, v112
	v_lshl_or_b32 v104, v117, 16, v114
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[98:99], v[82:83], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[102:103], v[82:83], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[98:99], v[84:85], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[102:103], v[84:85], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[98:99], v[86:87], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[102:103], v[86:87], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[98:99], v[88:89], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[102:103], v[88:89], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[100:101], v[90:91], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[104:105], v[90:91], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[100:101], v[92:93], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[104:105], v[92:93], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[100:101], v[94:95], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[104:105], v[94:95], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[100:101], v[96:97], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[104:105], v[96:97], v[1:8] neg_lo:[1,1,0]
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b32 v71, v106 offset:4096
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v72, v[78:81]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow527
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_and_b32_e32 v71, 0xf0, v0
	v_and_b32_e32 v72, 32, v0
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_and_b32_e32 v65, 7, v0
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_and_b32_e32 v66, 0xe0, v0
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, s20
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_lshrrev_b32_e32 v73, 1, v66
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_lshlrev_b32_e32 v74, 4, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add3_u32 v77, 0, v73, v70
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_or_b32 v68, 0x88, v68, v74
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v78, v77 offset:1280
	ds_load_u8 v79, v77 offset:1024
	ds_load_u8 v80, v77 offset:1792
	ds_load_u8 v81, v77 offset:1536
	ds_load_u8 v82, v77 offset:256
	ds_load_u8 v83, v77
	ds_load_u8 v84, v77 offset:768
	ds_load_u8 v85, v77 offset:512
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xad_u32 v73, v68, 8, 0
	v_add_nc_u32_e32 v68, 0, v68
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v91, v77 offset:3328
	ds_load_u8 v92, v77 offset:3072
	ds_load_u8 v93, v77 offset:1920
	ds_load_u8 v94, v77 offset:1664
	ds_load_u8 v95, v77 offset:1408
	ds_load_u8 v96, v77 offset:1152
	ds_load_u8 v97, v77 offset:896
	ds_load_u8 v98, v77 offset:640
	ds_load_u8 v99, v77 offset:384
	ds_load_u8 v100, v77 offset:128
	ds_load_u8 v101, v77 offset:2304
	ds_load_u8 v102, v77 offset:2048
	ds_load_u8 v103, v77 offset:2816
	ds_load_u8 v104, v77 offset:2560
	ds_load_u8 v105, v77 offset:3840
	ds_load_u8 v106, v77 offset:3584
	ds_load_u8 v107, v77 offset:3968
	ds_load_u8 v108, v77 offset:3712
	ds_load_u8 v109, v77 offset:3456
	ds_load_u8 v110, v77 offset:3200
	ds_load_u8 v111, v77 offset:2944
	ds_load_u8 v112, v77 offset:2688
	ds_load_u8 v113, v77 offset:2432
	ds_load_u8 v114, v77 offset:2176
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v86, 0x1000, v73
	v_add_nc_u32_e32 v68, 0x1000, v68
	ds_load_2addr_b64 v[73:76], v68 offset1:32
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v79, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v80, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v81, v85, v84, 0xc0c0004
	v_lshl_or_b32 v90, v79, 16, v78
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v89, v81, 16, v80
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[77:80], v86 offset0:64 offset1:96
	ds_load_2addr_b64 v[81:84], v86 offset1:32
	ds_load_2addr_b64 v[85:88], v68 offset0:64 offset1:96
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v68, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v91, v96, v95, 0xc0c0004
	v_perm_b32 v92, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v93, v100, v99, 0xc0c0004
	v_perm_b32 v94, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v95, v106, v105, 0xc0c0004
	v_perm_b32 v96, v102, v101, 0xc0c0004
	v_perm_b32 v97, v104, v103, 0xc0c0004
	v_lshl_or_b32 v92, v92, 16, v91
	v_lshl_or_b32 v91, v94, 16, v93
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v98, v110, v109, 0xc0c0004
	v_perm_b32 v99, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v100, v114, v113, 0xc0c0004
	v_perm_b32 v101, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[89:90], v[73:74], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v94, v95, 16, v68
	v_lshl_or_b32 v93, v97, 16, v96
	v_wmma_i32_16x16x16_iu4 v[57:64], v[91:92], v[73:74], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v74, v99, 16, v98
	v_lshl_or_b32 v73, v101, 16, v100
	v_wmma_i32_16x16x16_iu4 v[49:56], v[89:90], v[75:76], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[91:92], v[75:76], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[89:90], v[85:86], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[91:92], v[85:86], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[89:90], v[87:88], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[91:92], v[87:88], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[93:94], v[81:82], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[73:74], v[81:82], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[93:94], v[83:84], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[73:74], v[83:84], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[93:94], v[77:78], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[77:78], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[93:94], v[79:80], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[73:74], v[79:80], v[1:8] neg_lo:[1,1,0]
.LBB0_5:                                ; %._crit_edge._crit_edge
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v70, s16, v70
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 128 14 is_stmt 0              ; generate_amdgcn.py:128:14
	s_and_b32 s9, s9, 0xffff
	.loc	1 99 14 is_stmt 1               ; generate_amdgcn.py:99:14
	v_or_b32_e32 v68, s3, v0
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_lshlrev_b32_e32 v70, 1, v70
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_and_b32 s1, s1, 0xffff
	s_mov_b32 s2, s10
	s_mov_b32 s3, s11
	v_lshlrev_b32_e32 v73, 1, v68
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_or_b32_e32 v74, 32, v70
	v_or_b32_e32 v75, 64, v70
	v_or_b32_e32 v76, 0x60, v70
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v94, v9
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_clause 0x3
	buffer_load_u16 v70, v70, s[8:11], 0 offen
	buffer_load_u16 v74, v74, s[8:11], 0 offen
	buffer_load_u16 v75, v75, s[8:11], 0 offen
	buffer_load_u16 v76, v76, s[8:11], 0 offen
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	buffer_load_u16 v73, v73, s[0:3], 0 offen
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s0, s16, s17
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v95, v10
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_add_nc_u32_e32 v9, s0, v68
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v88, v17
	v_cvt_f32_i32_e32 v89, v18
	v_cvt_f32_i32_e32 v77, v64
	v_cvt_f32_i32_e32 v90, v19
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v10, 31, v9
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v105, v4
	v_cvt_f32_i32_e32 v106, v5
	v_cvt_f32_i32_e32 v102, v1
	v_cvt_f32_i32_e32 v103, v2
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_lshlrev_b64 v[17:18], 2, v[9:10]
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v96, v11
	v_cvt_f32_i32_e32 v104, v3
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_lshl_add_u32 v3, v71, 2, 0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v98, v13
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_lshl_add_u32 v13, v71, 1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_add_co_u32 v64, vcc_lo, s18, v17
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v97, v12
	v_cvt_f32_i32_e32 v99, v14
	v_cvt_f32_i32_e32 v100, v15
	v_cvt_f32_i32_e32 v101, v16
	v_cvt_f32_i32_e32 v107, v6
	v_cvt_f32_i32_e32 v91, v21
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v78, v49
	v_cvt_f32_i32_e32 v80, v33
	v_cvt_f32_i32_e32 v82, v37
	v_cvt_f32_i32_e32 v83, v38
	v_cvt_f32_i32_e32 v84, v25
	v_cvt_f32_i32_e32 v92, v22
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v86, v29
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v79, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v85, v26
	v_cvt_f32_i32_e32 v87, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v93, v23
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v81, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v24, v24
	s_mov_b32 s1, 0
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v19, 16, v75
	v_lshlrev_b32_e32 v17, 16, v70
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_and_b32_e32 v108, 16, v0
	v_and_b32_e32 v4, 0xcf0, v67
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_lshlrev_b32_e32 v1, 1, v0
	v_lshlrev_b32_e32 v2, 5, v0
	.loc	1 127 15 is_stmt 1              ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v67, v7
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_lshl_or_b32 v5, v72, 1, v108
	v_lshlrev_b32_e32 v0, 6, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_and_b32_e32 v2, 32, v2
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_xor_b32_e32 v5, v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v11, v65, 13, v5
	.loc	1 192 9 is_stmt 1               ; generate_amdgcn.py:192:9
	v_add_co_ci_u32_e64 v65, null, s19, v18, vcc_lo
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v18, 16, v74
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_and_b32_e32 v1, 28, v1
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_xad_u32 v110, v11, 32, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_add3_u32 v1, v3, v2, v1
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v73
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v73, v8
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	ds_store_b32 v1, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v13
	ds_load_b128 v[5:8], v13 offset:16
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v126, v2, v19
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v34, v8, v17 :: v_dual_add_nc_u32 v109, 0, v11
	ds_load_b128 v[9:12], v13 offset:512
	ds_load_b128 v[13:16], v13 offset:528
	v_dual_mul_f32 v22, v1, v17 :: v_dual_lshlrev_b32 v21, 16, v76
	v_mul_f32_e32 v25, v3, v17
	v_mul_f32_e32 v33, v7, v17
	v_mul_f32_e32 v29, v5, v17
	v_mul_f32_e32 v23, v2, v17
	v_mul_f32_e32 v26, v4, v17
	v_mul_f32_e32 v30, v6, v17
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v37, v9, v17
	v_mul_f32_e32 v38, v10, v17
	v_mul_f32_e32 v49, v11, v17
	v_mul_f32_e32 v70, v13, v17
	v_dual_mul_f32 v72, v15, v17 :: v_dual_mul_f32 v113, v5, v18
	v_mul_f32_e32 v75, v1, v18
	v_dual_mul_f32 v116, v8, v18 :: v_dual_mul_f32 v125, v1, v19
	v_dual_mul_f32 v138, v14, v19 :: v_dual_mul_f32 v141, v1, v21
	v_dual_mul_f32 v74, v16, v17 :: v_dual_mul_f32 v111, v3, v18
	v_dual_mul_f32 v118, v10, v18 :: v_dual_mul_f32 v127, v3, v19
	v_dual_mul_f32 v120, v12, v18 :: v_dual_mul_f32 v129, v5, v19
	v_dual_mul_f32 v140, v16, v19 :: v_dual_mul_f32 v143, v3, v21
	v_dual_mul_f32 v53, v12, v17 :: v_dual_mul_f32 v114, v6, v18
	v_dual_mul_f32 v115, v7, v18 :: v_dual_mul_f32 v128, v4, v19
	v_dual_mul_f32 v123, v15, v18 :: v_dual_mul_f32 v136, v12, v19
	v_dual_mul_f32 v145, v5, v21 :: v_dual_mul_f32 v76, v2, v18
	v_dual_mul_f32 v117, v9, v18 :: v_dual_mul_f32 v130, v6, v19
	v_dual_mul_f32 v122, v14, v18 :: v_dual_mul_f32 v131, v7, v19
	v_mul_f32_e32 v147, v7, v21
	v_dual_mul_f32 v119, v11, v18 :: v_dual_mul_f32 v132, v8, v19
	v_dual_mul_f32 v121, v13, v18 :: v_dual_mul_f32 v134, v10, v19
	v_dual_mul_f32 v124, v16, v18 :: v_dual_mul_f32 v133, v9, v19
	v_mul_f32_e32 v149, v9, v21
	v_dual_mul_f32 v71, v14, v17 :: v_dual_mul_f32 v112, v4, v18
	v_dual_mul_f32 v135, v11, v19 :: v_dual_mul_f32 v142, v2, v21
	v_dual_mul_f32 v137, v13, v19 :: v_dual_mul_f32 v144, v4, v21
	v_dual_mul_f32 v139, v15, v19 :: v_dual_mul_f32 v146, v6, v21
	v_dual_mul_f32 v148, v8, v21 :: v_dual_mul_f32 v5, v23, v42
	v_dual_mul_f32 v150, v10, v21 :: v_dual_mul_f32 v9, v25, v43
	v_mul_f32_e32 v151, v11, v21
	v_mul_f32_e32 v152, v12, v21
	v_mul_f32_e32 v153, v13, v21
	v_dual_mul_f32 v154, v14, v21 :: v_dual_mul_f32 v25, v33, v47
	v_dual_mul_f32 v155, v15, v21 :: v_dual_mul_f32 v18, v113, v79
	v_dual_mul_f32 v156, v16, v21 :: v_dual_mul_f32 v21, v30, v46
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v1, v22, v41
	v_dual_mul_f32 v33, v37, v57 :: v_dual_mul_f32 v46, v120, v36
	v_dual_mul_f32 v57, v72, v63 :: v_dual_mul_f32 v4, v141, v94
	v_dual_mul_f32 v2, v75, v78 :: v_dual_mul_f32 v3, v125, v84
	v_mul_f32_e32 v8, v142, v95
	v_mul_f32_e32 v10, v111, v51
	v_dual_mul_f32 v11, v127, v27 :: v_dual_mul_f32 v16, v144, v97
	v_dual_mul_f32 v19, v129, v86 :: v_dual_mul_f32 v12, v143, v96
	v_dual_mul_f32 v17, v29, v45 :: v_dual_mul_f32 v30, v116, v56
	v_dual_mul_f32 v22, v114, v54 :: v_dual_mul_f32 v15, v128, v28
	v_dual_mul_f32 v47, v136, v20 :: v_dual_mul_f32 v20, v145, v98
	v_dual_mul_f32 v13, v26, v44 :: v_dual_mul_f32 v6, v76, v50
	v_mul_f32_e32 v26, v115, v55
	v_dual_mul_f32 v23, v130, v87 :: v_dual_mul_f32 v28, v147, v100
	v_mul_f32_e32 v27, v131, v31
	v_dual_mul_f32 v29, v34, v48 :: v_dual_mul_f32 v42, v119, v35
	v_dual_mul_f32 v37, v38, v58 :: v_dual_mul_f32 v34, v117, v80
	v_dual_mul_f32 v58, v123, v39 :: v_dual_mul_f32 v35, v133, v88
	v_dual_mul_f32 v39, v134, v89 :: v_dual_mul_f32 v36, v149, v102
	v_mul_f32_e32 v41, v49, v59
	v_dual_mul_f32 v45, v53, v60 :: v_dual_mul_f32 v38, v118, v81
	v_dual_mul_f32 v49, v70, v61 :: v_dual_mul_f32 v50, v121, v82
	v_dual_mul_f32 v53, v71, v62 :: v_dual_mul_f32 v54, v122, v83
	v_mul_f32_e32 v70, v74, v77
	v_mul_f32_e32 v14, v112, v52
	v_mul_f32_e32 v71, v124, v40
	v_dual_mul_f32 v7, v126, v85 :: v_dual_mul_f32 v72, v140, v24
	v_dual_mul_f32 v31, v132, v32 :: v_dual_mul_f32 v24, v146, v99
	v_dual_mul_f32 v43, v135, v90 :: v_dual_mul_f32 v48, v152, v105
	v_dual_mul_f32 v51, v137, v91 :: v_dual_mul_f32 v44, v151, v104
	v_dual_mul_f32 v55, v138, v92 :: v_dual_mul_f32 v60, v155, v67
	v_dual_mul_f32 v59, v139, v93 :: v_dual_mul_f32 v56, v154, v107
	v_mul_f32_e32 v32, v148, v101
	v_mul_f32_e32 v40, v150, v103
	v_dual_mul_f32 v52, v153, v106 :: v_dual_mul_f32 v73, v156, v73
	ds_store_b128 v109, v[1:4]
	ds_store_b128 v109, v[9:12] offset:256
	ds_store_b128 v109, v[17:20] offset:512
	ds_store_b128 v109, v[25:28] offset:768
	ds_store_b128 v109, v[33:36] offset:4096
	ds_store_b128 v109, v[41:44] offset:4352
	ds_store_b128 v109, v[49:52] offset:4608
	ds_store_b128 v109, v[57:60] offset:4864
	ds_store_b128 v110, v[5:8]
	ds_store_b128 v110, v[13:16] offset:256
	ds_store_b128 v110, v[21:24] offset:512
	ds_store_b128 v110, v[29:32] offset:768
	ds_store_b128 v110, v[37:40] offset:4096
	ds_store_b128 v110, v[45:48] offset:4352
	ds_store_b128 v110, v[53:56] offset:4608
	ds_store_b128 v110, v[70:73] offset:4864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 192 9 is_stmt 1               ; generate_amdgcn.py:192:9
	global_load_b32 v67, v[64:65], off
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_lshlrev_b32_e32 v1, 5, v66
	v_lshlrev_b32_e32 v2, 4, v69
	v_lshlrev_b32_e32 v3, 2, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_or_b32 v0, 0x300, v0, v1
	v_or3_b32 v0, v0, v2, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v0
	v_xad_u32 v2, 0x2010, v0, 0
	ds_load_b128 v[60:63], v1
	ds_load_b128 v[28:31], v1 offset:128
	v_xad_u32 v1, 0x6030, v0, 0
	v_xad_u32 v3, 0x4020, v0, 0
	ds_load_b128 v[56:59], v2
	ds_load_b128 v[24:27], v2 offset:128
	ds_load_b128 v[52:55], v3
	ds_load_b128 v[20:23], v3 offset:128
	v_xad_u32 v2, 0x8040, v0, 0
	ds_load_b128 v[48:51], v1
	ds_load_b128 v[16:19], v1 offset:128
	v_xad_u32 v1, 0xa050, v0, 0
	v_xad_u32 v3, 0xc060, v0, 0
	v_xad_u32 v0, 0xe070, v0, 0
	ds_load_b128 v[44:47], v2
	ds_load_b128 v[12:15], v2 offset:128
	ds_load_b128 v[40:43], v1
	ds_load_b128 v[8:11], v1 offset:128
	ds_load_b128 v[36:39], v3
	ds_load_b128 v[4:7], v3 offset:128
	ds_load_b128 v[32:35], v0
	ds_load_b128 v[0:3], v0 offset:128
.LBB0_6:                                ; %atomicrmw.start374
                                        ; =>This Inner Loop Header: Depth=1
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	s_waitcnt vmcnt(0) lgkmcnt(15)
	v_add_f32_e32 v66, v67, v60
	global_atomic_cmpswap_b32 v66, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v66, v67
	v_mov_b32_e32 v67, v66
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_6
; %bb.7:                                ; %atomicrmw.end373
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_add3_u32 v64, s0, s17, v68
	s_mov_b32 s1, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v64, vcc_lo, s18, v64
	v_add_co_ci_u32_e64 v65, null, s19, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_8:                                ; %atomicrmw.start368
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(13)
	v_add_f32_e32 v66, v67, v56
	global_atomic_cmpswap_b32 v60, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v60, v67
	v_mov_b32_e32 v67, v60
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_8
; %bb.9:                                ; %atomicrmw.end367
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_lshl_b32 s1, s17, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s18, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s19, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_10:                               ; %atomicrmw.start362
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(11)
	v_add_f32_e32 v66, v67, v52
	global_atomic_cmpswap_b32 v56, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v56, v67
	v_mov_b32_e32 v67, v56
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end361
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s18, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s19, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_12:                               ; %atomicrmw.start356
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(9)
	v_add_f32_e32 v66, v67, v48
	global_atomic_cmpswap_b32 v52, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v52, v67
	v_mov_b32_e32 v67, v52
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end355
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_lshl_b32 s1, s17, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s18, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s19, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_14:                               ; %atomicrmw.start350
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v66, v67, v44
	global_atomic_cmpswap_b32 v48, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v48, v67
	v_mov_b32_e32 v67, v48
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end349
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s18, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s19, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_16:                               ; %atomicrmw.start344
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v66, v67, v40
	global_atomic_cmpswap_b32 v44, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v44, v67
	v_mov_b32_e32 v67, v44
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end343
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s18, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s19, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_18:                               ; %atomicrmw.start338
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v66, v67, v36
	global_atomic_cmpswap_b32 v40, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v40, v67
	v_mov_b32_e32 v67, v40
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end337
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s18, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s19, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_20:                               ; %atomicrmw.start332
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v66, v67, v32
	global_atomic_cmpswap_b32 v36, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v36, v67
	v_mov_b32_e32 v67, v36
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end331
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_lshl_b32 s1, s17, 3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s18, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s19, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_22:                               ; %atomicrmw.start326
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v28
	global_atomic_cmpswap_b32 v32, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v32, v67
	v_mov_b32_e32 v67, v32
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ; %atomicrmw.end325
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s18, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s19, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_24:                               ; %atomicrmw.start320
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v24
	global_atomic_cmpswap_b32 v28, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v28, v67
	v_mov_b32_e32 v67, v28
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_24
; %bb.25:                               ; %atomicrmw.end319
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s18, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s19, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_26:                               ; %atomicrmw.start314
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v20
	global_atomic_cmpswap_b32 v24, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v24, v67
	v_mov_b32_e32 v67, v24
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_26
; %bb.27:                               ; %atomicrmw.end313
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s18, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s19, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_28:                               ; %atomicrmw.start308
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v16
	global_atomic_cmpswap_b32 v20, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v20, v67
	v_mov_b32_e32 v67, v20
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_28
; %bb.29:                               ; %atomicrmw.end307
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s18, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s19, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_30:                               ; %atomicrmw.start302
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v12
	global_atomic_cmpswap_b32 v16, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v16, v67
	v_mov_b32_e32 v67, v16
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_30
; %bb.31:                               ; %atomicrmw.end301
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s18, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s19, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_32:                               ; %atomicrmw.start296
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v8
	global_atomic_cmpswap_b32 v12, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v12, v67
	v_mov_b32_e32 v67, v12
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_32
; %bb.33:                               ; %atomicrmw.end295
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s18, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s19, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_34:                               ; %atomicrmw.start290
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v4
	global_atomic_cmpswap_b32 v8, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v8, v67
	v_mov_b32_e32 v67, v8
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_34
; %bb.35:                               ; %atomicrmw.end289
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s18, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s19, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_36:                               ; %atomicrmw.start284
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v66, v67, v0
	global_atomic_cmpswap_b32 v4, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v67
	v_mov_b32_e32 v67, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_36
; %bb.37:                               ; %atomicrmw.end283
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_lshl_b32 s1, s17, 4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s18, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s19, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_38:                               ; %atomicrmw.start278
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v61
	global_atomic_cmpswap_b32 v0, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v67
	v_mov_b32_e32 v67, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_38
; %bb.39:                               ; %atomicrmw.end277
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v60, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v61, 31, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[60:61], 2, v[60:61]
	v_add_co_u32 v60, vcc_lo, s18, v60
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v61, null, s19, v61, vcc_lo
	global_load_b32 v65, v[60:61], off
.LBB0_40:                               ; %atomicrmw.start272
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v64, v65, v57
	global_atomic_cmpswap_b32 v0, v[60:61], v[64:65], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v65
	v_mov_b32_e32 v65, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_40
; %bb.41:                               ; %atomicrmw.end271
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v56, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v57, 31, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[56:57], 2, v[56:57]
	v_add_co_u32 v56, vcc_lo, s18, v56
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v57, null, s19, v57, vcc_lo
	global_load_b32 v61, v[56:57], off
.LBB0_42:                               ; %atomicrmw.start266
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v60, v61, v53
	global_atomic_cmpswap_b32 v0, v[56:57], v[60:61], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v61
	v_mov_b32_e32 v61, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_42
; %bb.43:                               ; %atomicrmw.end265
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v52, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v53, 31, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[52:53], 2, v[52:53]
	v_add_co_u32 v52, vcc_lo, s18, v52
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v53, null, s19, v53, vcc_lo
	global_load_b32 v57, v[52:53], off
.LBB0_44:                               ; %atomicrmw.start260
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v56, v57, v49
	global_atomic_cmpswap_b32 v0, v[52:53], v[56:57], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v57
	v_mov_b32_e32 v57, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_44
; %bb.45:                               ; %atomicrmw.end259
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v48, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v49, 31, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[48:49], 2, v[48:49]
	v_add_co_u32 v48, vcc_lo, s18, v48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v49, null, s19, v49, vcc_lo
	global_load_b32 v53, v[48:49], off
.LBB0_46:                               ; %atomicrmw.start254
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v52, v53, v45
	global_atomic_cmpswap_b32 v0, v[48:49], v[52:53], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v53
	v_mov_b32_e32 v53, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_46
; %bb.47:                               ; %atomicrmw.end253
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v44, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v45, 31, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[44:45], 2, v[44:45]
	v_add_co_u32 v44, vcc_lo, s18, v44
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v45, null, s19, v45, vcc_lo
	global_load_b32 v49, v[44:45], off
.LBB0_48:                               ; %atomicrmw.start248
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v48, v49, v41
	global_atomic_cmpswap_b32 v0, v[44:45], v[48:49], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v49
	v_mov_b32_e32 v49, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_48
; %bb.49:                               ; %atomicrmw.end247
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v40, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v41, 31, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[40:41], 2, v[40:41]
	v_add_co_u32 v40, vcc_lo, s18, v40
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v41, null, s19, v41, vcc_lo
	global_load_b32 v45, v[40:41], off
.LBB0_50:                               ; %atomicrmw.start242
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v44, v45, v37
	global_atomic_cmpswap_b32 v0, v[40:41], v[44:45], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v45
	v_mov_b32_e32 v45, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_50
; %bb.51:                               ; %atomicrmw.end241
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v36, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v37, 31, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[36:37], 2, v[36:37]
	v_add_co_u32 v36, vcc_lo, s18, v36
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v37, null, s19, v37, vcc_lo
	global_load_b32 v41, v[36:37], off
.LBB0_52:                               ; %atomicrmw.start236
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v40, v41, v33
	global_atomic_cmpswap_b32 v0, v[36:37], v[40:41], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v41
	v_mov_b32_e32 v41, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_52
; %bb.53:                               ; %atomicrmw.end235
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v32, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s18, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s19, v33, vcc_lo
	global_load_b32 v37, v[32:33], off
.LBB0_54:                               ; %atomicrmw.start230
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v29
	global_atomic_cmpswap_b32 v0, v[32:33], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_54
; %bb.55:                               ; %atomicrmw.end229
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v28, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v29, 31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[28:29], 2, v[28:29]
	v_add_co_u32 v28, vcc_lo, s18, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v29, null, s19, v29, vcc_lo
	global_load_b32 v33, v[28:29], off
.LBB0_56:                               ; %atomicrmw.start224
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v32, v33, v25
	global_atomic_cmpswap_b32 v0, v[28:29], v[32:33], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v33
	v_mov_b32_e32 v33, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_56
; %bb.57:                               ; %atomicrmw.end223
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v24, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v25, 31, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[24:25], 2, v[24:25]
	v_add_co_u32 v24, vcc_lo, s18, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v25, null, s19, v25, vcc_lo
	global_load_b32 v29, v[24:25], off
.LBB0_58:                               ; %atomicrmw.start218
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v21
	global_atomic_cmpswap_b32 v0, v[24:25], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_58
; %bb.59:                               ; %atomicrmw.end217
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v20, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v21, 31, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	v_add_co_u32 v20, vcc_lo, s18, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, s19, v21, vcc_lo
	global_load_b32 v25, v[20:21], off
.LBB0_60:                               ; %atomicrmw.start212
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v24, v25, v17
	global_atomic_cmpswap_b32 v0, v[20:21], v[24:25], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v25
	v_mov_b32_e32 v25, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_60
; %bb.61:                               ; %atomicrmw.end211
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v16, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v16, vcc_lo, s18, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s19, v17, vcc_lo
	global_load_b32 v21, v[16:17], off
.LBB0_62:                               ; %atomicrmw.start206
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v13
	global_atomic_cmpswap_b32 v0, v[16:17], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_62
; %bb.63:                               ; %atomicrmw.end205
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 29
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v12, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v12, vcc_lo, s18, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s19, v13, vcc_lo
	global_load_b32 v17, v[12:13], off
.LBB0_64:                               ; %atomicrmw.start200
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v16, v17, v9
	global_atomic_cmpswap_b32 v0, v[12:13], v[16:17], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v17
	v_mov_b32_e32 v17, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_64
; %bb.65:                               ; %atomicrmw.end199
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 30
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v8, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s18, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s19, v9, vcc_lo
	global_load_b32 v13, v[8:9], off
.LBB0_66:                               ; %atomicrmw.start194
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v5
	global_atomic_cmpswap_b32 v0, v[8:9], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_66
; %bb.67:                               ; %atomicrmw.end193
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v4, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v5, 31, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_co_u32 v4, vcc_lo, s18, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s19, v5, vcc_lo
	global_load_b32 v9, v[4:5], off
.LBB0_68:                               ; %atomicrmw.start188
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v1
	global_atomic_cmpswap_b32 v0, v[4:5], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_68
; %bb.69:                               ; %atomicrmw.end187
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_lshl_b32 s1, s17, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_70:                               ; %atomicrmw.start182
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v62
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_70
; %bb.71:                               ; %atomicrmw.end181
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_72:                               ; %atomicrmw.start176
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v58
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_72
; %bb.73:                               ; %atomicrmw.end175
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 34
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_74:                               ; %atomicrmw.start170
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v54
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_74
; %bb.75:                               ; %atomicrmw.end169
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 35
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_76:                               ; %atomicrmw.start164
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v50
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_76
; %bb.77:                               ; %atomicrmw.end163
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 36
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_78:                               ; %atomicrmw.start158
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v46
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_78
; %bb.79:                               ; %atomicrmw.end157
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_80:                               ; %atomicrmw.start152
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v42
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_80
; %bb.81:                               ; %atomicrmw.end151
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 38
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_82:                               ; %atomicrmw.start146
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v38
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_82
; %bb.83:                               ; %atomicrmw.end145
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_84:                               ; %atomicrmw.start140
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v34
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_84
; %bb.85:                               ; %atomicrmw.end139
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 40
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_86:                               ; %atomicrmw.start134
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v30
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_86
; %bb.87:                               ; %atomicrmw.end133
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 41
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_88:                               ; %atomicrmw.start128
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v26
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_88
; %bb.89:                               ; %atomicrmw.end127
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 42
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_90:                               ; %atomicrmw.start122
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v22
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_90
; %bb.91:                               ; %atomicrmw.end121
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 43
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_92:                               ; %atomicrmw.start116
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v18
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_92
; %bb.93:                               ; %atomicrmw.end115
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 44
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_94:                               ; %atomicrmw.start110
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v14
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_94
; %bb.95:                               ; %atomicrmw.end109
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 45
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_96:                               ; %atomicrmw.start104
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v10
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_96
; %bb.97:                               ; %atomicrmw.end103
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_98:                               ; %atomicrmw.start98
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v6
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_98
; %bb.99:                               ; %atomicrmw.end97
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_100:                              ; %atomicrmw.start92
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v2
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_100
; %bb.101:                              ; %atomicrmw.end91
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 48
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_102:                              ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v63
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_102
; %bb.103:                              ; %atomicrmw.end85
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 49
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_104:                              ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v59
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_104
; %bb.105:                              ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 50
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_106:                              ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v55
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_106
; %bb.107:                              ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 51
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_108:                              ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v51
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_108
; %bb.109:                              ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 52
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_110:                              ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v47
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_110
; %bb.111:                              ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 53
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_112:                              ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v43
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_112
; %bb.113:                              ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 54
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_114:                              ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v39
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_114
; %bb.115:                              ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 55
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_116:                              ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v35
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_116
; %bb.117:                              ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 56
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_118:                              ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v31
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_118
; %bb.119:                              ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 57
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_120:                              ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v27
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_120
; %bb.121:                              ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 58
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_122:                              ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v23
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_122
; %bb.123:                              ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 59
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_124:                              ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v19
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_124
; %bb.125:                              ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 60
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_126:                              ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v15
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_126
; %bb.127:                              ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 61
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_128:                              ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v11
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_128
; %bb.129:                              ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 62
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_130:                              ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_130
; %bb.131:                              ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s17, 63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_132:                              ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v3
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_132
; %bb.133:                              ; %atomicrmw.end
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk
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
		.amdhsa_next_free_vgpr 241
		.amdhsa_next_free_sgpr 26
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.num_vgpr, 157
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.numbered_sgpr, 26
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11580
; TotalNumSgprs: 28
; NumVgprs: 157
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 28
; NumVGPRsForWavesPerEU: 241
; Occupancy: 5
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     28
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     157
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
