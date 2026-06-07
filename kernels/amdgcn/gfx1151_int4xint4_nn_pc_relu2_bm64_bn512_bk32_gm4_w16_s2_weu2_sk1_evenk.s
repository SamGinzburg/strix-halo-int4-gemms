	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x30
	s_load_b32 s18, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v74, 3, v0
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_lshrrev_b32_e32 v75, 5, v0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_bfe_i32 v49, v0, 6, 1
	v_bfe_i32 v69, v0, 3, 1
	v_mov_b32_e32 v8, 0
	v_lshlrev_b32_e32 v68, 1, v0
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_and_b32_e32 v81, 0x1e0, v0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v49, 0x88, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v7, v8
	v_dual_mov_b32 v5, v8 :: v_dual_and_b32 v50, 0x37e, v68
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
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
	s_lshl_b32 s12, s4, 2
	v_mov_b32_e32 v11, v8
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s12
	v_mov_b32_e32 v10, v8
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v24, v8
	v_rcp_iflag_f32_e32 v1, s5
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_readfirstlane_b32 s5, v1
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v40, v8
	s_cvt_u32_f32 s5, s5
	v_mov_b32_e32 v39, v8
	v_mov_b32_e32 v38, v8
	v_mov_b32_e32 v37, v8
	s_mul_i32 s8, s8, s5
	v_mov_b32_e32 v36, v8
	s_mul_hi_u32 s8, s5, s8
	v_mov_b32_e32 v35, v8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	v_mov_b32_e32 v34, v8
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	v_mov_b32_e32 v33, v8
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	v_mov_b32_e32 v48, v8
	s_cselect_b32 s4, s9, s5
	v_mov_b32_e32 v47, v8
	s_xor_b32 s4, s4, s8
	v_mov_b32_e32 v46, v8
	s_sub_i32 s13, s4, s8
	v_mov_b32_e32 v45, v8
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s14, s13, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s13, s13, s12
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s7, s14
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s13
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s15, s4, 4
	v_mov_b32_e32 v44, v8
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s16, s15
	v_mov_b32_e32 v43, v8
	s_cvt_f32_u32 s4, s16
	s_sub_i32 s20, 0, s16
	v_mov_b32_e32 v42, v8
	v_mov_b32_e32 v41, v8
	v_rcp_iflag_f32_e32 v1, s4
	s_clause 0x1
	s_load_b256 s[4:11], s[0:1], 0x0
	s_load_b64 s[0:1], s[0:1], 0x20
	v_mov_b32_e32 v64, v8
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v62, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v60, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v58, v8
	v_readfirstlane_b32 s19, v1
	v_mov_b32_e32 v57, v8
	v_mov_b32_e32 v56, v8
	v_mov_b32_e32 v55, v8
	v_mov_b32_e32 v54, v8
	s_mul_f32 s19, s19, 0x4f7ffffe
	v_mov_b32_e32 v53, v8
	v_mov_b32_e32 v52, v8
	v_mov_b32_e32 v51, v8
	s_cvt_u32_f32 s19, s19
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xor_b32_e32 v73, v49, v50
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v50, v8
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_i32 s20, s20, s19
	v_mov_b32_e32 v49, v8
	s_mul_hi_u32 s12, s19, s20
	s_abs_i32 s20, s2
	s_add_i32 s19, s19, s12
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[12:13], s[6:7]
	s_mul_hi_u32 s6, s20, s19
	s_xor_b32 s7, s2, s15
	s_mul_i32 s21, s6, s16
	s_ashr_i32 s19, s7, 31
	s_sub_i32 s20, s20, s21
	s_add_i32 s21, s6, 1
	s_sub_i32 s22, s20, s16
	s_cmp_ge_u32 s20, s16
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s21, s21, s6
	s_cselect_b32 s6, s22, s20
	s_add_i32 s20, s21, 1
	s_cmp_ge_u32 s6, s16
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s16, s20, s21
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s21, s18, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s20, s16, s19
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s16, s18, s21
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s22, s20, s19
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s21, s16, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s15, s22, s15
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v73, 0, v73
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s15
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 92 13 is_stmt 0               ; generate_amdgcn.py:92:13
	s_add_i32 s14, s2, s14
	.loc	1 107 23 is_stmt 1              ; generate_amdgcn.py:107:23
	s_lshl_b32 s2, s3, 4
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s16, s14, 6
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s3, s22, 9
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s18, 1
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s15, s16, s21
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v70, 4, v0
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_and_b32_e32 v71, 7, v0
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	s_mul_i32 s14, s17, s2
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v66, 0x1f0, v70
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_lshlrev_b32_e32 v65, 1, v71
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lt_i32 s18, 34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mad_u64_u32 v[1:2], null, s21, v74, v[65:66]
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_mad_u64_u32 v[2:3], null, s17, v75, v[66:67]
	v_mov_b32_e32 v3, v8
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v67, 15, v0
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add3_u32 v1, s2, s15, v1
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s15, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 117 30 is_stmt 0              ; generate_amdgcn.py:117:30
	v_add3_u32 v2, s14, s3, v2
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s14, s6
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_add_nc_u32 v72, 0, v70
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u16 v80, v1, s[4:7], 0 offen
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b128 v[76:79], v2, s[12:15], 0 offen
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_dual_mov_b32 v15, v8 :: v_dual_lshlrev_b32 v70, 4, v71
	v_lshrrev_b32_e32 v71, 1, v81
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(1)
	ds_store_b16 v73, v80 offset:8192
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v72, v[76:79]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	v_add3_u32 v1, s2, v75, 16
	v_and_or_b32 v4, 0x88, v69, v70
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s14, s21, 15
.Ltmp13:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_lshl_b32 s18, s17, 4
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s14, s14, 4
.Ltmp15:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_mul_lo_u32 v5, s17, v1
	v_xor_b32_e32 v7, 8, v4
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v4, 0, v4
	v_add_nc_u32_e32 v1, s16, v74
	v_sub_nc_u32_e64 v6, s14, 2 clamp
	s_lshl_b32 s14, s20, 9
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v50, v49 :: v_dual_add_nc_u32 v3, 0, v67
	v_mov_b32_e32 v52, v49
	v_mad_u64_u32 v[1:2], null, s21, v1, s[2:3]
	v_add3_u32 v2, v5, s14, v66
	v_dual_mov_b32 v54, v49 :: v_dual_add_nc_u32 v5, 0, v7
	v_readfirstlane_b32 s2, v6
	s_lshl_b32 s14, s19, 9
	v_dual_mov_b32 v51, v49 :: v_dual_add_nc_u32 v74, v3, v71
	v_subrev_nc_u32_e32 v66, s14, v2
	v_add3_u32 v65, v1, v65, 16
	v_dual_mov_b32 v56, v49 :: v_dual_add_nc_u32 v75, 0x2000, v4
	v_dual_mov_b32 v53, v49 :: v_dual_add_nc_u32 v76, 0x2000, v5
	v_mov_b32_e32 v55, v49
	v_mov_b32_e32 v57, v49
	v_mov_b32_e32 v58, v49
	v_mov_b32_e32 v59, v49
	v_mov_b32_e32 v60, v49
	v_mov_b32_e32 v61, v49
	v_mov_b32_e32 v62, v49
	v_mov_b32_e32 v63, v49
	v_mov_b32_e32 v64, v49
	v_mov_b32_e32 v41, v49
	v_mov_b32_e32 v42, v49
	v_mov_b32_e32 v43, v49
	v_mov_b32_e32 v44, v49
	v_mov_b32_e32 v45, v49
	v_mov_b32_e32 v46, v49
	v_mov_b32_e32 v47, v49
	v_mov_b32_e32 v48, v49
	v_mov_b32_e32 v33, v49
	v_mov_b32_e32 v34, v49
	v_mov_b32_e32 v35, v49
	v_mov_b32_e32 v36, v49
	v_mov_b32_e32 v37, v49
	v_mov_b32_e32 v38, v49
	v_mov_b32_e32 v39, v49
	v_mov_b32_e32 v40, v49
	v_mov_b32_e32 v25, v49
	v_mov_b32_e32 v26, v49
	v_mov_b32_e32 v27, v49
	v_mov_b32_e32 v28, v49
	v_mov_b32_e32 v29, v49
	v_mov_b32_e32 v30, v49
	v_mov_b32_e32 v31, v49
	v_mov_b32_e32 v32, v49
	v_mov_b32_e32 v17, v49
	v_mov_b32_e32 v18, v49
	v_mov_b32_e32 v19, v49
	v_mov_b32_e32 v20, v49
	v_mov_b32_e32 v21, v49
	v_mov_b32_e32 v22, v49
	v_mov_b32_e32 v23, v49
	v_mov_b32_e32 v24, v49
	v_mov_b32_e32 v9, v49
	v_mov_b32_e32 v10, v49
	v_mov_b32_e32 v11, v49
	v_mov_b32_e32 v12, v49
	v_mov_b32_e32 v13, v49
	v_mov_b32_e32 v14, v49
	v_mov_b32_e32 v15, v49
	v_mov_b32_e32 v16, v49
	v_mov_b32_e32 v1, v49
	v_mov_b32_e32 v2, v49
	v_mov_b32_e32 v3, v49
	v_mov_b32_e32 v4, v49
	v_mov_b32_e32 v5, v49
	v_mov_b32_e32 v6, v49
	v_mov_b32_e32 v7, v49
	v_mov_b32_e32 v8, v49
	s_add_i32 s2, s2, 1
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u16 v105, v65, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b128 v[77:80], v66, s[12:15], 0 offen
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v97, v74 offset:2560
	ds_load_u8 v98, v74 offset:2048
	ds_load_u8 v99, v74 offset:3584
	ds_load_u8 v100, v74 offset:3072
	ds_load_u8 v101, v74 offset:3840
	ds_load_u8 v102, v74 offset:3328
	ds_load_u8 v103, v74 offset:2816
	ds_load_u8 v104, v74 offset:2304
	ds_load_u8 v106, v74 offset:512
	ds_load_u8 v107, v74
	ds_load_u8 v108, v74 offset:1536
	ds_load_u8 v109, v74 offset:1024
	ds_load_u8 v110, v74 offset:1792
	ds_load_u8 v111, v74 offset:1280
	ds_load_u8 v112, v74 offset:768
	ds_load_u8 v113, v74 offset:256
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[81:84], v75 offset1:32
	ds_load_2addr_b64 v[85:88], v75 offset0:64 offset1:96
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v114, v74 offset:6656
	ds_load_u8 v115, v74 offset:6144
	ds_load_u8 v116, v74 offset:7680
	ds_load_u8 v117, v74 offset:7168
	ds_load_u8 v118, v74 offset:7936
	ds_load_u8 v119, v74 offset:7424
	ds_load_u8 v120, v74 offset:6912
	ds_load_u8 v121, v74 offset:6400
	ds_load_u8 v122, v74 offset:4608
	ds_load_u8 v123, v74 offset:4096
	ds_load_u8 v124, v74 offset:5632
	ds_load_u8 v125, v74 offset:5120
	ds_load_u8 v126, v74 offset:5888
	ds_load_u8 v127, v74 offset:5376
	ds_load_u8 v128, v74 offset:4864
	ds_load_u8 v129, v74 offset:4352
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[89:92], v76 offset1:32
	ds_load_2addr_b64 v[93:96], v76 offset0:64 offset1:96
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v98, v100, v99, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v99, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v100, v109, v108, 0xc0c0004
	v_perm_b32 v103, v104, v103, 0xc0c0004
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v102, v113, v112, 0xc0c0004
	v_perm_b32 v104, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v106, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v107, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v110, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v108, v123, v122, 0xc0c0004
	v_perm_b32 v111, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v109, v125, v124, 0xc0c0004
	v_lshl_or_b32 v98, v98, 16, v97
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v113, v127, v126, 0xc0c0004
	v_lshl_or_b32 v97, v100, 16, v99
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v112, v129, v128, 0xc0c0004
	v_lshl_or_b32 v100, v101, 16, v103
	v_lshl_or_b32 v99, v104, 16, v102
	v_lshl_or_b32 v102, v107, 16, v106
	v_lshl_or_b32 v101, v109, 16, v108
	v_lshl_or_b32 v104, v111, 16, v110
	v_lshl_or_b32 v103, v113, 16, v112
	v_wmma_i32_16x16x16_iu4 v[49:56], v[97:98], v[81:82], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[99:100], v[81:82], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[97:98], v[83:84], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[99:100], v[83:84], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[97:98], v[85:86], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[97:98], v[87:88], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[99:100], v[85:86], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[99:100], v[87:88], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v66, s18, v66
	v_add_nc_u32_e32 v65, 16, v65
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[101:102], v[89:90], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[103:104], v[89:90], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[101:102], v[91:92], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[103:104], v[91:92], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[101:102], v[93:94], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[103:104], v[93:94], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[101:102], v[95:96], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[103:104], v[95:96], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s2, s2, -1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lg_u32 s2, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b16 v73, v105 offset:8192
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v72, v[77:80]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, vcc_lo
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
	v_wmma_i32_16x16x16_iu4 v[49:56], v[65:66], v[69:70], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v88, v90, 16, v93
	v_lshl_or_b32 v87, v92, 16, v91
	v_wmma_i32_16x16x16_iu4 v[57:64], v[85:86], v[69:70], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v70, v94, 16, v89
	v_lshl_or_b32 v69, v96, 16, v95
	v_wmma_i32_16x16x16_iu4 v[41:48], v[65:66], v[71:72], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[85:86], v[71:72], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[87:88], v[77:78], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[81:82], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[85:86], v[81:82], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[83:84], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[85:86], v[83:84], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[69:70], v[77:78], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[87:88], v[79:80], v[41:48] neg_lo:[1,1,0]
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
	v_cvt_f32_i32_e32 v74, v49
	v_cvt_f32_i32_e32 v73, v50
	v_cvt_f32_i32_e32 v72, v51
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_or_b32_e32 v69, 32, v65
	v_or_b32_e32 v70, 64, v65
	v_or_b32_e32 v71, 0x60, v65
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v51, v62
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_clause 0x3
	buffer_load_u16 v83, v65, s[4:7], 0 offen
	buffer_load_u16 v84, v69, s[4:7], 0 offen
	buffer_load_u16 v85, v70, s[4:7], 0 offen
	buffer_load_u16 v86, v71, s[4:7], 0 offen
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v65, v56
	v_cvt_f32_i32_e32 v56, v57
	v_cvt_f32_i32_e32 v71, v52
	v_cvt_f32_i32_e32 v70, v53
	v_cvt_f32_i32_e32 v69, v54
	v_cvt_f32_i32_e32 v54, v59
	v_cvt_f32_i32_e32 v52, v60
	v_cvt_f32_i32_e32 v53, v61
	v_cvt_f32_i32_e32 v49, v63
	v_cvt_f32_i32_e32 v50, v64
	v_cvt_f32_i32_e32 v62, v6
	v_cvt_f32_i32_e32 v63, v7
	v_cvt_f32_i32_e32 v64, v8
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v11, v11
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s16, s16, s17
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	s_mov_b32 s2, 0x76543210
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s1, s1, 0xffff
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v90, 16, v85
	v_lshlrev_b32_e32 v89, 16, v84
	v_lshlrev_b32_e32 v88, 16, v83
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v66, 1, v66
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v87, 0x1f0, v0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_lshlrev_b32_e32 v57, 5, v0
	v_and_b32_e32 v59, 28, v68
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	buffer_load_u16 v75, v66, s[4:7], 0 offen
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_lshl_add_u32 v61, v87, 2, 0
	v_and_b32_e32 v60, 32, v57
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v66, v55
	v_cvt_f32_i32_e32 v55, v58
	v_cvt_f32_i32_e32 v57, v1
	v_cvt_f32_i32_e32 v58, v2
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_add3_u32 v1, v61, v60, v59
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v59, v3
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_lshl_add_u32 v3, v87, 1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v61, v5
	v_cvt_f32_i32_e32 v60, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.h, 0
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b16_e32 v68.h, v4.h
	v_mov_b16_e64 v140.h, v4.h
	v_mov_b16_e64 v142.h, v4.h
	v_mov_b16_e64 v139.h, v4.h
	v_mov_b16_e64 v141.h, v4.h
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v75
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	ds_store_b32 v1, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[75:78], v3
	ds_load_b128 v[79:82], v3 offset:16
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v1, s17, v67
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v67.h, v4.h
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v108, v76, v90 :: v_dual_mul_f32 v99, v75, v89
	v_dual_mul_f32 v94, v78, v88 :: v_dual_lshlrev_b32 v91, 16, v86
	ds_load_b128 v[5:8], v3 offset:1024
	ds_load_b128 v[83:86], v3 offset:1040
	v_mul_f32_e32 v3, v75, v88
	v_mul_f32_e32 v92, v76, v88
	v_mul_f32_e32 v93, v77, v88
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v95, v79, v88
	v_dual_mul_f32 v96, v80, v88 :: v_dual_mul_f32 v101, v77, v89
	v_mul_f32_e32 v97, v81, v88
	v_dual_mul_f32 v98, v82, v88 :: v_dual_mul_f32 v103, v79, v89
	v_mul_f32_e32 v100, v76, v89
	v_mul_f32_e32 v102, v78, v89
	v_mul_f32_e32 v104, v80, v89
	v_dual_mul_f32 v105, v81, v89 :: v_dual_mul_f32 v110, v78, v90
	v_dual_mul_f32 v106, v82, v89 :: v_dual_mul_f32 v107, v75, v90
	v_dual_mul_f32 v109, v77, v90 :: v_dual_mul_f32 v76, v76, v91
	v_dual_mul_f32 v111, v79, v90 :: v_dual_mul_f32 v78, v78, v91
	v_dual_mul_f32 v112, v80, v90 :: v_dual_mul_f32 v75, v75, v91
	v_dual_mul_f32 v113, v81, v90 :: v_dual_mul_f32 v80, v80, v91
	v_dual_mul_f32 v114, v82, v90 :: v_dual_mul_f32 v77, v77, v91
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v79, v79, v91 :: v_dual_mul_f32 v116, v6, v88
	v_dual_mul_f32 v81, v81, v91 :: v_dual_mul_f32 v118, v8, v88
	v_dual_mul_f32 v82, v82, v91 :: v_dual_mul_f32 v115, v5, v88
	v_dual_mul_f32 v117, v7, v88 :: v_dual_mul_f32 v120, v6, v89
	v_dual_mul_f32 v119, v5, v89 :: v_dual_mul_f32 v124, v6, v90
	v_dual_mul_f32 v121, v7, v89 :: v_dual_mul_f32 v126, v8, v90
	v_dual_mul_f32 v122, v8, v89 :: v_dual_mul_f32 v123, v5, v90
	v_dual_mul_f32 v125, v7, v90 :: v_dual_mul_f32 v128, v6, v91
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v127, v5, v91 :: v_dual_mul_f32 v130, v83, v88
	v_dual_mul_f32 v129, v7, v91 :: v_dual_mul_f32 v132, v85, v88
	v_dual_mul_f32 v8, v8, v91 :: v_dual_mul_f32 v133, v83, v89
	v_dual_mul_f32 v131, v84, v88 :: v_dual_mul_f32 v136, v83, v90
	v_dual_mul_f32 v88, v86, v88 :: v_dual_mul_f32 v135, v85, v89
	v_dual_mul_f32 v134, v84, v89 :: v_dual_mul_f32 v83, v83, v91
	v_dual_mul_f32 v89, v86, v89 :: v_dual_mul_f32 v138, v85, v90
	v_mul_f32_e32 v137, v84, v90
	v_dual_mul_f32 v90, v86, v90 :: v_dual_mul_f32 v85, v85, v91
	v_dual_mul_f32 v84, v84, v91 :: v_dual_mul_f32 v65, v98, v65
	v_mul_f32_e32 v86, v86, v91
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v74, v3, v74 :: v_dual_mul_f32 v73, v92, v73
	v_dual_mul_f32 v72, v93, v72 :: v_dual_mul_f32 v71, v94, v71
	v_dual_mul_f32 v59, v129, v59 :: v_dual_mul_f32 v8, v8, v60
	v_dual_mul_f32 v60, v83, v61 :: v_dual_mul_f32 v61, v84, v62
	v_dual_mul_f32 v62, v85, v63 :: v_dual_mul_f32 v63, v86, v64
	.loc	1 137 19 is_stmt 1              ; generate_amdgcn.py:137:19
	v_dual_max_f32 v64, 0, v74 :: v_dual_max_f32 v73, 0, v73
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v70, v95, v70 :: v_dual_mul_f32 v69, v96, v69
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v72, 0, v72 :: v_dual_max_f32 v71, 0, v71
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v64, v64, v64 :: v_dual_mul_f32 v73, v73, v73
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v66, v97, v66 :: v_dual_mul_f32 v55, v116, v55
	v_dual_mul_f32 v27, v109, v27 :: v_dual_mul_f32 v28, v110, v28
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v70, 0, v70 :: v_dual_max_f32 v69, 0, v69
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v72, v72, v72 :: v_dual_mul_f32 v71, v71, v71
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v73.h
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v2, 1, v87
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v56, v115, v56 :: v_dual_mul_f32 v53, v130, v53
	v_dual_mul_f32 v50, v88, v50 :: v_dual_mul_f32 v41, v99, v41
	v_dual_mul_f32 v17, v123, v17 :: v_dual_mul_f32 v18, v124, v18
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v66, 0, v66 :: v_dual_max_f32 v65, 0, v65
	v_dual_max_f32 v27, 0, v27 :: v_dual_max_f32 v28, 0, v28
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v70, v70, v70 :: v_dual_mul_f32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v27, v27, v27 :: v_dual_and_b32 v74, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v71.h
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add3_u32 v5, s16, s3, v2
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v52, v118, v52
	v_dual_mul_f32 v42, v100, v42 :: v_dual_mul_f32 v43, v101, v43
	v_dual_mul_f32 v19, v125, v19 :: v_dual_mul_f32 v20, v126, v20
	v_dual_mul_f32 v11, v77, v11 :: v_dual_mul_f32 v12, v78, v12
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v56, 0, v56 :: v_dual_max_f32 v55, 0, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v41, 0, v41 :: v_dual_max_f32 v42, 0, v42
	v_dual_max_f32 v17, 0, v17 :: v_dual_max_f32 v18, 0, v18
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v66, v66, v66 :: v_dual_mul_f32 v65, v65, v65
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v77, 1, v4
	v_mov_b16_e32 v4.l, v69.h
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mad_u64_u32 v[2:3], null, s17, 48, v[1:2]
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v87.h, v4.h
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v54, v117, v54 :: v_dual_mul_f32 v51, v131, v51
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add_nc_u32_e32 v3, 0x100, v5
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v29, v111, v29 :: v_dual_mul_f32 v30, v112, v30
	v_dual_mul_f32 v15, v81, v15 :: v_dual_mul_f32 v16, v82, v16
	v_dual_mul_f32 v57, v127, v57 :: v_dual_mul_f32 v58, v128, v58
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v52, 0, v52 :: v_dual_max_f32 v51, 0, v51
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v20, 0, v20
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v56, v56, v56 :: v_dual_mul_f32 v55, v55, v55
	v_dual_mul_f32 v41, v41, v41 :: v_dual_mul_f32 v42, v42, v42
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v87.l, v70.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v19, v19, v19 :: v_dual_and_b32 v82, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v65.h
	v_mov_b16_e32 v92.h, v4.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v49, v132, v49 :: v_dual_mul_f32 v44, v102, v44
	v_dual_mul_f32 v24, v90, v24 :: v_dual_mul_f32 v9, v75, v9
	v_dual_mul_f32 v13, v79, v13 :: v_dual_mul_f32 v14, v80, v14
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v29, 0, v29 :: v_dual_max_f32 v30, 0, v30
	v_dual_max_f32 v57, 0, v57 :: v_dual_max_f32 v58, 0, v58
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v52, v52, v52 :: v_dual_mul_f32 v51, v51, v51
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v68.l, v72.h
	v_mov_b16_e32 v92.l, v41.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v30, v30, v30 :: v_dual_and_b32 v75, 1, v87
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v87, 1, v4
	v_mov_b16_e32 v4.l, v55.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v49, 0, v49 :: v_dual_max_f32 v50, 0, v50
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v14, 0, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v67.l, v64.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v29, v29, v29 :: v_dual_and_b32 v68, 1, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v14, v14, v14 :: v_dual_and_b32 v83, 1, v92
	v_dual_mul_f32 v13, v13, v13 :: v_dual_and_b32 v92, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v52.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v16, 0, v16
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v49, v49, v49 :: v_dual_mul_f32 v50, v50, v50
	v_dual_mul_f32 v28, v28, v28 :: v_dual_and_b32 v67, 1, v67
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v68, v72, v68, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v15, v15, v15 :: v_dual_and_b32 v72, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v51.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v45, v103, v45 :: v_dual_mul_f32 v46, v104, v46
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v54, 0, v54 :: v_dual_max_f32 v53, 0, v53
	v_dual_max_f32 v43, 0, v43 :: v_dual_max_f32 v44, 0, v44
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v64, v64, v67, 0x7fff
	v_add3_u32 v67, v73, v74, 0x7fff
	v_and_b32_e32 v73, 1, v4
	v_mov_b16_e32 v4.l, v50.h
	v_mov_b16_e32 v91.h, v4.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v47, v105, v47 :: v_dual_mul_f32 v48, v106, v48
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v45, 0, v45 :: v_dual_max_f32 v46, 0, v46
	v_dual_max_f32 v59, 0, v59 :: v_dual_max_f32 v8, 0, v8
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v54, v54, v54 :: v_dual_mul_f32 v53, v53, v53
	v_dual_mul_f32 v43, v43, v43 :: v_dual_mul_f32 v44, v44, v44
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v91.l, v66.h
	v_and_b32_e32 v74, 1, v4
	v_mov_b16_e32 v4.l, v42.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v33, v119, v33 :: v_dual_mul_f32 v34, v120, v34
	v_dual_mul_f32 v23, v138, v23 :: v_dual_mul_f32 v10, v76, v10
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v47, 0, v47 :: v_dual_max_f32 v48, 0, v48
	v_dual_max_f32 v60, 0, v60 :: v_dual_max_f32 v61, 0, v61
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v45, v45, v45 :: v_dual_mul_f32 v46, v46, v46
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v140.l, v54.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v17, v17, v17 :: v_dual_and_b32 v76, 1, v91
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v70, v70, v75, 0x7fff
	v_and_b32_e32 v75, 1, v4
	v_mov_b16_e32 v4.l, v44.h
	v_mov_b16_e32 v67.l, v64.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v18, v18, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v64, v71, v77, 0x7fff
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v35, v121, v35 :: v_dual_mul_f32 v36, v122, v36
	v_dual_mul_f32 v31, v113, v31 :: v_dual_mul_f32 v32, v114, v32
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v33, 0, v33 :: v_dual_max_f32 v34, 0, v34
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v10, 0, v10
	v_dual_max_f32 v62, 0, v62 :: v_dual_max_f32 v63, 0, v63
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v47, v47, v47 :: v_dual_mul_f32 v48, v48, v48
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v142.l, v49.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v10, v10, v10 :: v_dual_and_b32 v79, 1, v140
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v66, v66, v76, 0x7fff
	v_mov_b16_e32 v64.l, v68.h
	v_add3_u32 v68, v69, v82, 0x7fff
	v_and_b32_e32 v69, 1, v4
	v_mov_b16_e32 v4.l, v46.h
	v_add3_u32 v65, v65, v87, 0x7fff
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v37, v133, v37 :: v_dual_mul_f32 v38, v134, v38
	v_dual_mul_f32 v21, v136, v21 :: v_dual_mul_f32 v22, v137, v22
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v35, 0, v35 :: v_dual_max_f32 v36, 0, v36
	v_dual_max_f32 v31, 0, v31 :: v_dual_max_f32 v32, 0, v32
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v33, v33, v33 :: v_dual_mul_f32 v34, v34, v34
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v139.l, v56.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v32, v32, v32 :: v_dual_and_b32 v81, 1, v142
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v54, v54, v79, 0x7fff
	v_mov_b16_e32 v65.l, v66.h
	v_and_b32_e32 v66, 1, v4
	v_mov_b16_e32 v4.l, v48.h
	v_add3_u32 v52, v52, v72, 0x7fff
	v_mov_b16_e32 v93.h, v4.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v39, v135, v39 :: v_dual_mul_f32 v40, v89, v40
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v37, 0, v37 :: v_dual_max_f32 v38, 0, v38
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v22, 0, v22
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v35, v35, v35 :: v_dual_mul_f32 v36, v36, v36
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v93.l, v43.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v21, v21, v21 :: v_dual_and_b32 v78, 1, v139
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v49, v49, v81, 0x7fff
	v_mov_b16_e32 v52.l, v54.h
	v_and_b32_e32 v54, 1, v4
	v_mov_b16_e32 v4.l, v34.h
	v_mov_b16_e32 v96.h, v4.h
	v_mov_b16_e32 v96.l, v33.h
	v_add3_u32 v50, v50, v74, 0x7fff
	v_mov_b16_e32 v97.h, v4.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v25, v107, v25 :: v_dual_mul_f32 v26, v108, v26
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v39, 0, v39 :: v_dual_max_f32 v40, 0, v40
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v37, v37, v37 :: v_dual_mul_f32 v38, v38, v38
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v97.l, v35.h
	v_and_b32_e32 v84, 1, v93
	v_add3_u32 v56, v56, v78, 0x7fff
	v_add3_u32 v41, v41, v83, 0x7fff
	v_mov_b16_e32 v68.l, v70.h
	v_mov_b16_e32 v50.l, v49.h
	v_and_b32_e32 v49, 1, v4
	v_mov_b16_e32 v4.l, v36.h
	v_mov_b16_e32 v94.h, v4.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v24, 0, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v94.l, v45.h
	v_and_b32_e32 v88, 1, v96
	v_add3_u32 v55, v55, v92, 0x7fff
	v_add3_u32 v42, v42, v75, 0x7fff
	v_mov_b16_e32 v98.h, v4.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v25, 0, v25 :: v_dual_max_f32 v26, 0, v26
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v39, v39, v39 :: v_dual_mul_f32 v40, v40, v40
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v98.l, v37.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v24, v24, v24 :: v_dual_and_b32 v89, 1, v97
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v43, v43, v84, 0x7fff
	v_mov_b16_e32 v55.l, v56.h
	v_mov_b16_e32 v42.l, v41.h
	v_add3_u32 v41, v44, v69, 0x7fff
	v_and_b32_e32 v44, 1, v4
	v_mov_b16_e32 v4.l, v38.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v20, v20, v20 :: v_dual_and_b32 v85, 1, v94
	v_mul_f32_e32 v23, v23, v23
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v33, v33, v88, 0x7fff
	v_mov_b16_e32 v115.h, v4.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v12, 0, v12
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v25, v25, v25 :: v_dual_mul_f32 v26, v26, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v115.l, v39.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v11, v11, v11 :: v_dual_and_b32 v90, 1, v98
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v35, v35, v89, 0x7fff
	v_mov_b16_e32 v41.l, v43.h
	v_add3_u32 v43, v46, v66, 0x7fff
	v_and_b32_e32 v46, 1, v4
	v_add3_u32 v34, v34, v49, 0x7fff
	v_add3_u32 v45, v45, v85, 0x7fff
	v_mov_b16_e32 v4.l, v40.h
	v_mov_b16_e32 v34.l, v33.h
	v_add3_u32 v33, v36, v44, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v12, v12, v12 :: v_dual_and_b32 v91, 1, v115
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v37, v37, v90, 0x7fff
	v_mov_b16_e32 v33.l, v35.h
	v_add3_u32 v35, v38, v46, 0x7fff
	v_mov_b16_e32 v38.l, v25.h
	v_mov_b16_e32 v38.h, v4.h
	v_mov_b16_e32 v43.l, v45.h
	v_and_b32_e32 v36, 1, v4
	v_mov_b16_e32 v4.l, v26.h
	v_mov_b16_e32 v35.l, v37.h
	v_add3_u32 v37, v39, v91, 0x7fff
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v36, v40, v36, 0x7fff
	v_and_b32_e32 v39, 1, v4
	v_mov_b16_e32 v37.l, v27.h
	v_mov_b16_e32 v36.l, v37.h
	v_add3_u32 v25, v25, v38, 0x7fff
	v_mov_b16_e32 v37.h, v4.h
	v_add3_u32 v26, v26, v39, 0x7fff
	v_mov_b16_e64 v141.l, v53.h
	v_mov_b16_e32 v4.l, v28.h
	v_mov_b16_e32 v26.l, v25.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v8, v8, v8 :: v_dual_and_b32 v25, 1, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v80, 1, v141
	v_and_b32_e32 v37, 1, v4
	v_mov_b16_e32 v4.l, v30.h
	v_mov_b16_e32 v38.l, v29.h
	v_mov_b16_e32 v38.h, v4.h
	v_add3_u32 v25, v27, v25, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v27, v31, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v28, v28, v37, 0x7fff
	v_and_b32_e32 v31, 1, v4
	v_and_b32_e32 v37, 1, v38
	v_mov_b16_e32 v28.l, v25.h
	v_mov_b16_e32 v38.l, v27.h
	v_mov_b16_e32 v4.l, v32.h
	v_mov_b16_e32 v95.h, v4.h
	v_add3_u32 v25, v29, v37, 0x7fff
	v_add3_u32 v29, v30, v31, 0x7fff
	v_and_b32_e32 v30, 1, v38
	v_cndmask_b32_e32 v38, v35, v34, vcc_lo
	v_cndmask_b32_e32 v34, v34, v35, vcc_lo
	v_mov_b16_e32 v29.l, v25.h
	v_and_b32_e32 v25, 1, v4
	v_add3_u32 v27, v27, v30, 0x7fff
	v_mov_b16_e32 v30.l, v17.h
	v_mov_b16_e32 v30.h, v4.h
	v_mov_b16_e32 v4.l, v18.h
	v_add3_u32 v25, v32, v25, 0x7fff
	v_mov_b16_e32 v32.l, v19.h
	v_mov_b16_e32 v32.h, v4.h
	v_and_b32_e32 v30, 1, v30
	v_and_b32_e32 v31, 1, v4
	v_mov_b16_e32 v4.l, v20.h
	v_mov_b16_e32 v25.l, v27.h
	v_and_b32_e32 v27, 1, v32
	v_add3_u32 v17, v17, v30, 0x7fff
	v_add3_u32 v18, v18, v31, 0x7fff
	v_dual_cndmask_b32 v35, v36, v33 :: v_dual_and_b32 v30, 1, v4
	v_cndmask_b32_e32 v33, v33, v36, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v18.l, v17.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v17, v22, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v22.l, v21.h
	v_mov_b16_e32 v22.h, v4.h
	v_cndmask_b32_e32 v36, v29, v26, vcc_lo
	v_add3_u32 v19, v19, v27, 0x7fff
	v_add3_u32 v20, v20, v30, 0x7fff
	v_mov_b16_e32 v4.l, v17.h
	v_mov_b16_e32 v95.l, v47.h
	v_mov_b16_e32 v27.l, v23.h
	v_mov_b16_e32 v20.l, v19.h
	v_and_b32_e32 v19, 1, v22
	v_and_b32_e32 v22, 1, v4
	v_mov_b16_e32 v4.l, v24.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v9, v9, v9 :: v_dual_and_b32 v86, 1, v95
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v27.h, v4.h
	v_add3_u32 v19, v21, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v26, v26, v29 :: v_dual_and_b32 v21, 1, v4
	v_cndmask_b32_e32 v29, v25, v28, vcc_lo
	v_cndmask_b32_e32 v25, v28, v25, vcc_lo
	v_add3_u32 v17, v17, v22, 0x7fff
	v_mov_b16_e32 v17.l, v19.h
	v_and_b32_e32 v22, 1, v27
	v_mov_b16_e32 v27.l, v9.h
	v_mov_b16_e32 v4.l, v10.h
	v_add3_u32 v21, v24, v21, 0x7fff
	v_cndmask_b32_e32 v39, v17, v18, vcc_lo
	v_add3_u32 v19, v23, v22, 0x7fff
	v_dual_cndmask_b32 v17, v18, v17 :: v_dual_and_b32 v22, 1, v27
	v_mov_b16_e32 v23.l, v13.h
	v_mov_b16_e32 v23.h, v4.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v21.l, v19.h
	v_add3_u32 v9, v9, v22, 0x7fff
	v_mov_b16_e32 v22.l, v11.h
	v_mov_b16_e32 v22.h, v4.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v18, v20, v21 :: v_dual_and_b32 v19, 1, v4
	v_mov_b16_e32 v4.l, v12.h
	v_cndmask_b32_e32 v40, v21, v20, vcc_lo
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v10, v10, v19, 0x7fff
	v_mov_b16_e32 v10.l, v9.h
	v_and_b32_e32 v19, 1, v4
	v_mov_b16_e32 v4.l, v14.h
	v_add3_u32 v9, v11, v22, 0x7fff
	v_mov_b16_e32 v22.h, v4.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v24, v63, v63
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v11, v12, v19, 0x7fff
	v_and_b32_e32 v12, 1, v23
	v_mov_b16_e32 v11.l, v9.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v9, v16, v16
	v_dual_mul_f32 v16, v57, v57 :: v_dual_and_b32 v19, 1, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v12, v13, v12, 0x7fff
	v_cndmask_b32_e32 v30, v43, v42, vcc_lo
	v_mov_b16_e32 v4.l, v9.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v13, v14, v19, 0x7fff
	v_mov_b16_e32 v22.l, v16.h
	v_mov_b16_e32 v13.l, v12.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v12, v58, v58 :: v_dual_and_b32 v19, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v14.l, v15.h
	v_mov_b16_e32 v14.h, v4.h
	v_cndmask_b32_e32 v31, v42, v43, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v4.l, v12.h
	v_add3_u32 v9, v9, v19, 0x7fff
	v_and_b32_e32 v19, 1, v22
	v_add3_u32 v53, v53, v80, 0x7fff
	v_add3_u32 v47, v47, v86, 0x7fff
	v_and_b32_e32 v22, 1, v4
	v_mov_b16_e32 v4.l, v8.h
	v_add3_u32 v16, v16, v19, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v19, v60, v60
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v51, v51, v73, 0x7fff
	v_add3_u32 v12, v12, v22, 0x7fff
	v_and_b32_e32 v22, 1, v4
	v_mov_b16_e32 v12.l, v16.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v16, v61, v61
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v51.l, v53.h
	v_permlanex16_b32 v20, v31, s2, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v8, v8, v22, 0x7fff
	v_permlanex16_b32 v26, v26, s2, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v4.l, v16.h
	v_permlanex16_b32 v28, v25, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v17, s2, 0xfedcba98 op_sel:[1,0]
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_lshl_add_u32 v7, s17, 4, v1
	v_lshl_add_u32 v6, s17, 5, v1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v22, 1, v4
	v_mov_b16_e32 v4.l, v24.h
	s_mov_b32 s3, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v0, v16, v22, 0x7fff
	v_and_b32_e32 v14, 1, v14
	v_and_b32_e32 v4, 1, v4
	v_cndmask_b32_e32 v16, v65, v64, vcc_lo
	v_cndmask_b32_e32 v22, v51, v55, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v14, v15, v14, 0x7fff
	.loc	1 138 19 is_stmt 1              ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v15, v59, v59
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v4, v24, v4, 0x7fff
	v_cndmask_b32_e32 v24, v50, v52, vcc_lo
	v_mov_b16_e32 v9.l, v14.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v23.l, v15.h
	v_cndmask_b32_e32 v42, v9, v11, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_b32_e32 v14, 1, v23
	v_mov_b16_e32 v23.l, v19.h
	v_cndmask_b32_e32 v9, v11, v9, vcc_lo
	v_mov_b32_e32 v11, 0x5410
	v_add3_u32 v14, v15, v14, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v15, v62, v62
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v8.l, v14.h
	v_mov_b16_e32 v27.l, v15.h
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v14, v19, v23, 0x7fff
	v_cndmask_b32_e32 v19, v64, v65, vcc_lo
	v_add3_u32 v45, v48, v54, 0x7fff
	v_mov_b16_e32 v45.l, v47.h
	v_and_b32_e32 v27, 1, v27
	v_mov_b16_e32 v0.l, v14.h
	v_cndmask_b32_e32 v23, v55, v51, vcc_lo
	v_cndmask_b32_e32 v14, v68, v67, vcc_lo
	v_cndmask_b32_e32 v32, v45, v41, vcc_lo
	v_add3_u32 v15, v15, v27, 0x7fff
	v_cndmask_b32_e32 v43, v0, v12, vcc_lo
	v_cndmask_b32_e32 v0, v12, v0, vcc_lo
	v_dual_mov_b32 v12, 0x7632 :: v_dual_cndmask_b32 v27, v52, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v4.l, v15.h
	v_cndmask_b32_e32 v15, v67, v68, vcc_lo
	v_cndmask_b32_e32 v37, v41, v45, vcc_lo
	v_dual_cndmask_b32 v41, v13, v10 :: v_dual_cndmask_b32 v10, v10, v13
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
	v_permlanex16_b32 v21, v37, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v34, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v8, 0x540054, v8
	v_and_b32_e32 v11, 0x760076, v11
	v_permlanex16_b32 v27, v33, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v18, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v10, s2, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v8, v8, 4, v8
	v_lshl_or_b32 v11, v11, 4, v11
	v_permlanex16_b32 v37, v9, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v4, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v45, 0x5040504, v8
	v_and_b32_e32 v46, 0x7060706, v11
	s_mov_b32 s2, s6
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
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 23
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 143
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 23
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6968
; TotalNumSgprs: 25
; NumVgprs: 143
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 25
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     25
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.kd
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
