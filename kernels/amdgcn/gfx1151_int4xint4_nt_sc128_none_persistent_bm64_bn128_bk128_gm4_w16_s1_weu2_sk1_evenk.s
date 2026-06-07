	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 196 0                         ; generate_amdgcn.py:196:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:205:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 63
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s35, 0x7f
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_lshr_b32 s6, s6, 26
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_lshr_b32 s7, s7, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_add_i32 s4, s4, s6
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s5, s7
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_ashr_i32 s33, s4, 6
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s13, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s34, s13, s33
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s34
	s_cbranch_scc1 .LBB0_6
; %bb.1:                                ; %.lr.ph4
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s12, s[0:1], 0x38
	s_load_b64 s[20:21], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 221 36 is_stmt 1              ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v2, 4, v0
	v_and_b32_e32 v4, 15, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v8, 0xe0, v0
	v_lshrrev_b32_e32 v3, 1, v0
	v_lshlrev_b32_e32 v5, 2, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v7, 3, v0
	v_and_or_b32 v9, v2, 16, v4
	v_lshlrev_b32_e32 v4, 6, v4
	v_lshlrev_b32_e32 v1, 3, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v2, 0x78, v3
	v_and_b32_e32 v3, 56, v3
	v_lshlrev_b32_e32 v12, 5, v8
	v_and_or_b32 v16, 0x438, v5, v4
	v_and_b32_e32 v5, 56, v5
	v_and_b32_e32 v0, 16, v0
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s40, s13, 2
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_or_b32_e32 v11, 32, v9
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s12, 0x7f
.Ltmp12:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_lshr_b32 s14, s12, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s1, s0, 31
.Ltmp14:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s12, s12, s14
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_lshr_b32 s1, s1, 25
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s41, s12, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s1, s0, s1
	v_or3_b32 v4, v12, v5, v4
	s_ashr_i32 s42, s1, 7
	s_cmpk_gt_i32 s0, 0x7f
	v_mov_b32_e32 v12, 0x7632
.Ltmp18:
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v6, 56, v1
	s_cselect_b32 s1, -1, 0
	v_xor_b32_e32 v3, v1, v3
	v_mov_b32_e32 v1, 0x5410
	s_abs_i32 s43, s40
	v_cmp_eq_u32_e64 s0, 0, v0
	s_mov_b32 s24, s4
	s_cvt_f32_u32 s4, s43
	v_xor_b32_e32 v17, 8, v16
	v_xor_b32_e32 v18, 16, v16
	v_cndmask_b32_e64 v0, 0x1054, v1, s0
	v_cndmask_b32_e64 v12, 0x3276, v12, s0
	v_rcp_iflag_f32_e32 v1, s4
	v_xor_b32_e32 v19, 24, v16
	v_xor_b32_e32 v5, 32, v16
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v12, v12, 8, v12
	v_xor_b32_e32 v21, 40, v16
	v_xor_b32_e32 v22, 48, v16
	v_xor_b32_e32 v23, 56, v16
	v_and_b32_e32 v13, 0x540054, v0
	v_and_b32_e32 v12, 0x760076, v12
	v_readfirstlane_b32 s4, v1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[0:1], null, s35, v9, v[2:3]
	v_mad_u64_u32 v[1:2], null, s35, v11, v[2:3]
	v_lshl_or_b32 v13, v13, 4, v13
	v_lshl_or_b32 v2, v12, 4, v12
	s_mul_f32 s4, s4, 0x4f7ffffe
	v_xor_b32_e32 v25, 8, v4
	v_xor_b32_e32 v26, 16, v4
	v_xor_b32_e32 v27, 24, v4
	v_xor_b32_e32 v28, 32, v4
	v_xor_b32_e32 v29, 40, v4
	v_xor_b32_e32 v30, 48, v4
	v_xor_b32_e32 v31, 56, v4
	s_cvt_u32_f32 s4, s4
	v_and_b32_e32 v12, 0x5040504, v13
	v_and_b32_e32 v13, 0x7060706, v2
	v_cndmask_b32_e64 v15, 0, 1, s1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_lshl_or_b32 v2, s3, 6, v6
	s_and_b32 s25, s5, 0xffff
	s_sub_i32 s5, 0, s43
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v10, 64, v7
	s_mul_i32 s5, s5, s4
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_and_b32_e32 v14, 2, v7
	v_cmp_ne_u32_e64 s1, 1, v15
	v_add_nc_u32_e32 v15, 0, v3
	v_add_nc_u32_e32 v16, 0, v16
	v_add_nc_u32_e32 v17, 0, v17
	v_add_nc_u32_e32 v18, 0, v18
	v_add_nc_u32_e32 v19, 0, v19
	v_add_nc_u32_e32 v20, 0, v5
	v_add_nc_u32_e32 v21, 0, v21
	v_add_nc_u32_e32 v22, 0, v22
	v_add_nc_u32_e32 v23, 0, v23
	v_add_nc_u32_e32 v24, 0, v4
	v_add_nc_u32_e32 v25, 0, v25
	v_add_nc_u32_e32 v26, 0, v26
	v_add_nc_u32_e32 v27, 0, v27
	v_add_nc_u32_e32 v28, 0, v28
	v_add_nc_u32_e32 v29, 0, v29
	v_add_nc_u32_e32 v30, 0, v30
	v_add_nc_u32_e32 v31, 0, v31
	v_cmp_gt_i32_e64 s3, 64, v2
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_mul_hi_u32 s5, s4, s5
	s_and_b32 s29, s7, 0xffff
	s_mov_b32 s28, s6
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_mov_b32 s12, 0
	s_and_b32 s21, s21, 0xffff
	s_bfe_i32 s44, s13, 0x1001d
	s_add_i32 s45, s4, s5
	s_lshl_b32 s46, s35, 1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_lshl_b32 s47, s42, 1
	s_mov_b32 s48, 0x76543210
	s_mov_b32 s22, s26
	s_mov_b32 s23, s27
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_bfe_u32 v3, v45, 16, 1
	v_bfe_u32 v4, v46, 16, 1
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s4, s4, 7
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_mul_i32 s5, s5, s35
	.loc	1 277 13 is_stmt 0              ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_add_i32 s10, s5, s4
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v3, v45, v3, 0x7fff
	v_add3_u32 v4, v46, v4, 0x7fff
	v_cmp_o_f32_e64 s4, v46, v46
	v_bfe_u32 v45, v44, 16, 1
	v_bfe_u32 v46, v43, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v3.h, vcc_lo
	v_mov_b16_e32 v5.h, 0
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s4
	v_bfe_u32 v4, v42, 16, 1
	v_add3_u32 v45, v44, v45, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	v_add3_u32 v44, v43, v46, 0x7fff
	v_cmp_o_f32_e64 s4, v43, v43
	v_add3_u32 v4, v42, v4, 0x7fff
	v_cmp_o_f32_e64 s5, v42, v42
	v_bfe_u32 v42, v41, 16, 1
	v_cndmask_b16 v43.l, 0x7fff, v45.h, vcc_lo
	v_bfe_u32 v45, v40, 16, 1
	v_cndmask_b16 v43.h, 0x7fff, v44.h, s4
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	v_add3_u32 v42, v41, v42, 0x7fff
	v_mov_b16_e32 v44.l, v38.h
	v_mov_b16_e32 v44.h, v5.h
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s5
	v_add3_u32 v41, v40, v45, 0x7fff
	v_mov_b16_e32 v5.l, v37.h
	v_cmp_o_f32_e64 s4, v40, v40
	v_bfe_u32 v40, v39, 16, 1
	v_cndmask_b16 v4.h, 0x7fff, v42.h, vcc_lo
	v_and_b32_e32 v42, 1, v44
	v_and_b32_e32 v44, 1, v5
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	v_add3_u32 v40, v39, v40, 0x7fff
	v_cmp_o_f32_e64 s5, v38, v38
	v_add3_u32 v39, v38, v42, 0x7fff
	v_mov_b16_e32 v5.l, v36.h
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s4
	v_add3_u32 v42, v37, v44, 0x7fff
	v_cmp_o_f32_e64 s4, v37, v37
	v_mov_b16_e32 v37.l, v35.h
	v_mov_b16_e32 v37.h, v5.h
	v_cndmask_b16 v41.h, 0x7fff, v40.h, vcc_lo
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s5
	v_and_b32_e32 v39, 1, v5
	v_mov_b16_e32 v5.l, v34.h
	v_mov_b16_e32 v40.l, v33.h
	v_mov_b16_e32 v40.h, v5.h
	v_cndmask_b16 v38.h, 0x7fff, v42.h, s4
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v39, v36, v39, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	v_and_b32_e32 v36, 1, v5
	v_and_b32_e32 v40, 1, v40
	v_mov_b16_e32 v42.l, v32.h
	v_mov_b16_e32 v42.h, v5.h
	v_mov_b16_e32 v5.l, v6.h
	v_add3_u32 v37, v35, v37, 0x7fff
	v_cndmask_b16 v39.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	v_add3_u32 v35, v33, v40, 0x7fff
	v_and_b32_e32 v40, 1, v42
	v_and_b32_e32 v5, 1, v5
	v_add3_u32 v36, v34, v36, 0x7fff
	v_cmp_o_f32_e64 s4, v34, v34
	v_cmp_o_f32_e64 s5, v33, v33
	v_add3_u32 v33, v32, v40, 0x7fff
	v_add3_u32 v5, v6, v5, 0x7fff
	v_cmp_o_f32_e64 s6, v6, v6
	v_cmp_o_f32_e64 s7, v32, v32
	v_cndmask_b16 v39.l, 0x7fff, v37.h, vcc_lo
	v_cndmask_b16 v6.h, 0x7fff, v36.h, s4
	v_cndmask_b16 v6.l, 0x7fff, v35.h, s5
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s6
	v_cndmask_b16 v5.l, 0x7fff, v33.h, s7
	v_cndmask_b32_e64 v32, v4, v3, s0
	v_cndmask_b32_e64 v3, v3, v4, s0
	v_cndmask_b32_e64 v4, v43, v41, s0
	v_cndmask_b32_e64 v34, v6, v38, s0
	v_cndmask_b32_e64 v6, v38, v6, s0
	v_cndmask_b32_e64 v35, v39, v5, s0
	v_cndmask_b32_e64 v33, v41, v43, s0
	v_permlanex16_b32 v36, v3, s48, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v4, s48, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v37, v5, v39, s0
	v_permlanex16_b32 v39, v6, s48, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v35, s48, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v3, v36, v32, v12
	v_perm_b32 v4, v36, v32, v13
	v_perm_b32 v5, v38, v33, v12
	v_perm_b32 v6, v38, v33, v13
	v_add_lshl_u32 v36, s10, v0, 1
	v_perm_b32 v32, v39, v34, v12
	v_perm_b32 v33, v39, v34, v13
	v_perm_b32 v34, v35, v37, v12
	v_perm_b32 v35, v35, v37, v13
	v_add_lshl_u32 v37, s10, v1, 1
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	s_clause 0x1
	buffer_store_b128 v[3:6], v36, s[20:23], 0 offen
	buffer_store_b128 v[32:35], v37, s[20:23], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_lt_i32 s2, s34
	s_cbranch_scc0 .LBB0_6
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s4, s2
	s_ashr_i32 s6, s2, 31
	s_mul_hi_u32 s5, s4, s45
	s_xor_b32 s6, s6, s44
	s_mul_i32 s7, s5, s43
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v35, 0
	s_sub_i32 s4, s4, s7
	s_add_i32 s7, s5, 1
	s_sub_i32 s10, s4, s43
	s_cmp_ge_u32 s4, s43
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	s_cselect_b32 s5, s7, s5
	s_cselect_b32 s4, s10, s4
	s_add_i32 s7, s5, 1
	s_cmp_ge_u32 s4, s43
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	s_cselect_b32 s4, s7, s5
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v39, 0
	s_xor_b32 s4, s4, s6
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	s_sub_i32 s4, s4, s6
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s5, s4, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s4, s4, s40
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s6, s33, s5
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s13, s2, s4
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s10, s6, 4
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s7, s10
	v_mov_b32_e32 v44, 0
	s_cvt_f32_u32 s6, s7
	s_sub_i32 s11, 0, s7
	v_mov_b32_e32 v46, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v3, s6
	v_readfirstlane_b32 s6, v3
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s11, s11, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s6, s11
	s_abs_i32 s11, s13
	s_add_i32 s6, s6, s4
	s_mul_hi_u32 s4, s11, s6
	s_xor_b32 s6, s13, s10
	s_mul_i32 s14, s4, s7
	s_ashr_i32 s6, s6, 31
	s_sub_i32 s11, s11, s14
	s_add_i32 s14, s4, 1
	s_sub_i32 s15, s11, s7
	s_cmp_ge_u32 s11, s7
	s_cselect_b32 s4, s14, s4
	s_cselect_b32 s11, s15, s11
	s_add_i32 s14, s4, 1
	s_cmp_ge_u32 s11, s7
	s_cselect_b32 s4, s14, s4
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_and_b32 vcc_lo, exec_lo, s1
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_xor_b32 s7, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s7, s6
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s10, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s10, s13, s10
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s10, s10, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 18 is_stmt 1              ; generate_amdgcn.py:221:18
	s_lshl_b32 s5, s10, 6
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_or_b32 v3, s7, 8, v8
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v4, s5, v11
	s_lshl_b32 s10, s6, 8
	s_lshl_b32 s7, s7, 7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_subrev_nc_u32_e32 v47, s10, v3
	v_mul_lo_u32 v48, s47, v4
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v3, s5, v9
	v_or_b32_e32 v4, s7, v10
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v6, s5, v7
	s_lshl_b32 s6, s6, 7
	v_or_b32_e32 v5, s7, v7
	v_mul_lo_u32 v49, s47, v3
	v_subrev_nc_u32_e32 v32, s6, v4
	v_mad_u64_u32 v[3:4], null, s41, v6, v[2:3]
	s_delay_alu instid0(VALU_DEP_4)
	v_subrev_nc_u32_e32 v33, s6, v5
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v37, 0
	v_mad_u64_u32 v[4:5], null, s41, v32, v[2:3]
	v_mad_u64_u32 v[5:6], null, s41, v33, v[2:3]
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v6, 0
	s_mov_b32 s6, 0
	s_mov_b32 s7, s42
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_add_nc_u32_e32 v50, s6, v2
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_add_nc_u32_e32 v51, s6, v3
	.loc	1 268 38                        ; generate_amdgcn.py:268:38
	v_add_nc_u32_e32 v52, s6, v5
	.loc	1 268 30 is_stmt 0              ; generate_amdgcn.py:268:30
	v_add_nc_u32_e32 v53, s6, v4
	s_mov_b32 s30, s26
	.loc	1 259 31 is_stmt 1              ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e32 vcc_lo, s41, v50
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_mov_b32 s31, s27
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_nc_u32_e32 v56, v14, v47
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s10, s26
	s_mov_b32 s11, s27
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s38, s26
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_cndmask_b32_e32 v50, 0x80000000, v51, vcc_lo
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	v_cndmask_b32_e32 v52, 0x80000000, v52, vcc_lo
	v_cndmask_b32_e32 v54, 0x80000000, v53, vcc_lo
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	buffer_load_b64 v[50:51], v50, s[24:27], 0 offen
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_clause 0x1
	buffer_load_b64 v[52:53], v52, s[28:31], 0 offen
	buffer_load_b64 v[54:55], v54, s[28:31], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s39, s27
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v47, s46, v47
	s_add_i32 s7, s7, -1
	s_add_i32 s6, s6, 64
	s_cmp_lg_u32 s7, 0
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt vmcnt(2)
	ds_store_b64 v15, v[50:51]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[66:69], v16 offset1:4
	ds_load_2addr_stride64_b64 v[70:73], v17 offset1:4
	ds_load_2addr_stride64_b64 v[74:77], v18 offset1:4
	ds_load_2addr_stride64_b64 v[78:81], v19 offset1:4
	ds_load_2addr_stride64_b64 v[82:85], v20 offset1:4
	ds_load_2addr_stride64_b64 v[86:89], v21 offset1:4
	ds_load_2addr_stride64_b64 v[90:93], v22 offset1:4
	ds_load_2addr_stride64_b64 v[94:97], v23 offset1:4
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v15, v[52:53], v[54:55] offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_clause 0x1
	buffer_load_u16 v110, v49, s[8:11], 0 offen
	buffer_load_u16 v111, v48, s[8:11], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x7
	buffer_load_u16 v112, v56, s[36:39], 0 offen
	buffer_load_u16 v113, v56, s[36:39], 0 offen offset:4
	buffer_load_u16 v114, v56, s[36:39], 0 offen offset:12
	buffer_load_u16 v115, v56, s[36:39], 0 offen offset:24
	buffer_load_u16 v116, v56, s[36:39], 0 offen offset:16
	buffer_load_u16 v117, v56, s[36:39], 0 offen offset:8
	buffer_load_u16 v118, v56, s[36:39], 0 offen offset:20
	buffer_load_u16 v119, v56, s[36:39], 0 offen offset:28
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_b64 v[98:99], v24
	ds_load_b64 v[100:101], v25
	ds_load_b64 v[102:103], v26
	ds_load_b64 v[104:105], v27
	ds_load_b64 v[106:107], v28
	ds_load_b64 v[108:109], v29
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v57, s19 :: v_dual_mov_b32 v50, s12
	v_dual_mov_b32 v56, s18 :: v_dual_mov_b32 v55, s17
	v_dual_mov_b32 v54, s16 :: v_dual_mov_b32 v53, s15
	v_dual_mov_b32 v52, s14 :: v_dual_mov_b32 v51, s13
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v49, 2, v49
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[58:65], v[98:99], v[66:67], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[98:99], v[68:69], v[50:57] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_b64 v[66:67], v30
	ds_load_b64 v[68:69], v31
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[58:65], v[100:101], v[70:71], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[100:101], v[72:73], v[50:57] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[58:65], v[102:103], v[74:75], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[102:103], v[76:77], v[50:57] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[58:65], v[104:105], v[78:79], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[104:105], v[80:81], v[50:57] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[58:65], v[106:107], v[82:83], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[106:107], v[84:85], v[50:57] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[58:65], v[108:109], v[86:87], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[108:109], v[88:89], v[50:57] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[58:65], v[66:67], v[90:91], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[66:67], v[92:93], v[50:57] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[58:65], v[68:69], v[94:95], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[68:69], v[96:97], v[50:57] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v67, 16, v111
	v_lshlrev_b32_e32 v66, 16, v110
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v69, 16, v112
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v53, v67, v53 :: v_dual_lshlrev_b32 v70, 16, v114
	v_dual_mul_f32 v51, v67, v51 :: v_dual_add_nc_u32 v48, 2, v48
	v_dual_mul_f32 v59, v59, v66 :: v_dual_lshlrev_b32 v68, 16, v113
	v_mul_f32_e32 v61, v61, v66
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v58, v58, v66 :: v_dual_lshlrev_b32 v71, 16, v117
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v55, v67, v55 :: v_dual_lshlrev_b32 v72, 16, v118
	v_dual_mul_f32 v60, v60, v66 :: v_dual_lshlrev_b32 v73, 16, v116
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v63, v63, v66 :: v_dual_lshlrev_b32 v74, 16, v119
	v_dual_mul_f32 v62, v62, v66 :: v_dual_lshlrev_b32 v75, 16, v115
	v_dual_mul_f32 v64, v64, v66 :: v_dual_mul_f32 v57, v67, v57
	v_dual_mul_f32 v65, v65, v66 :: v_dual_mul_f32 v52, v67, v52
	v_dual_mul_f32 v50, v67, v50 :: v_dual_fmac_f32 v45, v58, v69
	v_mul_f32_e32 v54, v67, v54
	v_dual_mul_f32 v56, v67, v56 :: v_dual_fmac_f32 v43, v61, v70
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v46, v59, v68 :: v_dual_fmac_f32 v39, v65, v74
	v_dual_fmac_f32 v44, v60, v71 :: v_dual_fmac_f32 v41, v63, v72
	v_dual_fmac_f32 v42, v62, v73 :: v_dual_fmac_f32 v37, v51, v68
	v_dual_fmac_f32 v38, v50, v69 :: v_dual_fmac_f32 v35, v52, v71
	v_dual_fmac_f32 v40, v64, v75 :: v_dual_fmac_f32 v33, v54, v73
	v_fmac_f32_e32 v36, v53, v70
	v_fmac_f32_e32 v34, v55, v72
	v_fmac_f32_e32 v32, v56, v75
	v_fmac_f32_e32 v6, v57, v74
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_2
.LBB0_6:                                ; %._crit_edge5
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 120
		.amdhsa_next_free_sgpr 49
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
		.amdhsa_inst_pref_size 24
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.num_vgpr, 120
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 2980
; TotalNumSgprs: 51
; NumVgprs: 120
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 51
; NumVGPRsForWavesPerEU: 120
; Occupancy: 12
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
	.byte	205                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	206                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	246                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp0-.Lfunc_begin0
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     120
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
