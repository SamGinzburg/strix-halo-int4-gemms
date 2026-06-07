	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk
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
	s_add_i32 s4, s34, 15
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
	s_lshr_b32 s6, s6, 28
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
	s_ashr_i32 s33, s4, 4
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s34, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s44, s34, s33
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s44
	s_cbranch_scc1 .LBB0_6
; %bb.1:                                ; %.lr.ph8
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s4, s[0:1], 0x38
	s_load_b64 s[24:25], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	v_dual_mov_b32 v16, 0x5410 :: v_dual_lshlrev_b32 v1, 1, v0
	.loc	1 221 36 is_stmt 1              ; generate_amdgcn.py:221:36
	v_and_b32_e32 v19, 15, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v3, 16, v0
	.loc	1 250 28                        ; generate_amdgcn.py:250:28
	v_lshrrev_b32_e32 v2, 4, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v1, 24, v1
	v_mov_b32_e32 v17, 0x7632
	v_lshlrev_b32_e32 v11, 3, v0
	v_or_b32_e32 v12, 0x3f0, v0
	v_and_b32_e32 v4, 24, v2
	v_lshl_or_b32 v5, v19, 5, v1
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v1, 1, v3
	v_or_b32_e32 v13, 0x7f0, v0
	v_or_b32_e32 v14, 0xbf0, v0
	v_xor_b32_e32 v4, v4, v0
	v_xor_b32_e32 v6, 8, v5
	v_mad_u64_u32 v[8:9], null, s35, v19, v[1:2]
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s4, 63
.Ltmp12:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_lshr_b32 s1, s4, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s5, s0, 31
.Ltmp14:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s4, s4, s1
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_lshr_b32 s5, s5, 26
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s45, s4, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s1, s0, s5
	s_mov_b32 s36, s10
	s_ashr_i32 s46, s1, 6
	s_cmp_gt_i32 s0, 63
	v_cmp_eq_u32_e64 s0, 0, v3
	s_cselect_b32 s4, -1, 0
	s_abs_i32 s10, s34
.Ltmp18:
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s3, s3, 5
	s_cvt_f32_u32 s1, s10
	v_cndmask_b32_e64 v1, 0x1054, v16, s0
	v_cndmask_b32_e64 v9, 0x3276, v17, s0
	v_or_b32_e32 v31, s3, v2
	v_rcp_iflag_f32_e32 v16, s1
	v_xor_b32_e32 v7, 16, v5
	v_lshl_or_b32 v1, v1, 8, v1
	v_lshl_or_b32 v9, v9, 8, v9
	v_xor_b32_e32 v10, 24, v5
	v_or_b32_e32 v15, 0xff0, v0
	v_cndmask_b32_e64 v2, 0, 1, s4
	v_and_b32_e32 v1, 0x540054, v1
	v_and_b32_e32 v9, 0x760076, v9
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v20, 5, v0
	v_readfirstlane_b32 s1, v16
	v_add_nc_u32_e32 v21, 0, v19
	v_lshl_or_b32 v1, v1, 4, v1
	v_lshl_or_b32 v9, v9, 4, v9
	v_add_nc_u32_e32 v22, 16, v8
	s_mul_f32 s1, s1, 0x4f7ffffe
	v_add_nc_u32_e32 v23, 32, v8
	v_and_b32_e32 v29, 0x5040504, v1
	v_and_b32_e32 v1, 0x1e0, v0
	s_cvt_u32_f32 s5, s1
	s_sub_i32 s1, 0, s10
	v_and_b32_e32 v30, 0x7060706, v9
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_and_or_b32 v9, v0, 31, s3
	s_mul_i32 s6, s1, s5
	v_cmp_eq_u32_e64 s1, 0, v1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mul_lo_u32 v1, s35, v31
	s_mul_hi_u32 s6, s5, s6
	v_add_nc_u32_e32 v24, 48, v8
	v_add_nc_u32_e32 v25, 64, v8
	v_add_nc_u32_e32 v26, 0x50, v8
	v_add_nc_u32_e32 v27, 0x60, v8
	v_add_nc_u32_e32 v28, 0x70, v8
	s_add_i32 s47, s5, s6
	v_lshrrev_b32_e32 v32, 3, v3
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_lshl_add_u32 v33, v19, 3, v1
	v_cmp_ne_u32_e64 s3, 1, v2
	v_cmp_gt_i32_e64 s4, 32, v31
	v_cmp_gt_i32_e64 s5, 32, v9
	v_add_nc_u32_e32 v34, 0, v4
	v_add_nc_u32_e32 v35, 0, v5
	v_add_nc_u32_e32 v36, 0, v6
	v_add_nc_u32_e32 v37, 0, v7
	v_add_nc_u32_e32 v38, 0, v10
	v_add_nc_u32_e32 v39, 0, v11
	v_add_nc_u32_e32 v40, 0, v12
	v_add_nc_u32_e32 v41, 0, v13
	v_add_nc_u32_e32 v42, 0, v14
	v_add_nc_u32_e32 v43, 0, v15
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b32 s28, s8
	s_and_b32 s29, s9, 0xffff
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s16, 0
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_and_b32 s25, s25, 0xffff
	s_ashr_i32 s11, s34, 31
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s48, s35, 1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_lshl_b32 s49, s46, 1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s50, s35, 5
	s_mov_b32 s51, 0x76543210
	s_mov_b32 s26, s30
	s_mov_b32 s27, s31
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v0.h, 0
	v_mov_b16_e32 v0.l, v107.h
	v_mov_b16_e32 v1.l, v106.h
	v_mov_b16_e32 v3.l, v104.h
	v_cmp_o_f32_e32 vcc_lo, v107, v107
	v_mov_b16_e32 v1.h, v0.h
	v_and_b32_e32 v2, 1, v0
	v_mov_b16_e32 v0.l, v105.h
	v_mov_b16_e32 v3.h, v0.h
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s6, s7, 7
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v1, 1, v1
	v_add3_u32 v2, v107, v2, 0x7fff
	v_and_b32_e32 v4, 1, v0
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v0.l, v103.h
	v_add3_u32 v5, v106, v1, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v2.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v106, v106
	v_add3_u32 v3, v104, v3, 0x7fff
	v_add3_u32 v2, v105, v4, 0x7fff
	v_cmp_o_f32_e64 s7, v104, v104
	v_mov_b16_e32 v4.l, v102.h
	v_mov_b16_e32 v4.h, v0.h
	v_and_b32_e32 v6, 1, v0
	v_cndmask_b16 v1.l, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v2.l, 0x7fff, v3.h, s7
	v_cmp_o_f32_e32 vcc_lo, v103, v103
	v_and_b32_e32 v3, 1, v4
	v_add3_u32 v4, v103, v6, 0x7fff
	v_mov_b16_e32 v0.l, v101.h
	.loc	1 277 22 is_stmt 0              ; generate_amdgcn.py:277:22
	s_mul_i32 s14, s8, s35
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v5.l, v100.h
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_add_i32 s14, s14, s6
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s6, v105, v105
	v_mov_b16_e32 v5.h, v0.h
	v_add3_u32 v6, v102, v3, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v102, v102
	v_and_b32_e32 v4, 1, v0
	v_mov_b16_e32 v7.l, v98.h
	v_mov_b16_e32 v7.h, v0.h
	v_mov_b16_e32 v0.l, v99.h
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s6
	v_and_b32_e32 v5, 1, v5
	v_add3_u32 v4, v101, v4, 0x7fff
	v_cmp_o_f32_e64 s6, v101, v101
	v_cndmask_b16 v3.l, 0x7fff, v6.h, vcc_lo
	v_and_b32_e32 v6, 1, v7
	v_and_b32_e32 v7, 1, v0
	v_mov_b16_e32 v0.l, v97.h
	v_add3_u32 v5, v100, v5, 0x7fff
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s6
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	v_add3_u32 v6, v98, v6, 0x7fff
	v_add3_u32 v7, v99, v7, 0x7fff
	v_cmp_o_f32_e64 s6, v99, v99
	v_cmp_o_f32_e64 s7, v98, v98
	v_mov_b16_e32 v10.l, v96.h
	v_mov_b16_e32 v10.h, v0.h
	v_and_b32_e32 v11, 1, v0
	v_cndmask_b16 v4.l, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v5.h, 0x7fff, v7.h, s6
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s7
	v_and_b32_e32 v6, 1, v10
	v_add3_u32 v7, v97, v11, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v97, v97
	v_mov_b16_e32 v0.l, v95.h
	v_mov_b16_e32 v10.l, v94.h
	v_add3_u32 v11, v96, v6, 0x7fff
	v_mov_b16_e32 v12.l, v92.h
	v_cndmask_b16 v6.h, 0x7fff, v7.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v96, v96
	v_and_b32_e32 v7, 1, v0
	v_mov_b16_e32 v12.h, v0.h
	v_mov_b16_e32 v0.l, v93.h
	v_and_b32_e32 v10, 1, v10
	v_cmp_o_f32_e64 s6, v95, v95
	v_add3_u32 v7, v95, v7, 0x7fff
	v_cndmask_b16 v6.l, 0x7fff, v11.h, vcc_lo
	v_and_b32_e32 v11, 1, v12
	v_and_b32_e32 v12, 1, v0
	v_mov_b16_e32 v0.l, v91.h
	v_add3_u32 v10, v94, v10, 0x7fff
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s6
	v_cmp_o_f32_e32 vcc_lo, v94, v94
	v_add3_u32 v11, v92, v11, 0x7fff
	v_add3_u32 v12, v93, v12, 0x7fff
	v_cmp_o_f32_e64 s6, v93, v93
	v_cmp_o_f32_e64 s7, v92, v92
	v_mov_b16_e32 v13.l, v90.h
	v_mov_b16_e32 v13.h, v0.h
	v_and_b32_e32 v14, 1, v0
	v_cndmask_b16 v7.l, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s6
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s7
	v_and_b32_e32 v11, 1, v13
	v_add3_u32 v12, v91, v14, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v91, v91
	v_mov_b16_e32 v0.l, v89.h
	v_mov_b16_e32 v13.l, v88.h
	v_add3_u32 v11, v90, v11, 0x7fff
	v_mov_b16_e32 v15.l, v86.h
	v_cndmask_b16 v12.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v90, v90
	v_and_b32_e32 v14, 1, v0
	v_mov_b16_e32 v15.h, v0.h
	v_mov_b16_e32 v0.l, v87.h
	v_and_b32_e32 v13, 1, v13
	v_cmp_o_f32_e64 s6, v89, v89
	v_add3_u32 v14, v89, v14, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v11.h, vcc_lo
	v_and_b32_e32 v11, 1, v15
	v_and_b32_e32 v15, 1, v0
	v_mov_b16_e32 v0.l, v85.h
	v_add3_u32 v13, v88, v13, 0x7fff
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s6
	v_cmp_o_f32_e32 vcc_lo, v88, v88
	v_add3_u32 v11, v86, v11, 0x7fff
	v_add3_u32 v15, v87, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v87, v87
	v_cmp_o_f32_e64 s7, v86, v86
	v_mov_b16_e32 v16.l, v84.h
	v_mov_b16_e32 v16.h, v0.h
	v_and_b32_e32 v17, 1, v0
	v_cndmask_b16 v14.l, 0x7fff, v13.h, vcc_lo
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s6
	v_cndmask_b16 v13.l, 0x7fff, v11.h, s7
	v_and_b32_e32 v11, 1, v16
	v_add3_u32 v15, v85, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v85, v85
	v_mov_b16_e32 v0.l, v83.h
	v_mov_b16_e32 v16.l, v82.h
	v_add3_u32 v11, v84, v11, 0x7fff
	v_mov_b16_e32 v18.l, v81.h
	v_cndmask_b16 v15.h, 0x7fff, v15.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v84, v84
	v_and_b32_e32 v17, 1, v0
	v_mov_b16_e32 v18.h, v0.h
	v_mov_b16_e32 v0.l, v80.h
	v_and_b32_e32 v16, 1, v16
	v_cmp_o_f32_e64 s6, v83, v83
	v_add3_u32 v17, v83, v17, 0x7fff
	v_cndmask_b16 v15.l, 0x7fff, v11.h, vcc_lo
	v_and_b32_e32 v11, 1, v18
	v_and_b32_e32 v18, 1, v0
	v_mov_b16_e32 v0.l, v79.h
	v_add3_u32 v16, v82, v16, 0x7fff
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s6
	v_cmp_o_f32_e32 vcc_lo, v82, v82
	v_add3_u32 v11, v81, v11, 0x7fff
	v_add3_u32 v18, v80, v18, 0x7fff
	v_cmp_o_f32_e64 s6, v80, v80
	v_cmp_o_f32_e64 s7, v81, v81
	v_mov_b16_e32 v80.l, v78.h
	v_mov_b16_e32 v80.h, v0.h
	v_and_b32_e32 v81, 1, v0
	v_cndmask_b16 v17.l, 0x7fff, v16.h, vcc_lo
	v_cndmask_b16 v16.h, 0x7fff, v18.h, s6
	v_cndmask_b16 v16.l, 0x7fff, v11.h, s7
	v_and_b32_e32 v11, 1, v80
	v_add3_u32 v18, v79, v81, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	v_mov_b16_e32 v0.l, v77.h
	v_mov_b16_e32 v79.l, v76.h
	v_mov_b16_e32 v79.h, v0.h
	v_add3_u32 v11, v78, v11, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v78, v78
	v_and_b32_e32 v78, 1, v0
	v_mov_b16_e32 v80.l, v75.h
	v_mov_b16_e32 v0.l, v74.h
	v_and_b32_e32 v79, 1, v79
	v_cmp_o_f32_e64 s6, v77, v77
	v_add3_u32 v78, v77, v78, 0x7fff
	v_cndmask_b16 v18.l, 0x7fff, v11.h, vcc_lo
	v_and_b32_e32 v11, 1, v80
	v_and_b32_e32 v77, 1, v0
	v_mov_b16_e32 v0.l, v73.h
	v_add3_u32 v79, v76, v79, 0x7fff
	v_cndmask_b16 v78.h, 0x7fff, v78.h, s6
	v_cmp_o_f32_e32 vcc_lo, v76, v76
	v_add3_u32 v11, v75, v11, 0x7fff
	v_add3_u32 v76, v74, v77, 0x7fff
	v_cmp_o_f32_e64 s6, v74, v74
	v_cmp_o_f32_e64 s7, v75, v75
	v_mov_b16_e32 v74.l, v72.h
	v_mov_b16_e32 v74.h, v0.h
	v_and_b32_e32 v75, 1, v0
	v_cndmask_b16 v78.l, 0x7fff, v79.h, vcc_lo
	v_cndmask_b16 v76.l, 0x7fff, v11.h, s7
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_and_b32_e32 v11, 1, v74
	v_add3_u32 v74, v73, v75, 0x7fff
	v_mov_b16_e32 v0.l, v70.h
	v_mov_b16_e32 v73.l, v71.h
	v_mov_b16_e32 v73.h, v0.h
	v_add3_u32 v11, v72, v11, 0x7fff
	v_cndmask_b16 v74.h, 0x7fff, v74.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v72, v72
	v_and_b32_e32 v72, 1, v0
	v_mov_b16_e32 v75.l, v69.h
	v_mov_b16_e32 v75.h, v0.h
	v_mov_b16_e32 v0.l, v68.h
	v_cndmask_b16 v76.h, 0x7fff, v76.h, s6
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v72, v70, v72, 0x7fff
	v_cmp_o_f32_e64 s6, v70, v70
	v_cndmask_b16 v74.l, 0x7fff, v11.h, vcc_lo
	v_and_b32_e32 v11, 1, v75
	v_and_b32_e32 v70, 1, v0
	v_mov_b16_e32 v0.l, v67.h
	v_add3_u32 v73, v71, v73, 0x7fff
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s6
	v_cmp_o_f32_e32 vcc_lo, v71, v71
	v_add3_u32 v11, v69, v11, 0x7fff
	v_add3_u32 v70, v68, v70, 0x7fff
	v_cmp_o_f32_e64 s6, v68, v68
	v_cmp_o_f32_e64 s7, v69, v69
	v_mov_b16_e32 v68.l, v66.h
	v_mov_b16_e32 v68.h, v0.h
	v_and_b32_e32 v69, 1, v0
	v_cndmask_b16 v72.l, 0x7fff, v73.h, vcc_lo
	v_cndmask_b16 v70.l, 0x7fff, v11.h, s7
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	v_and_b32_e32 v11, 1, v68
	v_add3_u32 v68, v67, v69, 0x7fff
	v_mov_b16_e32 v0.l, v65.h
	v_mov_b16_e32 v67.l, v64.h
	v_mov_b16_e32 v67.h, v0.h
	v_add3_u32 v11, v66, v11, 0x7fff
	v_cndmask_b16 v68.h, 0x7fff, v68.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_and_b32_e32 v66, 1, v0
	v_mov_b16_e32 v69.l, v63.h
	v_mov_b16_e32 v69.h, v0.h
	v_mov_b16_e32 v0.l, v62.h
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s6
	v_and_b32_e32 v67, 1, v67
	v_add3_u32 v66, v65, v66, 0x7fff
	v_cmp_o_f32_e64 s6, v65, v65
	v_cndmask_b16 v68.l, 0x7fff, v11.h, vcc_lo
	v_and_b32_e32 v11, 1, v69
	v_and_b32_e32 v65, 1, v0
	v_mov_b16_e32 v0.l, v61.h
	v_add3_u32 v67, v64, v67, 0x7fff
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s6
	v_cmp_o_f32_e32 vcc_lo, v64, v64
	v_add3_u32 v11, v63, v11, 0x7fff
	v_add3_u32 v64, v62, v65, 0x7fff
	v_cmp_o_f32_e64 s6, v62, v62
	v_cmp_o_f32_e64 s7, v63, v63
	v_mov_b16_e32 v62.l, v60.h
	v_mov_b16_e32 v62.h, v0.h
	v_and_b32_e32 v63, 1, v0
	v_cndmask_b16 v66.l, 0x7fff, v67.h, vcc_lo
	v_cndmask_b16 v64.l, 0x7fff, v11.h, s7
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	v_and_b32_e32 v11, 1, v62
	v_add3_u32 v62, v61, v63, 0x7fff
	v_mov_b16_e32 v0.l, v59.h
	v_mov_b16_e32 v61.l, v58.h
	v_mov_b16_e32 v61.h, v0.h
	v_add3_u32 v11, v60, v11, 0x7fff
	v_cndmask_b16 v62.h, 0x7fff, v62.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	v_and_b32_e32 v60, 1, v0
	v_mov_b16_e32 v63.l, v56.h
	v_mov_b16_e32 v63.h, v0.h
	v_mov_b16_e32 v0.l, v57.h
	v_cndmask_b16 v64.h, 0x7fff, v64.h, s6
	v_and_b32_e32 v61, 1, v61
	v_add3_u32 v60, v59, v60, 0x7fff
	v_cmp_o_f32_e64 s6, v59, v59
	v_cndmask_b16 v62.l, 0x7fff, v11.h, vcc_lo
	v_and_b32_e32 v11, 1, v63
	v_and_b32_e32 v59, 1, v0
	v_mov_b16_e32 v0.l, v55.h
	v_add3_u32 v61, v58, v61, 0x7fff
	v_cndmask_b16 v60.h, 0x7fff, v60.h, s6
	v_cmp_o_f32_e32 vcc_lo, v58, v58
	v_add3_u32 v11, v56, v11, 0x7fff
	v_add3_u32 v58, v57, v59, 0x7fff
	v_cmp_o_f32_e64 s6, v57, v57
	v_cmp_o_f32_e64 s7, v56, v56
	v_mov_b16_e32 v56.l, v54.h
	v_mov_b16_e32 v56.h, v0.h
	v_and_b32_e32 v57, 1, v0
	v_cndmask_b16 v60.l, 0x7fff, v61.h, vcc_lo
	v_cndmask_b16 v58.l, 0x7fff, v11.h, s7
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	v_and_b32_e32 v11, 1, v56
	v_add3_u32 v56, v55, v57, 0x7fff
	v_mov_b16_e32 v0.l, v53.h
	v_mov_b16_e32 v55.l, v52.h
	v_mov_b16_e32 v55.h, v0.h
	v_add3_u32 v11, v54, v11, 0x7fff
	v_cndmask_b16 v56.h, 0x7fff, v56.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	v_and_b32_e32 v54, 1, v0
	v_mov_b16_e32 v57.l, v50.h
	v_mov_b16_e32 v57.h, v0.h
	v_mov_b16_e32 v0.l, v51.h
	v_cndmask_b16 v58.h, 0x7fff, v58.h, s6
	v_and_b32_e32 v55, 1, v55
	v_add3_u32 v54, v53, v54, 0x7fff
	v_cmp_o_f32_e64 s6, v53, v53
	v_cndmask_b16 v56.l, 0x7fff, v11.h, vcc_lo
	v_and_b32_e32 v11, 1, v57
	v_and_b32_e32 v53, 1, v0
	v_add3_u32 v55, v52, v55, 0x7fff
	v_cndmask_b16 v54.h, 0x7fff, v54.h, s6
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	v_add3_u32 v11, v50, v11, 0x7fff
	v_add3_u32 v52, v51, v53, 0x7fff
	v_cmp_o_f32_e64 s6, v51, v51
	v_cmp_o_f32_e64 s7, v50, v50
	v_mov_b16_e32 v50.l, v48.h
	v_mov_b16_e32 v50.h, v0.h
	v_mov_b16_e32 v0.l, v49.h
	v_cndmask_b16 v51.h, 0x7fff, v52.h, s6
	v_cndmask_b16 v51.l, 0x7fff, v11.h, s7
	v_mov_b16_e32 v52.l, v47.h
	v_and_b32_e32 v11, 1, v50
	v_and_b32_e32 v50, 1, v0
	v_mov_b16_e32 v0.l, v46.h
	v_mov_b16_e32 v52.h, v0.h
	v_cndmask_b16 v54.l, 0x7fff, v55.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_add3_u32 v50, v49, v50, 0x7fff
	v_and_b32_e32 v49, 1, v0
	v_and_b32_e32 v52, 1, v52
	v_mov_b16_e32 v53.l, v45.h
	v_mov_b16_e32 v53.h, v0.h
	v_mov_b16_e32 v0.l, v44.h
	v_add3_u32 v11, v48, v11, 0x7fff
	v_cndmask_b16 v50.h, 0x7fff, v50.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	v_add3_u32 v48, v47, v52, 0x7fff
	v_and_b32_e32 v52, 1, v53
	v_and_b32_e32 v0, 1, v0
	v_add3_u32 v49, v46, v49, 0x7fff
	v_cmp_o_f32_e64 s6, v46, v46
	v_cmp_o_f32_e64 s7, v47, v47
	v_add3_u32 v46, v45, v52, 0x7fff
	v_add3_u32 v0, v44, v0, 0x7fff
	v_cmp_o_f32_e64 s8, v44, v44
	v_cmp_o_f32_e64 s9, v45, v45
	v_cndmask_b16 v50.l, 0x7fff, v11.h, vcc_lo
	v_cndmask_b16 v11.h, 0x7fff, v49.h, s6
	v_cndmask_b16 v11.l, 0x7fff, v48.h, s7
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s8
	v_cndmask_b16 v0.l, 0x7fff, v46.h, s9
	v_cndmask_b32_e64 v44, v3, v1, s0
	v_cndmask_b32_e64 v1, v1, v3, s0
	v_cndmask_b32_e64 v3, v4, v2, s0
	v_cndmask_b32_e64 v2, v2, v4, s0
	v_cndmask_b32_e64 v45, v7, v5, s0
	v_cndmask_b32_e64 v4, v5, v7, s0
	v_cndmask_b32_e64 v7, v10, v6, s0
	v_cndmask_b32_e64 v5, v6, v10, s0
	v_cndmask_b32_e64 v46, v13, v12, s0
	v_cndmask_b32_e64 v6, v12, v13, s0
	v_cndmask_b32_e64 v13, v15, v14, s0
	v_cndmask_b32_e64 v10, v14, v15, s0
	v_cndmask_b32_e64 v15, v18, v17, s0
	v_cndmask_b32_e64 v12, v17, v18, s0
	v_cndmask_b32_e64 v17, v78, v16, s0
	v_cndmask_b32_e64 v14, v16, v78, s0
	v_cndmask_b32_e64 v16, v76, v72, s0
	v_cndmask_b32_e64 v18, v72, v76, s0
	v_cndmask_b32_e64 v53, v62, v66, s0
	v_cndmask_b32_e64 v55, v66, v62, s0
	v_cndmask_b32_e64 v57, v56, v60, s0
	v_cndmask_b32_e64 v56, v60, v56, s0
	v_cndmask_b32_e64 v59, v54, v58, s0
	v_cndmask_b32_e64 v54, v58, v54, s0
	v_cndmask_b32_e64 v58, v11, v51, s0
	v_cndmask_b32_e64 v11, v51, v11, s0
	v_cndmask_b32_e64 v60, v0, v50, s0
	v_cndmask_b32_e64 v0, v50, v0, s0
	v_permlanex16_b32 v1, v1, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v51, v4, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v66, v16, s51, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v48, v74, v70, s0
	v_cndmask_b32_e64 v52, v68, v64, s0
	v_permlanex16_b32 v50, v2, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v61, v5, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v62, v6, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v69, v0, s51, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v44, v29
	v_perm_b32 v1, v1, v44, v30
	v_perm_b32 v4, v51, v45, v29
	v_perm_b32 v5, v51, v45, v30
	v_perm_b32 v44, v66, v18, v29
	v_perm_b32 v45, v66, v18, v30
	v_add_lshl_u32 v18, s14, v8, 1
	v_cndmask_b32_e64 v47, v70, v74, s0
	v_cndmask_b32_e64 v49, v64, v68, s0
	v_permlanex16_b32 v63, v10, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v48, v48, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v52, v52, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v55, v55, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v56, v56, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v67, v54, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v68, v11, s51, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v2, v50, v3, v29
	v_perm_b32 v3, v50, v3, v30
	v_perm_b32 v6, v61, v7, v29
	v_perm_b32 v7, v61, v7, v30
	v_perm_b32 v10, v62, v46, v29
	v_perm_b32 v11, v62, v46, v30
	v_add_lshl_u32 v61, v22, s14, 1
	v_add_lshl_u32 v62, v23, s14, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s1
	v_permlanex16_b32 v64, v12, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v65, v14, s51, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v46, v48, v47, v29
	v_perm_b32 v47, v48, v47, v30
	v_perm_b32 v48, v52, v49, v29
	v_perm_b32 v49, v52, v49, v30
	v_perm_b32 v50, v55, v53, v29
	v_perm_b32 v51, v55, v53, v30
	v_perm_b32 v52, v56, v57, v29
	v_perm_b32 v53, v56, v57, v30
	v_perm_b32 v54, v67, v59, v29
	v_perm_b32 v55, v67, v59, v30
	v_perm_b32 v56, v68, v58, v29
	v_perm_b32 v57, v68, v58, v30
	v_perm_b32 v58, v69, v60, v29
	v_perm_b32 v59, v69, v60, v30
	v_cndmask_b32_e64 v60, 0x80000000, v61, s1
	v_cndmask_b32_e64 v61, 0x80000000, v62, s1
	v_add_lshl_u32 v62, v24, s14, 1
	buffer_store_b128 v[0:3], v18, s[24:27], 0 offen
	v_add_lshl_u32 v0, v25, s14, 1
	v_perm_b32 v12, v63, v13, v29
	v_perm_b32 v13, v63, v13, v30
	v_perm_b32 v14, v64, v15, v29
	v_perm_b32 v15, v64, v15, v30
	v_perm_b32 v16, v65, v17, v29
	v_perm_b32 v17, v65, v17, v30
	v_cndmask_b32_e64 v1, 0x80000000, v62, s1
	v_add_lshl_u32 v2, v26, s14, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	v_add_lshl_u32 v3, v27, s14, 1
	s_clause 0x1
	buffer_store_b128 v[4:7], v60, s[24:27], 0 offen
	buffer_store_b128 v[10:13], v61, s[24:27], 0 offen
	v_add_lshl_u32 v4, v28, s14, 1
	buffer_store_b128 v[14:17], v1, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v2, s1
	buffer_store_b128 v[44:47], v0, s[24:27], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v3, s1
	v_cndmask_b32_e64 v2, 0x80000000, v4, s1
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	buffer_store_b128 v[48:51], v1, s[24:27], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_lt_i32 s2, s44
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	s_clause 0x1
	buffer_store_b128 v[52:55], v0, s[24:27], 0 offen
	buffer_store_b128 v[56:59], v2, s[24:27], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cbranch_scc0 .LBB0_6
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s6, s2
	s_ashr_i32 s7, s2, 31
	s_mul_hi_u32 s8, s6, s47
	s_xor_b32 s7, s7, s11
	s_mul_i32 s9, s8, s10
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s8, 1
	s_sub_i32 s14, s6, s10
	s_cmp_ge_u32 s6, s10
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	s_cselect_b32 s8, s9, s8
	s_cselect_b32 s6, s14, s6
	s_add_i32 s9, s8, 1
	s_cmp_ge_u32 s6, s10
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	s_cselect_b32 s6, s9, s8
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	s_xor_b32 s6, s6, s7
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	s_sub_i32 s8, s6, s7
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s6, s33, s8
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s15, s8, s34
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s14, s6, 1
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s15, s2, s15
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s7, s14
	s_abs_i32 s17, s15
	s_cvt_f32_u32 s6, s7
	s_sub_i32 s9, 0, s7
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v0, s6
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s6, v0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	s_mul_f32 s6, s6, 0x4f7ffffe
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s6, s6
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	s_mul_i32 s9, s9, s6
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	s_mul_hi_u32 s9, s6, s9
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	s_add_i32 s6, s6, s9
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	s_mul_hi_u32 s9, s17, s6
	s_xor_b32 s6, s15, s14
	s_mul_i32 s18, s9, s7
	s_ashr_i32 s6, s6, 31
	s_sub_i32 s17, s17, s18
	s_add_i32 s18, s9, 1
	s_sub_i32 s19, s17, s7
	s_cmp_ge_u32 s17, s7
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	s_cselect_b32 s9, s18, s9
	s_cselect_b32 s17, s19, s17
	s_add_i32 s18, s9, 1
	s_cmp_ge_u32 s17, s7
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	s_cselect_b32 s7, s18, s9
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	s_xor_b32 s9, s7, s6
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	s_sub_i32 s7, s9, s6
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v96, 0
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s14, s7, s14
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v94, 0
	s_sub_i32 s14, s15, s14
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v106, 0
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s14, s14, s8
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_and_b32 vcc_lo, exec_lo, s3
	.loc	1 221 18                        ; generate_amdgcn.py:221:18
	s_lshl_b32 s8, s14, 4
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v0, s8, v19
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v1, s8, v20
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_lshl_add_u32 v2, s9, 7, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v108, s49, v0
	s_lshl_b32 s15, s6, 8
	v_mad_u64_u32 v[10:11], null, s45, v1, v[9:10]
	s_lshl_b32 s6, s6, 7
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_subrev_nc_u32_e32 v109, s6, v2
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	s_lshl_b32 s14, s9, 8
	s_mov_b32 s52, 0
	s_sub_i32 s9, s14, s15
	s_mov_b32 s53, s46
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 271 31 is_stmt 1              ; generate_amdgcn.py:271:31
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 258 26                        ; generate_amdgcn.py:258:26
	v_add_nc_u32_e32 v0, s52, v31
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s14, s30
	s_mov_b32 s15, s31
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e32 vcc_lo, s45, v0
	v_add_nc_u32_e32 v0, s52, v9
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s53, s53, -1
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 259 31 is_stmt 0              ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e64 s6, s45, v0
	.loc	1 265 30 is_stmt 1              ; generate_amdgcn.py:265:30
	v_add_nc_u32_e32 v0, s52, v10
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s52, s52, 32
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 s6, s6, s5
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_cndmask_b32_e64 v0, 0x80000000, v0, s6
	buffer_load_u8 v2, v0, s[28:31], 0 offen
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	v_cndmask_b32_e32 v0, 0x80000000, v109, vcc_lo
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v109, s50, v109
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	buffer_load_b64 v[0:1], v0, s[36:39], 0 offen
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b8 v34, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[17:18], v35
	ds_load_b64 v[15:16], v36
	ds_load_b64 v[13:14], v37
	ds_load_b64 v[11:12], v38
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v39, v[0:1]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v0, v21 offset:640
	ds_load_u8 v1, v21 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v21 offset:896
	ds_load_u8 v2, v21 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v21 offset:128
	ds_load_u8 v3, v21
	v_lshl_or_b32 v111, v1, 16, v0
	ds_load_u8 v0, v21 offset:1664
	ds_load_u8 v1, v21 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v21 offset:384
	ds_load_u8 v4, v21 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v110, v3, 16, v2
	ds_load_u8 v1, v21 offset:1920
	ds_load_u8 v2, v21 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v21 offset:1152
	ds_load_u8 v3, v21 offset:1024
	v_lshl_or_b32 v113, v1, 16, v0
	ds_load_u8 v0, v21 offset:2688
	ds_load_u8 v1, v21 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v21 offset:1408
	ds_load_u8 v4, v21 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v3, 16, v2
	ds_load_u8 v1, v21 offset:2944
	ds_load_u8 v2, v21 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v21 offset:2176
	ds_load_u8 v3, v21 offset:2048
	v_lshl_or_b32 v115, v1, 16, v0
	ds_load_u8 v0, v21 offset:3712
	ds_load_u8 v1, v21 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v21 offset:2432
	ds_load_u8 v4, v21 offset:2304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v3, 16, v2
	ds_load_u8 v1, v21 offset:3968
	ds_load_u8 v2, v21 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v21 offset:3200
	ds_load_u8 v3, v21 offset:3072
	v_lshl_or_b32 v126, v1, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v21 offset:3456
	ds_load_u8 v4, v21 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v125, v3, 16, v2
	v_dual_mov_b32 v0, s16 :: v_dual_mov_b32 v7, s23
	v_dual_mov_b32 v1, s17 :: v_dual_mov_b32 v2, s18
	v_dual_mov_b32 v3, s19 :: v_dual_mov_b32 v4, s20
	v_dual_mov_b32 v5, s21 :: v_dual_mov_b32 v6, s22
	v_wmma_i32_16x16x16_iu4 v[117:124], v[110:111], v[17:18], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[117:124], v[112:113], v[15:16], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[117:124], v[114:115], v[13:14], v[117:124] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[117:124], v[125:126], v[11:12], v[117:124] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v116, v118
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v115, v119
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v118, v21 offset:656
	ds_load_u8 v119, v21 offset:528
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v114, v120
	v_cvt_f32_i32_e32 v113, v121
	v_cvt_f32_i32_e32 v112, v122
	v_cvt_f32_i32_e32 v111, v123
	v_cvt_f32_i32_e32 v110, v124
	v_cvt_f32_i32_e32 v117, v117
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v21 offset:912
	ds_load_u8 v120, v21 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v21 offset:16
	ds_load_u8 v121, v21 offset:144
	v_lshl_or_b32 v119, v119, 16, v118
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v120, v121, 0xc0c0004
	ds_load_u8 v121, v21 offset:400
	ds_load_u8 v122, v21 offset:272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v118, v121, 16, v120
	ds_load_u8 v120, v21 offset:1680
	ds_load_u8 v121, v21 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v21 offset:1936
	ds_load_u8 v122, v21 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v21 offset:1168
	ds_load_u8 v123, v21 offset:1040
	v_lshl_or_b32 v121, v121, 16, v120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v21 offset:1424
	ds_load_u8 v124, v21 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v120, v123, 16, v122
	ds_load_u8 v122, v21 offset:2704
	ds_load_u8 v123, v21 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v21 offset:2960
	ds_load_u8 v124, v21 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v21 offset:2192
	ds_load_u8 v125, v21 offset:2064
	v_lshl_or_b32 v123, v123, 16, v122
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	ds_load_u8 v125, v21 offset:2448
	ds_load_u8 v126, v21 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v126, v125, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v122, v125, 16, v124
	ds_load_u8 v124, v21 offset:3728
	ds_load_u8 v125, v21 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	ds_load_u8 v125, v21 offset:3984
	ds_load_u8 v126, v21 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v126, v125, 0xc0c0004
	ds_load_u8 v126, v21 offset:3216
	ds_load_u8 v127, v21 offset:3088
	v_lshl_or_b32 v134, v125, 16, v124
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v21 offset:3472
	ds_load_u8 v128, v21 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v133, v127, 16, v126
	v_wmma_i32_16x16x16_iu4 v[125:132], v[118:119], v[17:18], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[125:132], v[120:121], v[15:16], v[125:132] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[125:132], v[122:123], v[13:14], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[125:132], v[133:134], v[11:12], v[125:132] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v124, v126
	v_cvt_f32_i32_e32 v123, v127
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v126, v21 offset:672
	ds_load_u8 v127, v21 offset:544
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v122, v128
	v_cvt_f32_i32_e32 v121, v129
	v_cvt_f32_i32_e32 v120, v130
	v_cvt_f32_i32_e32 v119, v131
	v_cvt_f32_i32_e32 v118, v132
	v_cvt_f32_i32_e32 v125, v125
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v21 offset:928
	ds_load_u8 v128, v21 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v21 offset:32
	ds_load_u8 v129, v21 offset:160
	v_lshl_or_b32 v127, v127, 16, v126
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v128, v129, 0xc0c0004
	ds_load_u8 v129, v21 offset:416
	ds_load_u8 v130, v21 offset:288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v126, v129, 16, v128
	ds_load_u8 v128, v21 offset:1696
	ds_load_u8 v129, v21 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v21 offset:1952
	ds_load_u8 v130, v21 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v21 offset:1184
	ds_load_u8 v131, v21 offset:1056
	v_lshl_or_b32 v129, v129, 16, v128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v21 offset:1440
	ds_load_u8 v132, v21 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v128, v131, 16, v130
	ds_load_u8 v130, v21 offset:2720
	ds_load_u8 v131, v21 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v21 offset:2976
	ds_load_u8 v132, v21 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v21 offset:2208
	ds_load_u8 v133, v21 offset:2080
	v_lshl_or_b32 v131, v131, 16, v130
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	ds_load_u8 v133, v21 offset:2464
	ds_load_u8 v134, v21 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v130, v133, 16, v132
	ds_load_u8 v132, v21 offset:3744
	ds_load_u8 v133, v21 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	ds_load_u8 v133, v21 offset:4000
	ds_load_u8 v134, v21 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v21 offset:3232
	ds_load_u8 v135, v21 offset:3104
	v_lshl_or_b32 v142, v133, 16, v132
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v21 offset:3488
	ds_load_u8 v136, v21 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v141, v135, 16, v134
	v_wmma_i32_16x16x16_iu4 v[133:140], v[126:127], v[17:18], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[128:129], v[15:16], v[133:140] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[133:140], v[130:131], v[13:14], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[141:142], v[11:12], v[133:140] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v132, v134
	v_cvt_f32_i32_e32 v131, v135
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v134, v21 offset:688
	ds_load_u8 v135, v21 offset:560
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v130, v136
	v_cvt_f32_i32_e32 v129, v137
	v_cvt_f32_i32_e32 v128, v138
	v_cvt_f32_i32_e32 v127, v139
	v_cvt_f32_i32_e32 v126, v140
	v_cvt_f32_i32_e32 v133, v133
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v21 offset:944
	ds_load_u8 v136, v21 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v21 offset:48
	ds_load_u8 v137, v21 offset:176
	v_lshl_or_b32 v135, v135, 16, v134
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v136, v137, 0xc0c0004
	ds_load_u8 v137, v21 offset:432
	ds_load_u8 v138, v21 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v134, v137, 16, v136
	ds_load_u8 v136, v21 offset:1712
	ds_load_u8 v137, v21 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v137, v21 offset:1968
	ds_load_u8 v138, v21 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v21 offset:1200
	ds_load_u8 v139, v21 offset:1072
	v_lshl_or_b32 v137, v137, 16, v136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v21 offset:1456
	ds_load_u8 v140, v21 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v136, v139, 16, v138
	ds_load_u8 v138, v21 offset:2736
	ds_load_u8 v139, v21 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v21 offset:2992
	ds_load_u8 v140, v21 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v21 offset:2224
	ds_load_u8 v141, v21 offset:2096
	v_lshl_or_b32 v139, v139, 16, v138
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	ds_load_u8 v141, v21 offset:2480
	ds_load_u8 v142, v21 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v138, v141, 16, v140
	ds_load_u8 v140, v21 offset:3760
	ds_load_u8 v141, v21 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	ds_load_u8 v141, v21 offset:4016
	ds_load_u8 v142, v21 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v21 offset:3248
	ds_load_u8 v143, v21 offset:3120
	v_lshl_or_b32 v150, v141, 16, v140
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v21 offset:3504
	ds_load_u8 v144, v21 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v149, v143, 16, v142
	v_wmma_i32_16x16x16_iu4 v[141:148], v[134:135], v[17:18], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[141:148], v[136:137], v[15:16], v[141:148] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[141:148], v[138:139], v[13:14], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[141:148], v[149:150], v[11:12], v[141:148] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v140, v142
	v_cvt_f32_i32_e32 v139, v143
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v142, v21 offset:704
	ds_load_u8 v143, v21 offset:576
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v138, v144
	v_cvt_f32_i32_e32 v137, v145
	v_cvt_f32_i32_e32 v136, v146
	v_cvt_f32_i32_e32 v135, v147
	v_cvt_f32_i32_e32 v134, v148
	v_cvt_f32_i32_e32 v141, v141
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v21 offset:960
	ds_load_u8 v144, v21 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v21 offset:192
	ds_load_u8 v145, v21 offset:64
	v_lshl_or_b32 v143, v143, 16, v142
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v21 offset:448
	ds_load_u8 v146, v21 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v145, 16, v144
	ds_load_u8 v144, v21 offset:1728
	ds_load_u8 v145, v21 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v21 offset:1984
	ds_load_u8 v146, v21 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	ds_load_u8 v146, v21 offset:1216
	ds_load_u8 v147, v21 offset:1088
	v_lshl_or_b32 v145, v145, 16, v144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v21 offset:1472
	ds_load_u8 v148, v21 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v144, v147, 16, v146
	ds_load_u8 v146, v21 offset:2752
	ds_load_u8 v147, v21 offset:2624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v21 offset:3008
	ds_load_u8 v148, v21 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v21 offset:2240
	ds_load_u8 v149, v21 offset:2112
	v_lshl_or_b32 v147, v147, 16, v146
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v21 offset:2496
	ds_load_u8 v150, v21 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v146, v149, 16, v148
	ds_load_u8 v148, v21 offset:3776
	ds_load_u8 v149, v21 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v21 offset:4032
	ds_load_u8 v150, v21 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v21 offset:3264
	ds_load_u8 v151, v21 offset:3136
	v_lshl_or_b32 v149, v149, 16, v148
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v21 offset:3520
	ds_load_u8 v152, v21 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v148, v151, 16, v150
	v_wmma_i32_16x16x16_iu4 v[150:157], v[142:143], v[17:18], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[150:157], v[144:145], v[15:16], v[150:157] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[150:157], v[146:147], v[13:14], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[150:157], v[148:149], v[11:12], v[150:157] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v148, v151
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v149, v21 offset:720
	ds_load_u8 v151, v21 offset:592
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v147, v152
	v_cvt_f32_i32_e32 v146, v153
	v_cvt_f32_i32_e32 v145, v154
	v_cvt_f32_i32_e32 v144, v155
	v_cvt_f32_i32_e32 v143, v156
	v_cvt_f32_i32_e32 v142, v157
	v_cvt_f32_i32_e32 v150, v150
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v151, v149, 0xc0c0004
	ds_load_u8 v151, v21 offset:976
	ds_load_u8 v152, v21 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v21 offset:208
	ds_load_u8 v153, v21 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v153, v152, 0xc0c0004
	ds_load_u8 v152, v21 offset:464
	ds_load_u8 v154, v21 offset:336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v154, v152, 0xc0c0004
	v_lshl_or_b32 v152, v151, 16, v149
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v151, v154, 16, v153
	ds_load_u8 v149, v21 offset:1744
	ds_load_u8 v153, v21 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v153, v149, 0xc0c0004
	ds_load_u8 v153, v21 offset:2000
	ds_load_u8 v154, v21 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v21 offset:1232
	ds_load_u8 v155, v21 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v155, v154, 0xc0c0004
	ds_load_u8 v154, v21 offset:1488
	ds_load_u8 v156, v21 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v156, v154, 0xc0c0004
	v_lshl_or_b32 v154, v153, 16, v149
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v153, v156, 16, v155
	ds_load_u8 v149, v21 offset:2768
	ds_load_u8 v155, v21 offset:2640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v155, v149, 0xc0c0004
	ds_load_u8 v155, v21 offset:3024
	ds_load_u8 v156, v21 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	ds_load_u8 v156, v21 offset:2256
	ds_load_u8 v157, v21 offset:2128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v157, v156, 0xc0c0004
	ds_load_u8 v156, v21 offset:2512
	ds_load_u8 v158, v21 offset:2384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v158, v156, 0xc0c0004
	v_lshl_or_b32 v156, v155, 16, v149
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v155, v158, 16, v157
	ds_load_u8 v149, v21 offset:3792
	ds_load_u8 v157, v21 offset:3664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v157, v149, 0xc0c0004
	ds_load_u8 v157, v21 offset:4048
	ds_load_u8 v158, v21 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	ds_load_u8 v158, v21 offset:3280
	ds_load_u8 v159, v21 offset:3152
	v_lshl_or_b32 v167, v157, 16, v149
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v21 offset:3536
	ds_load_u8 v160, v21 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v166, v159, 16, v158
	v_wmma_i32_16x16x16_iu4 v[158:165], v[151:152], v[17:18], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[158:165], v[153:154], v[15:16], v[158:165] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[158:165], v[155:156], v[13:14], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[158:165], v[166:167], v[11:12], v[158:165] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v156, v159
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v157, v21 offset:736
	ds_load_u8 v159, v21 offset:608
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v155, v160
	v_cvt_f32_i32_e32 v154, v161
	v_cvt_f32_i32_e32 v153, v162
	v_cvt_f32_i32_e32 v152, v163
	v_cvt_f32_i32_e32 v151, v164
	v_cvt_f32_i32_e32 v149, v165
	v_cvt_f32_i32_e32 v158, v158
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v159, v157, 0xc0c0004
	ds_load_u8 v159, v21 offset:992
	ds_load_u8 v160, v21 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v21 offset:224
	ds_load_u8 v161, v21 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v161, v160, 0xc0c0004
	ds_load_u8 v160, v21 offset:480
	ds_load_u8 v162, v21 offset:352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v162, v160, 0xc0c0004
	v_lshl_or_b32 v160, v159, 16, v157
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v159, v162, 16, v161
	ds_load_u8 v157, v21 offset:1760
	ds_load_u8 v161, v21 offset:1632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v161, v157, 0xc0c0004
	ds_load_u8 v161, v21 offset:2016
	ds_load_u8 v162, v21 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	ds_load_u8 v162, v21 offset:1248
	ds_load_u8 v163, v21 offset:1120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v163, v162, 0xc0c0004
	ds_load_u8 v162, v21 offset:1504
	ds_load_u8 v164, v21 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v164, v162, 0xc0c0004
	v_lshl_or_b32 v162, v161, 16, v157
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v161, v164, 16, v163
	ds_load_u8 v157, v21 offset:2784
	ds_load_u8 v163, v21 offset:2656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v163, v157, 0xc0c0004
	ds_load_u8 v163, v21 offset:3040
	ds_load_u8 v164, v21 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v21 offset:2272
	ds_load_u8 v165, v21 offset:2144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v165, v164, 0xc0c0004
	ds_load_u8 v164, v21 offset:2528
	ds_load_u8 v166, v21 offset:2400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v166, v164, 0xc0c0004
	v_lshl_or_b32 v164, v163, 16, v157
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v163, v166, 16, v165
	ds_load_u8 v157, v21 offset:3808
	ds_load_u8 v165, v21 offset:3680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v165, v157, 0xc0c0004
	ds_load_u8 v165, v21 offset:4064
	ds_load_u8 v166, v21 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	ds_load_u8 v166, v21 offset:3296
	ds_load_u8 v167, v21 offset:3168
	v_lshl_or_b32 v174, v165, 16, v157
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v21 offset:3552
	ds_load_u8 v168, v21 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v173, v167, 16, v166
	v_wmma_i32_16x16x16_iu4 v[165:172], v[159:160], v[17:18], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[165:172], v[161:162], v[15:16], v[165:172] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[165:172], v[163:164], v[13:14], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[165:172], v[173:174], v[11:12], v[165:172] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v164, v166
	v_cvt_f32_i32_e32 v163, v167
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v166, v21 offset:240
	ds_load_u8 v167, v21 offset:112
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v162, v168
	v_cvt_f32_i32_e32 v161, v169
	v_cvt_f32_i32_e32 v160, v170
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v159, v171
	v_cvt_f32_i32_e32 v157, v172
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v21 offset:496
	ds_load_u8 v168, v21 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	ds_load_u8 v168, v21 offset:752
	ds_load_u8 v169, v21 offset:624
	v_lshl_or_b32 v166, v167, 16, v166
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	ds_load_u8 v169, v40
	ds_load_u8 v170, v21 offset:880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v167, v169, 16, v168
	v_wmma_i32_16x16x16_iu4 v[0:7], v[166:167], v[17:18], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v17, v21 offset:1264
	ds_load_u8 v18, v21 offset:1136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v21 offset:1520
	ds_load_u8 v166, v21 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v166, v18, 0xc0c0004
	ds_load_u8 v166, v21 offset:1776
	ds_load_u8 v167, v21 offset:1648
	v_lshl_or_b32 v17, v18, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v41
	ds_load_u8 v168, v21 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v18, v167, 16, v166
	v_wmma_i32_16x16x16_iu4 v[0:7], v[17:18], v[15:16], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v15, v21 offset:2288
	ds_load_u8 v16, v21 offset:2160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v21 offset:2544
	ds_load_u8 v17, v21 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v21 offset:2800
	ds_load_u8 v18, v21 offset:2672
	v_lshl_or_b32 v15, v16, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v42
	ds_load_u8 v166, v21 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v166, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v16, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[0:7], v[15:16], v[13:14], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v13, v21 offset:3312
	ds_load_u8 v14, v21 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v21 offset:3568
	ds_load_u8 v15, v21 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v21 offset:3824
	ds_load_u8 v16, v21 offset:3696
	v_lshl_or_b32 v13, v14, 16, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v43
	ds_load_u8 v17, v21 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v14, v16, 16, v15
	v_wmma_i32_16x16x16_iu4 v[0:7], v[13:14], v[11:12], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v11, v3
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	buffer_load_u16 v3, v108, s[12:15], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v14, v0
	v_cvt_f32_i32_e32 v0, v5
	v_cvt_f32_i32_e32 v12, v2
	v_cvt_f32_i32_e32 v2, v6
	v_cvt_f32_i32_e32 v13, v1
	v_cvt_f32_i32_e32 v1, v7
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v108, 2, v108
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v3
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_nc_u32_e32 v3, s9, v32
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s9, s9, s48
	s_cmp_lg_u32 s53, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v7, v5, v117
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v0, v5, v0
	v_mul_f32_e32 v2, v5, v2
	v_mul_f32_e32 v4, v5, v4
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v106, v7, v6
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:4
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v116 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v107, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:8
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v115 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v104, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:12
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v7, v5, v114
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v105, v7, v6
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:16
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v113 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v102, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:20
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v112 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v103, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:24
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v111 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v100, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:28
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v7, v5, v110
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v101, v7, v6
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:32
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v125 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v98, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:36
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v124 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v99, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:40
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v123 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v96, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:44
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v7, v5, v122
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v97, v7, v6
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:48
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v121 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v94, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:52
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v120 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v95, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:56
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v119 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v92, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:60
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v7, v5, v118
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v93, v7, v6
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:64
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v133 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v90, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:68
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v132 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v91, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:72
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v131 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v88, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:76
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v7, v5, v130
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v89, v7, v6
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:80
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v129 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v86, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:84
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v128 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v87, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:88
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v127 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v84, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:92
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v7, v5, v126
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v85, v7, v6
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:96
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v141 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v82, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:100
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v140 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v83, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:104
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v139 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v81, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:108
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v7, v5, v138
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v80, v7, v6
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:112
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v137 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v78, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:116
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v136 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v79, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:120
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v135 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v76, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:124
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v7, v5, v134
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v77, v7, v6
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:128
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v7, v5, v150
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v75, v7, v6
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:132
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v148 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v74, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:136
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v147 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v72, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:140
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v7, v5, v146
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v73, v7, v6
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:144
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v145 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v71, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:148
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v144 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v70, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:152
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v143 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v69, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:156
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v7, v5, v142
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v68, v7, v6
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:160
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v7, v5, v158
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v66, v7, v6
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:164
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v156 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v67, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:168
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v155 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v64, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:172
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v7, v5, v154
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v65, v7, v6
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:176
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v153 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v63, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:180
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v152 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v62, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:184
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v151 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v60, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:188
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v149 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v61, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:192
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v165 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v58, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:196
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v164 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v59, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:200
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v163 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v56, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:204
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v7, v5, v162
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v57, v7, v6
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:208
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v161 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v54, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:212
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v160 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v55, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:216
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v159 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v52, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:220
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v157 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v53, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:224
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v7, v5, v14
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v50, v7, v6
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:228
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v13 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v51, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:232
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v12 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v48, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:236
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v5, v11 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v49, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v3, s[40:43], 0 offen offset:240
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v47, v4, v6
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v4, v3, s[40:43], 0 offen offset:244
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v46, v0, v4
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v0, v3, s[40:43], 0 offen offset:248
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v45, v2, v0 :: v_dual_mul_f32 v0, v5, v1
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v1, v3, s[40:43], 0 offen offset:252
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v44, v0, v1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_2
.LBB0_6:                                ; %._crit_edge9
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 175
		.amdhsa_next_free_sgpr 54
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.num_vgpr, 175
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.numbered_sgpr, 54
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12280
; TotalNumSgprs: 56
; NumVgprs: 175
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 56
; NumVGPRsForWavesPerEU: 175
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     56
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     175
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
