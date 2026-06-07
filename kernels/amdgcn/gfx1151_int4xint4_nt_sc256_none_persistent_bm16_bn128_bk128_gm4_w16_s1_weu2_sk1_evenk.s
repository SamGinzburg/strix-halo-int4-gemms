	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 196 0                         ; generate_amdgcn.py:196:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[28:29], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:205:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s28, 15
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s29, 0x7f
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
	s_ashr_i32 s28, s4, 4
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s14, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s30, s14, s28
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s30
	s_cbranch_scc1 .LBB0_8
; %bb.1:                                ; %.lr.ph8
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s15, s[0:1], 0x38
	s_load_b64 s[12:13], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 258 43 is_stmt 1              ; generate_amdgcn.py:258:43
	s_lshl_b32 s33, s3, 6
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s31, s14, 2
	v_dual_mov_b32 v11, 0x5410 :: v_dual_and_b32 v2, 16, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v69, 15, v0
	v_lshlrev_b32_e32 v5, 2, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v70, 3, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshrrev_b32_e32 v1, 1, v2
	v_dual_mov_b32 v218, 0 :: v_dual_lshlrev_b32 v3, 1, v0
	v_and_b32_e32 v5, 56, v5
	.loc	1 250 28                        ; generate_amdgcn.py:250:28
	v_lshlrev_b32_e32 v4, 3, v0
	v_and_b32_e32 v6, 56, v70
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v68, 5, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_bfe_u32 v71, v0, 4, 1
	.loc	1 250 28                        ; generate_amdgcn.py:250:28
	v_and_b32_e32 v64, 62, v3
	v_and_b32_e32 v72, 56, v4
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s15, 0xff
.Ltmp12:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_lshr_b32 s3, s15, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s1, s0, 31
.Ltmp14:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s15, s15, s3
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_lshr_b32 s1, s1, 24
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s34, s15, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s1, s0, s1
	s_mov_b32 s16, s4
	s_ashr_i32 s35, s1, 8
	s_cmpk_gt_i32 s0, 0xff
	v_cmp_eq_u32_e64 s0, 0, v2
	s_cselect_b32 s1, -1, 0
	s_abs_i32 s36, s31
	v_mov_b32_e32 v2, 0x7632
	s_cvt_f32_u32 s3, s36
	v_cndmask_b32_e64 v11, 0x1054, v11, s0
	v_lshl_or_b32 v73, v69, 6, v5
	v_lshrrev_b32_e32 v5, 1, v0
	v_rcp_iflag_f32_e32 v14, s3
	v_cndmask_b32_e64 v2, 0x3276, v2, s0
	s_sub_i32 s4, 0, s36
	v_xor_b32_e32 v3, v3, v6
	v_and_b32_e32 v5, 56, v5
	v_xor_b32_e32 v6, 8, v73
	v_mad_u64_u32 v[65:66], null, s29, v69, v[1:2]
	v_lshl_or_b32 v1, v11, 8, v11
	v_lshl_or_b32 v2, v2, 8, v2
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s3, v14
	v_xor_b32_e32 v7, 16, v73
	v_xor_b32_e32 v8, 24, v73
	v_and_b32_e32 v1, 0x540054, v1
	v_and_b32_e32 v2, 0x760076, v2
	s_mul_f32 s3, s3, 0x4f7ffffe
	v_xor_b32_e32 v9, 32, v73
	v_xor_b32_e32 v10, 40, v73
	v_lshl_or_b32 v1, v1, 4, v1
	s_cvt_u32_f32 s3, s3
	v_xor_b32_e32 v12, 48, v73
	v_xor_b32_e32 v13, 56, v73
	v_xor_b32_e32 v4, v4, v5
	v_lshl_or_b32 v2, v2, 4, v2
	v_and_b32_e32 v77, 0x5040504, v1
	v_and_b32_e32 v0, 0x1e0, v0
	v_cndmask_b32_e64 v1, 0, 1, s1
	s_mul_i32 s4, s4, s3
	v_add_nc_u32_e32 v74, 0x50, v65
	s_mul_hi_u32 s4, s3, s4
	v_add_nc_u32_e32 v75, 0x60, v65
	v_add_nc_u32_e32 v76, 0x70, v65
	v_and_b32_e32 v78, 0x7060706, v2
	v_cmp_eq_u32_e64 s1, 0, v0
	s_add_i32 s38, s3, s4
	v_cmp_ne_u32_e64 s3, 1, v1
	v_add_nc_u32_e32 v79, 0, v3
	v_add_nc_u32_e32 v80, 0, v6
	v_add_nc_u32_e32 v81, 0, v7
	v_add_nc_u32_e32 v82, 0, v8
	v_add_nc_u32_e32 v83, 0, v9
	v_add_nc_u32_e32 v84, 0, v10
	v_add_nc_u32_e32 v85, 0, v12
	v_add_nc_u32_e32 v86, 0, v13
	v_add_nc_u32_e32 v87, 0, v4
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s17, s5, 0xffff
	s_and_b32 s21, s7, 0xffff
	s_mov_b32 s20, s6
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s25, s11, 0xffff
	s_mov_b32 s24, s10
	s_and_b32 s13, s13, 0xffff
	s_bfe_i32 s37, s14, 0x1001d
	s_mov_b32 s39, 0x76543210
	s_mov_b32 s14, s18
	s_mov_b32 s15, s19
	s_branch .LBB0_3
.Ltmp18:
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v0.h, 0
	v_mov_b16_e64 v0.l, v150.h
	v_mov_b16_e64 v1.l, v149.h
	v_mov_b16_e64 v3.l, v147.h
	v_cmp_o_f32_e32 vcc_lo, v150, v150
	v_mov_b16_e32 v1.h, v0.h
	v_and_b32_e32 v2, 1, v0
	v_mov_b16_e32 v3.h, v0.h
	v_mov_b16_e64 v0.l, v148.h
	v_cmp_o_f32_e64 s5, v147, v147
	v_and_b32_e32 v1, 1, v1
	v_add3_u32 v2, v150, v2, 0x7fff
	v_and_b32_e32 v3, 1, v3
	v_and_b32_e32 v4, 1, v0
	v_mov_b16_e64 v0.l, v146.h
	v_add3_u32 v5, v149, v1, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v2.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v149, v149
	v_add3_u32 v3, v147, v3, 0x7fff
	v_add3_u32 v2, v148, v4, 0x7fff
	v_mov_b16_e64 v4.l, v145.h
	v_mov_b16_e32 v4.h, v0.h
	v_and_b32_e32 v6, 1, v0
	v_cndmask_b16 v1.l, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v2.l, 0x7fff, v3.h, s5
	v_cmp_o_f32_e32 vcc_lo, v146, v146
	v_and_b32_e32 v3, 1, v4
	v_add3_u32 v4, v146, v6, 0x7fff
	v_mov_b16_e64 v0.l, v144.h
	v_cmp_o_f32_e64 s4, v148, v148
	v_mov_b16_e64 v5.l, v143.h
	v_mov_b16_e32 v5.h, v0.h
	v_add3_u32 v6, v145, v3, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v145, v145
	v_and_b32_e32 v4, 1, v0
	v_mov_b16_e64 v7.l, v141.h
	v_mov_b16_e32 v7.h, v0.h
	v_mov_b16_e64 v0.l, v142.h
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s4
	v_and_b32_e32 v5, 1, v5
	v_add3_u32 v4, v144, v4, 0x7fff
	v_cmp_o_f32_e64 s4, v144, v144
	v_cndmask_b16 v3.l, 0x7fff, v6.h, vcc_lo
	v_and_b32_e32 v6, 1, v7
	v_and_b32_e32 v7, 1, v0
	v_mov_b16_e64 v0.l, v140.h
	v_add3_u32 v5, v143, v5, 0x7fff
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s4
	v_cmp_o_f32_e32 vcc_lo, v143, v143
	v_add3_u32 v6, v141, v6, 0x7fff
	v_add3_u32 v7, v142, v7, 0x7fff
	v_cmp_o_f32_e64 s4, v142, v142
	v_cmp_o_f32_e64 s5, v141, v141
	v_mov_b16_e64 v8.l, v139.h
	v_mov_b16_e32 v8.h, v0.h
	v_and_b32_e32 v9, 1, v0
	v_cndmask_b16 v4.l, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v5.h, 0x7fff, v7.h, s4
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s5
	v_and_b32_e32 v6, 1, v8
	v_add3_u32 v7, v140, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v140, v140
	v_mov_b16_e64 v0.l, v138.h
	v_mov_b16_e64 v8.l, v137.h
	v_add3_u32 v9, v139, v6, 0x7fff
	v_mov_b16_e64 v10.l, v135.h
	v_cndmask_b16 v6.h, 0x7fff, v7.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v139, v139
	v_and_b32_e32 v7, 1, v0
	v_mov_b16_e32 v10.h, v0.h
	v_mov_b16_e64 v0.l, v136.h
	v_and_b32_e32 v8, 1, v8
	v_cmp_o_f32_e64 s4, v138, v138
	v_add3_u32 v7, v138, v7, 0x7fff
	v_cndmask_b16 v6.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v10
	v_and_b32_e32 v10, 1, v0
	v_mov_b16_e64 v0.l, v134.h
	v_add3_u32 v8, v137, v8, 0x7fff
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s4
	v_cmp_o_f32_e32 vcc_lo, v137, v137
	v_add3_u32 v9, v135, v9, 0x7fff
	v_add3_u32 v10, v136, v10, 0x7fff
	v_cmp_o_f32_e64 s4, v136, v136
	v_cmp_o_f32_e64 s5, v135, v135
	v_mov_b16_e64 v11.l, v133.h
	v_mov_b16_e32 v11.h, v0.h
	v_and_b32_e32 v12, 1, v0
	v_cndmask_b16 v7.l, 0x7fff, v8.h, vcc_lo
	v_cndmask_b16 v8.h, 0x7fff, v10.h, s4
	v_cndmask_b16 v8.l, 0x7fff, v9.h, s5
	v_and_b32_e32 v9, 1, v11
	v_add3_u32 v10, v134, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v134, v134
	v_mov_b16_e64 v0.l, v132.h
	v_mov_b16_e64 v11.l, v131.h
	v_add3_u32 v9, v133, v9, 0x7fff
	v_mov_b16_e64 v13.l, v129.h
	v_cndmask_b16 v10.h, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v133, v133
	v_and_b32_e32 v12, 1, v0
	v_mov_b16_e32 v13.h, v0.h
	v_mov_b16_e64 v0.l, v130.h
	v_and_b32_e32 v11, 1, v11
	v_cmp_o_f32_e64 s4, v132, v132
	v_add3_u32 v12, v132, v12, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v13
	v_and_b32_e32 v13, 1, v0
	v_mov_b16_e64 v0.l, v128.h
	v_add3_u32 v11, v131, v11, 0x7fff
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s4
	v_cmp_o_f32_e32 vcc_lo, v131, v131
	v_add3_u32 v9, v129, v9, 0x7fff
	v_add3_u32 v13, v130, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v130, v130
	v_cmp_o_f32_e64 s5, v129, v129
	v_mov_b16_e32 v14.l, v127.h
	v_mov_b16_e32 v14.h, v0.h
	v_and_b32_e32 v15, 1, v0
	v_cndmask_b16 v12.l, 0x7fff, v11.h, vcc_lo
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s4
	v_cndmask_b16 v11.l, 0x7fff, v9.h, s5
	v_and_b32_e32 v9, 1, v14
	v_add3_u32 v13, v128, v15, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v128, v128
	v_mov_b16_e32 v0.l, v126.h
	v_mov_b16_e32 v14.l, v125.h
	v_add3_u32 v9, v127, v9, 0x7fff
	v_mov_b16_e32 v16.l, v124.h
	v_cndmask_b16 v13.h, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v127, v127
	v_and_b32_e32 v15, 1, v0
	v_mov_b16_e32 v16.h, v0.h
	v_mov_b16_e32 v0.l, v123.h
	v_and_b32_e32 v14, 1, v14
	v_cmp_o_f32_e64 s4, v126, v126
	v_add3_u32 v15, v126, v15, 0x7fff
	v_cndmask_b16 v13.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v16
	v_and_b32_e32 v16, 1, v0
	v_mov_b16_e32 v0.l, v122.h
	v_add3_u32 v14, v125, v14, 0x7fff
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s4
	v_cmp_o_f32_e32 vcc_lo, v125, v125
	v_add3_u32 v9, v124, v9, 0x7fff
	v_add3_u32 v16, v123, v16, 0x7fff
	v_cmp_o_f32_e64 s4, v123, v123
	v_cmp_o_f32_e64 s5, v124, v124
	v_mov_b16_e32 v17.l, v121.h
	v_mov_b16_e32 v17.h, v0.h
	v_and_b32_e32 v18, 1, v0
	v_cndmask_b16 v15.l, 0x7fff, v14.h, vcc_lo
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s4
	v_cndmask_b16 v14.l, 0x7fff, v9.h, s5
	v_and_b32_e32 v9, 1, v17
	v_add3_u32 v16, v122, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v122, v122
	v_mov_b16_e32 v0.l, v120.h
	v_mov_b16_e32 v17.l, v119.h
	v_add3_u32 v9, v121, v9, 0x7fff
	v_mov_b16_e32 v19.l, v118.h
	v_cndmask_b16 v16.h, 0x7fff, v16.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v121, v121
	v_and_b32_e32 v18, 1, v0
	v_mov_b16_e32 v19.h, v0.h
	v_mov_b16_e32 v0.l, v117.h
	v_and_b32_e32 v17, 1, v17
	v_cmp_o_f32_e64 s4, v120, v120
	v_add3_u32 v18, v120, v18, 0x7fff
	v_cndmask_b16 v16.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v19
	v_and_b32_e32 v19, 1, v0
	v_mov_b16_e32 v0.l, v116.h
	v_add3_u32 v17, v119, v17, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s4
	v_cmp_o_f32_e32 vcc_lo, v119, v119
	v_add3_u32 v9, v118, v9, 0x7fff
	v_add3_u32 v19, v117, v19, 0x7fff
	v_cmp_o_f32_e64 s4, v117, v117
	v_cmp_o_f32_e64 s5, v118, v118
	v_mov_b16_e32 v20.l, v115.h
	v_mov_b16_e32 v20.h, v0.h
	v_and_b32_e32 v21, 1, v0
	v_cndmask_b16 v18.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v17.h, 0x7fff, v19.h, s4
	v_cndmask_b16 v17.l, 0x7fff, v9.h, s5
	v_and_b32_e32 v9, 1, v20
	v_add3_u32 v19, v116, v21, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v116, v116
	v_mov_b16_e32 v0.l, v114.h
	v_mov_b16_e32 v20.l, v113.h
	v_add3_u32 v9, v115, v9, 0x7fff
	v_mov_b16_e32 v22.l, v111.h
	v_cndmask_b16 v19.h, 0x7fff, v19.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v115, v115
	v_and_b32_e32 v21, 1, v0
	v_mov_b16_e32 v22.h, v0.h
	v_mov_b16_e32 v0.l, v112.h
	v_and_b32_e32 v20, 1, v20
	v_cmp_o_f32_e64 s4, v114, v114
	v_add3_u32 v21, v114, v21, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v22
	v_and_b32_e32 v22, 1, v0
	v_mov_b16_e32 v0.l, v110.h
	v_add3_u32 v20, v113, v20, 0x7fff
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s4
	v_cmp_o_f32_e32 vcc_lo, v113, v113
	v_add3_u32 v9, v111, v9, 0x7fff
	v_add3_u32 v22, v112, v22, 0x7fff
	v_cmp_o_f32_e64 s4, v112, v112
	v_cmp_o_f32_e64 s5, v111, v111
	v_mov_b16_e32 v23.l, v109.h
	v_mov_b16_e32 v23.h, v0.h
	v_and_b32_e32 v24, 1, v0
	v_cndmask_b16 v21.l, 0x7fff, v20.h, vcc_lo
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s4
	v_cndmask_b16 v20.l, 0x7fff, v9.h, s5
	v_and_b32_e32 v9, 1, v23
	v_add3_u32 v22, v110, v24, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v110, v110
	v_mov_b16_e32 v0.l, v108.h
	v_mov_b16_e32 v23.l, v107.h
	v_add3_u32 v9, v109, v9, 0x7fff
	v_mov_b16_e32 v25.l, v105.h
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v109, v109
	v_and_b32_e32 v24, 1, v0
	v_mov_b16_e32 v25.h, v0.h
	v_mov_b16_e32 v0.l, v106.h
	v_and_b32_e32 v23, 1, v23
	v_cmp_o_f32_e64 s4, v108, v108
	v_add3_u32 v24, v108, v24, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v25
	v_and_b32_e32 v25, 1, v0
	v_mov_b16_e32 v0.l, v104.h
	v_add3_u32 v23, v107, v23, 0x7fff
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s4
	v_cmp_o_f32_e32 vcc_lo, v107, v107
	v_add3_u32 v9, v105, v9, 0x7fff
	v_add3_u32 v25, v106, v25, 0x7fff
	v_cmp_o_f32_e64 s4, v106, v106
	v_cmp_o_f32_e64 s5, v105, v105
	v_mov_b16_e32 v26.l, v103.h
	v_mov_b16_e32 v26.h, v0.h
	v_and_b32_e32 v27, 1, v0
	v_cndmask_b16 v24.l, 0x7fff, v23.h, vcc_lo
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s4
	v_cndmask_b16 v23.l, 0x7fff, v9.h, s5
	v_and_b32_e32 v9, 1, v26
	v_add3_u32 v25, v104, v27, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v104, v104
	v_mov_b16_e32 v0.l, v102.h
	v_mov_b16_e32 v26.l, v101.h
	v_add3_u32 v9, v103, v9, 0x7fff
	v_mov_b16_e32 v28.l, v99.h
	v_cndmask_b16 v25.h, 0x7fff, v25.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v103, v103
	v_and_b32_e32 v27, 1, v0
	v_mov_b16_e32 v28.h, v0.h
	v_mov_b16_e32 v0.l, v100.h
	v_and_b32_e32 v26, 1, v26
	v_cmp_o_f32_e64 s4, v102, v102
	v_add3_u32 v27, v102, v27, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v28
	v_and_b32_e32 v28, 1, v0
	v_mov_b16_e32 v0.l, v98.h
	v_add3_u32 v26, v101, v26, 0x7fff
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s4
	v_cmp_o_f32_e32 vcc_lo, v101, v101
	v_add3_u32 v9, v99, v9, 0x7fff
	v_add3_u32 v28, v100, v28, 0x7fff
	v_cmp_o_f32_e64 s4, v100, v100
	v_cmp_o_f32_e64 s5, v99, v99
	v_mov_b16_e32 v29.l, v97.h
	v_mov_b16_e32 v29.h, v0.h
	v_and_b32_e32 v30, 1, v0
	v_cndmask_b16 v27.l, 0x7fff, v26.h, vcc_lo
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s4
	v_cndmask_b16 v26.l, 0x7fff, v9.h, s5
	v_and_b32_e32 v9, 1, v29
	v_add3_u32 v28, v98, v30, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	v_mov_b16_e32 v0.l, v96.h
	v_mov_b16_e32 v29.l, v95.h
	v_add3_u32 v9, v97, v9, 0x7fff
	v_mov_b16_e32 v31.l, v93.h
	v_cndmask_b16 v28.h, 0x7fff, v28.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v97, v97
	v_and_b32_e32 v30, 1, v0
	v_mov_b16_e32 v31.h, v0.h
	v_mov_b16_e32 v0.l, v94.h
	v_and_b32_e32 v29, 1, v29
	v_cmp_o_f32_e64 s4, v96, v96
	v_add3_u32 v30, v96, v30, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v31
	v_and_b32_e32 v31, 1, v0
	v_add3_u32 v29, v95, v29, 0x7fff
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s4
	v_cmp_o_f32_e32 vcc_lo, v95, v95
	v_cmp_o_f32_e64 s4, v94, v94
	v_add3_u32 v31, v94, v31, 0x7fff
	v_mov_b16_e32 v0.l, v92.h
	v_add3_u32 v9, v93, v9, 0x7fff
	v_cmp_o_f32_e64 s5, v93, v93
	v_mov_b16_e32 v32.l, v91.h
	v_mov_b16_e32 v32.h, v0.h
	v_cndmask_b16 v30.l, 0x7fff, v29.h, vcc_lo
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s4
	v_and_b32_e32 v31, 1, v0
	v_mov_b16_e32 v0.l, v89.h
	v_cndmask_b16 v29.l, 0x7fff, v9.h, s5
	v_and_b32_e32 v9, 1, v32
	v_mov_b16_e32 v32.l, v90.h
	v_mov_b16_e32 v34.l, v88.h
	v_and_b32_e32 v33, 1, v0
	v_mov_b16_e32 v34.h, v0.h
	v_mov_b16_e32 v0.l, v67.h
	v_add3_u32 v31, v92, v31, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v92, v92
	v_and_b32_e32 v32, 1, v32
	v_and_b32_e32 v34, 1, v34
	v_and_b32_e32 v0, 1, v0
	.loc	1 277 22 is_stmt 0              ; generate_amdgcn.py:277:22
	s_mul_i32 s10, s40, s29
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v9, v91, v9, 0x7fff
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_add_i32 s10, s10, s7
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v31.h, 0x7fff, v31.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v91, v91
	v_add3_u32 v32, v90, v32, 0x7fff
	v_add3_u32 v33, v89, v33, 0x7fff
	v_cmp_o_f32_e64 s4, v89, v89
	v_cmp_o_f32_e64 s5, v90, v90
	v_add3_u32 v34, v88, v34, 0x7fff
	v_add3_u32 v0, v67, v0, 0x7fff
	v_cmp_o_f32_e64 s6, v67, v67
	v_cmp_o_f32_e64 s7, v88, v88
	v_cndmask_b16 v31.l, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v9.h, 0x7fff, v33.h, s4
	v_cndmask_b16 v9.l, 0x7fff, v32.h, s5
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s6
	v_cndmask_b16 v0.l, 0x7fff, v34.h, s7
	v_cndmask_b32_e64 v32, v3, v1, s0
	v_cndmask_b32_e64 v1, v1, v3, s0
	v_cndmask_b32_e64 v3, v4, v2, s0
	v_cndmask_b32_e64 v2, v2, v4, s0
	v_cndmask_b32_e64 v33, v7, v5, s0
	v_cndmask_b32_e64 v4, v5, v7, s0
	v_cndmask_b32_e64 v7, v8, v6, s0
	v_cndmask_b32_e64 v5, v6, v8, s0
	v_cndmask_b32_e64 v8, v12, v13, s0
	v_cndmask_b32_e64 v34, v11, v10, s0
	v_cndmask_b32_e64 v6, v10, v11, s0
	v_cndmask_b32_e64 v11, v13, v12, s0
	v_cndmask_b32_e64 v13, v16, v15, s0
	v_cndmask_b32_e64 v10, v15, v16, s0
	v_cndmask_b32_e64 v15, v18, v14, s0
	v_cndmask_b32_e64 v12, v14, v18, s0
	v_cndmask_b32_e64 v18, v21, v17, s0
	v_cndmask_b32_e64 v14, v17, v21, s0
	v_cndmask_b32_e64 v21, v20, v19, s0
	v_cndmask_b32_e64 v16, v19, v20, s0
	v_cndmask_b32_e64 v35, v23, v22, s0
	v_cndmask_b32_e64 v17, v22, v23, s0
	v_cndmask_b32_e64 v23, v25, v24, s0
	v_cndmask_b32_e64 v19, v24, v25, s0
	v_cndmask_b32_e64 v25, v28, v27, s0
	v_cndmask_b32_e64 v20, v27, v28, s0
	v_cndmask_b32_e64 v27, v30, v26, s0
	v_cndmask_b32_e64 v22, v26, v30, s0
	v_cndmask_b32_e64 v30, v9, v29, s0
	v_cndmask_b32_e64 v9, v29, v9, s0
	v_cndmask_b32_e64 v36, v0, v31, s0
	v_cndmask_b32_e64 v0, v31, v0, s0
	v_permlanex16_b32 v26, v4, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v8, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v1, v1, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v2, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v5, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v6, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v10, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v14, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v16, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v17, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v9, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v0, s39, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v26, v33, v77
	v_perm_b32 v5, v26, v33, v78
	v_perm_b32 v10, v31, v11, v77
	v_perm_b32 v11, v31, v11, v78
	v_add_nc_u32_e32 v31, 16, v65
	v_add_lshl_u32 v33, s10, v65, 1
	v_perm_b32 v0, v1, v32, v77
	v_perm_b32 v1, v1, v32, v78
	v_add_nc_u32_e32 v32, 32, v65
	v_permlanex16_b32 v42, v19, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v20, s39, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v2, v24, v3, v77
	v_perm_b32 v3, v24, v3, v78
	v_perm_b32 v6, v28, v7, v77
	v_perm_b32 v7, v28, v7, v78
	v_perm_b32 v8, v29, v34, v77
	v_perm_b32 v9, v29, v34, v78
	v_perm_b32 v16, v39, v18, v77
	v_perm_b32 v17, v39, v18, v78
	v_perm_b32 v18, v40, v21, v77
	v_perm_b32 v19, v40, v21, v78
	v_perm_b32 v20, v41, v35, v77
	v_perm_b32 v21, v41, v35, v78
	v_perm_b32 v28, v45, v30, v77
	v_perm_b32 v29, v45, v30, v78
	v_add_lshl_u32 v34, v31, s10, 1
	v_perm_b32 v30, v46, v36, v77
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	v_add_nc_u32_e32 v35, 48, v65
	v_perm_b32 v31, v46, v36, v78
	v_add_nc_u32_e32 v36, 64, v65
	v_add_lshl_u32 v32, v32, s10, 1
	v_permlanex16_b32 v38, v12, s39, 0xfedcba98 op_sel:[1,0]
	v_add_lshl_u32 v35, v35, s10, 1
	buffer_store_b128 v[0:3], v33, s[12:15], 0 offen
	v_add_lshl_u32 v0, v36, s10, 1
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	v_cndmask_b32_e64 v32, 0x80000000, v32, s1
	v_permlanex16_b32 v44, v22, s39, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v12, v37, v13, v77
	v_perm_b32 v13, v37, v13, v78
	v_perm_b32 v14, v38, v15, v77
	v_perm_b32 v15, v38, v15, v78
	v_cndmask_b32_e64 v1, 0x80000000, v35, s1
	v_add_lshl_u32 v2, v74, s10, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	v_add_lshl_u32 v3, v75, s10, 1
	s_clause 0x1
	buffer_store_b128 v[4:7], v34, s[12:15], 0 offen
	buffer_store_b128 v[8:11], v32, s[12:15], 0 offen
	v_add_lshl_u32 v4, v76, s10, 1
	v_perm_b32 v22, v42, v23, v77
	v_perm_b32 v23, v42, v23, v78
	v_perm_b32 v24, v43, v25, v77
	v_perm_b32 v25, v43, v25, v78
	v_perm_b32 v26, v44, v27, v77
	v_perm_b32 v27, v44, v27, v78
	buffer_store_b128 v[12:15], v1, s[12:15], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v2, s1
	buffer_store_b128 v[16:19], v0, s[12:15], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v3, s1
	v_cndmask_b32_e64 v2, 0x80000000, v4, s1
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	buffer_store_b128 v[20:23], v1, s[12:15], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_lt_i32 s2, s30
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	s_clause 0x1
	buffer_store_b128 v[24:27], v0, s[12:15], 0 offen
	buffer_store_b128 v[28:31], v2, s[12:15], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cbranch_scc0 .LBB0_8
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
                                        ;       Child Loop BB0_6 Depth 3
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s4, s2
	s_ashr_i32 s5, s2, 31
	s_mul_hi_u32 s6, s4, s38
	s_xor_b32 s5, s5, s37
	s_mul_i32 s7, s6, s36
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v88, 0
	s_sub_i32 s4, s4, s7
	s_add_i32 s7, s6, 1
	s_sub_i32 s10, s4, s36
	s_cmp_ge_u32 s4, s36
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	s_cselect_b32 s6, s7, s6
	s_cselect_b32 s4, s10, s4
	s_add_i32 s7, s6, 1
	s_cmp_ge_u32 s4, s36
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	s_cselect_b32 s4, s7, s6
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	s_xor_b32 s4, s4, s5
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	s_sub_i32 s4, s4, s5
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s5, s4, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s4, s4, s31
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s6, s28, s5
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s4, s2, s4
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s6, s6, 4
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s22, s4
	s_abs_i32 s7, s6
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	s_cvt_f32_u32 s10, s7
	s_sub_i32 s11, 0, s7
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v101, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v0, s10
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s10, v0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	s_mul_f32 s10, s10, 0x4f7ffffe
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v119, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s10, s10
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v121, 0
	s_mul_i32 s11, s11, s10
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v125, 0
	s_mul_hi_u32 s11, s10, s11
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v127, 0
	s_add_i32 s10, s10, s11
	s_xor_b32 s11, s4, s6
	s_mul_hi_u32 s10, s22, s10
	s_ashr_i32 s11, s11, 31
	s_mul_i32 s23, s10, s7
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v131, 0
	s_sub_i32 s22, s22, s23
	s_add_i32 s23, s10, 1
	s_sub_i32 s26, s22, s7
	s_cmp_ge_u32 s22, s7
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v129, 0
	s_cselect_b32 s10, s23, s10
	s_cselect_b32 s22, s26, s22
	s_add_i32 s23, s10, 1
	s_cmp_ge_u32 s22, s7
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v133, 0
	s_cselect_b32 s7, s23, s10
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v135, 0
	s_xor_b32 s7, s7, s11
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v139, 0
	s_sub_i32 s7, s7, s11
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v137, 0
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s6, s7, s6
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v141, 0
	s_sub_i32 s4, s4, s6
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v149, 0
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s4, s4, s5
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_and_b32 vcc_lo, exec_lo, s3
	.loc	1 221 18                        ; generate_amdgcn.py:221:18
	s_lshl_b32 s40, s4, 4
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s7, s7, 7
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v0, 64, v70
	v_or_b32_e32 v1, s40, v68
	.loc	1 222 18 is_stmt 0              ; generate_amdgcn.py:222:18
	v_or_b32_e32 v2, s7, v70
	v_or_b32_e32 v3, s40, v69
	v_or_b32_e32 v151, s7, v71
	v_or_b32_e32 v0, s7, v0
	v_mad_u64_u32 v[66:67], null, v1, s34, v[64:65]
	v_mul_lo_u32 v152, v2, s34
	v_mul_lo_u32 v153, v3, s35
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v154, v0, s34
	v_or_b32_e32 v155, 2, v151
	v_or_b32_e32 v156, 4, v151
	v_or_b32_e32 v157, 6, v151
	v_or_b32_e32 v158, 8, v151
	v_or_b32_e32 v159, 10, v151
	v_or_b32_e32 v160, 12, v151
	v_or_b32_e32 v161, 14, v151
	v_or_b32_e32 v162, 16, v151
	v_or_b32_e32 v163, 18, v151
	v_or_b32_e32 v164, 20, v151
	v_or_b32_e32 v165, 22, v151
	v_or_b32_e32 v166, 24, v151
	v_or_b32_e32 v167, 26, v151
	v_or_b32_e32 v168, 28, v151
	v_or_b32_e32 v169, 30, v151
	v_or_b32_e32 v170, 32, v151
	v_or_b32_e32 v171, 34, v151
	v_or_b32_e32 v172, 36, v151
	v_or_b32_e32 v173, 38, v151
	v_or_b32_e32 v174, 40, v151
	v_or_b32_e32 v175, 42, v151
	v_or_b32_e32 v176, 44, v151
	v_or_b32_e32 v177, 46, v151
	v_or_b32_e32 v178, 48, v151
	v_or_b32_e32 v179, 50, v151
	v_or_b32_e32 v180, 52, v151
	v_or_b32_e32 v181, 54, v151
	v_or_b32_e32 v182, 56, v151
	v_or_b32_e32 v183, 58, v151
	v_or_b32_e32 v184, 60, v151
	v_or_b32_e32 v185, 62, v151
	v_or_b32_e32 v186, 64, v151
	v_or_b32_e32 v187, 0x42, v151
	v_or_b32_e32 v188, 0x44, v151
	v_or_b32_e32 v189, 0x46, v151
	v_or_b32_e32 v190, 0x48, v151
	v_or_b32_e32 v191, 0x4a, v151
	v_or_b32_e32 v192, 0x4c, v151
	v_or_b32_e32 v193, 0x4e, v151
	v_or_b32_e32 v194, 0x50, v151
	v_or_b32_e32 v195, 0x52, v151
	v_or_b32_e32 v196, 0x54, v151
	v_or_b32_e32 v197, 0x56, v151
	v_or_b32_e32 v198, 0x58, v151
	v_or_b32_e32 v199, 0x5a, v151
	v_or_b32_e32 v200, 0x5c, v151
	v_or_b32_e32 v201, 0x5e, v151
	v_or_b32_e32 v202, 0x60, v151
	v_or_b32_e32 v203, 0x62, v151
	v_or_b32_e32 v204, 0x64, v151
	v_or_b32_e32 v205, 0x66, v151
	v_or_b32_e32 v206, 0x68, v151
	v_or_b32_e32 v207, 0x6a, v151
	v_or_b32_e32 v208, 0x6c, v151
	v_or_b32_e32 v209, 0x6e, v151
	v_or_b32_e32 v210, 0x70, v151
	v_or_b32_e32 v211, 0x72, v151
	v_or_b32_e32 v212, 0x74, v151
	v_or_b32_e32 v213, 0x76, v151
	v_or_b32_e32 v214, 0x78, v151
	v_or_b32_e32 v215, 0x7a, v151
	v_or_b32_e32 v216, 0x7c, v151
	v_or_b32_e32 v217, 0x7e, v151
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v67, 0
	s_mov_b32 s41, 0
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_6 Depth 3
	.loc	1 0 18                          ; generate_amdgcn.py:0:18
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, v218
	v_mov_b32_e32 v2, v218
	v_dual_mov_b32 v3, v218 :: v_dual_mov_b32 v8, 0
	v_mov_b32_e32 v4, v218
	v_dual_mov_b32 v5, v218 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v6, v218
	v_dual_mov_b32 v7, v218 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v9, v218 :: v_dual_mov_b32 v32, 0
	v_mov_b32_e32 v10, v218
	v_dual_mov_b32 v11, v218 :: v_dual_mov_b32 v40, 0
	v_mov_b32_e32 v12, v218
	v_dual_mov_b32 v13, v218 :: v_dual_mov_b32 v48, 0
	v_mov_b32_e32 v14, v218
	v_dual_mov_b32 v15, v218 :: v_dual_mov_b32 v56, 0
	v_mov_b32_e32 v17, v218
	v_mov_b32_e32 v18, v218
	v_mov_b32_e32 v19, v218
	v_mov_b32_e32 v20, v218
	v_mov_b32_e32 v21, v218
	v_mov_b32_e32 v22, v218
	v_mov_b32_e32 v23, v218
	v_mov_b32_e32 v25, v218
	v_mov_b32_e32 v26, v218
	v_mov_b32_e32 v27, v218
	v_mov_b32_e32 v28, v218
	v_mov_b32_e32 v29, v218
	v_mov_b32_e32 v30, v218
	v_mov_b32_e32 v31, v218
	v_mov_b32_e32 v33, v218
	v_mov_b32_e32 v34, v218
	v_mov_b32_e32 v35, v218
	v_mov_b32_e32 v36, v218
	v_mov_b32_e32 v37, v218
	v_mov_b32_e32 v38, v218
	v_mov_b32_e32 v39, v218
	v_mov_b32_e32 v41, v218
	v_mov_b32_e32 v42, v218
	v_mov_b32_e32 v43, v218
	v_mov_b32_e32 v44, v218
	v_mov_b32_e32 v45, v218
	v_mov_b32_e32 v46, v218
	v_mov_b32_e32 v47, v218
	v_mov_b32_e32 v49, v218
	v_mov_b32_e32 v50, v218
	v_mov_b32_e32 v51, v218
	v_mov_b32_e32 v52, v218
	v_mov_b32_e32 v53, v218
	v_mov_b32_e32 v54, v218
	v_mov_b32_e32 v55, v218
	v_mov_b32_e32 v57, v218
	v_mov_b32_e32 v58, v218
	v_mov_b32_e32 v59, v218
	v_mov_b32_e32 v60, v218
	v_mov_b32_e32 v61, v218
	v_mov_b32_e32 v62, v218
	v_mov_b32_e32 v63, v218
	.loc	1 256 28 is_stmt 1              ; generate_amdgcn.py:256:28
	s_lshl_b32 s10, s41, 7
	s_mov_b32 s11, -1
	s_mov_b32 s4, 0
.LBB0_6:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_5 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 258 26 is_stmt 1              ; generate_amdgcn.py:258:26
	s_or_b32 s4, s4, s10
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_mov_b32 s22, s18
	.loc	1 258 26                        ; generate_amdgcn.py:258:26
	s_add_i32 s26, s4, s33
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_mov_b32 s23, s19
	.loc	1 258 26                        ; generate_amdgcn.py:258:26
	v_or_b32_e32 v219, s26, v64
	.loc	1 265 38                        ; generate_amdgcn.py:265:38
	v_add_nc_u32_e32 v221, s26, v66
	.loc	1 265 30 is_stmt 0              ; generate_amdgcn.py:265:30
	v_add_nc_u32_e32 v239, 0, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 259 31 is_stmt 1              ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e32 vcc_lo, s34, v219
	.loc	1 259 56 is_stmt 0              ; generate_amdgcn.py:259:56
	v_subrev_nc_u32_e32 v219, s10, v219
	.loc	1 259 55                        ; generate_amdgcn.py:259:55
	v_cmp_gt_i32_e64 s4, 0x80, v219
	.loc	1 258 26 is_stmt 1              ; generate_amdgcn.py:258:26
	v_or_b32_e32 v219, s26, v72
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 259 56 is_stmt 0              ; generate_amdgcn.py:259:56
	v_subrev_nc_u32_e32 v220, s10, v219
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e64 s6, s34, v219
	.loc	1 265 30 is_stmt 1              ; generate_amdgcn.py:265:30
	v_cndmask_b32_e32 v221, 0x80000000, v221, vcc_lo
	s_mov_b32 s4, 64
	.loc	1 259 55                        ; generate_amdgcn.py:259:55
	v_cmp_gt_i32_e64 s5, 0x80, v220
	.loc	1 268 38                        ; generate_amdgcn.py:268:38
	v_add_nc_u32_e32 v220, v219, v152
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, s6, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	v_dual_cndmask_b32 v220, 0x80000000, v220 :: v_dual_add_nc_u32 v219, v219, v154
	v_cndmask_b32_e32 v222, 0x80000000, v219, vcc_lo
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	buffer_load_u16 v223, v221, s[16:19], 0 offen
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_clause 0x1
	buffer_load_b64 v[219:220], v220, s[20:23], 0 offen
	buffer_load_b64 v[221:222], v222, s[20:23], 0 offen
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 257 17                        ; generate_amdgcn.py:257:17
	s_and_b32 vcc_lo, exec_lo, s11
	s_mov_b32 s11, 0
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt vmcnt(2)
	ds_store_b16 v79, v223
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[223:224], v239
	ds_load_b64 v[225:226], v80
	ds_load_b64 v[227:228], v81
	ds_load_b64 v[229:230], v82
	ds_load_b64 v[231:232], v83
	ds_load_b64 v[233:234], v84
	ds_load_b64 v[235:236], v85
	ds_load_b64 v[237:238], v86
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v87, v[219:220], v[221:222] offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[219:222], v239 offset1:2
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[219:220], v[223:224], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[221:222], v[223:224], v[8:15] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v239 offset0:4 offset1:6
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[16:23], v[219:220], v[223:224], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[221:222], v[223:224], v[24:31] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v239 offset0:8 offset1:10
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[219:220], v[223:224], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[221:222], v[223:224], v[40:47] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v239 offset0:12 offset1:14
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[219:220], v[223:224], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[221:222], v[223:224], v[56:63] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v80 offset1:2
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[219:220], v[225:226], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[221:222], v[225:226], v[8:15] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v80 offset0:4 offset1:6
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[16:23], v[219:220], v[225:226], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[221:222], v[225:226], v[24:31] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v80 offset0:8 offset1:10
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[219:220], v[225:226], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[221:222], v[225:226], v[40:47] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v80 offset0:12 offset1:14
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[219:220], v[225:226], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[221:222], v[225:226], v[56:63] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v81 offset1:2
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[219:220], v[227:228], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[221:222], v[227:228], v[8:15] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v81 offset0:4 offset1:6
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[16:23], v[219:220], v[227:228], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[221:222], v[227:228], v[24:31] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v81 offset0:8 offset1:10
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[219:220], v[227:228], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[221:222], v[227:228], v[40:47] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v81 offset0:12 offset1:14
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[219:220], v[227:228], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[221:222], v[227:228], v[56:63] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v82 offset1:2
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[219:220], v[229:230], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[221:222], v[229:230], v[8:15] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v82 offset0:4 offset1:6
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[16:23], v[219:220], v[229:230], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[221:222], v[229:230], v[24:31] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v82 offset0:8 offset1:10
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[219:220], v[229:230], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[221:222], v[229:230], v[40:47] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v82 offset0:12 offset1:14
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[219:220], v[229:230], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[221:222], v[229:230], v[56:63] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v83 offset1:2
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[219:220], v[231:232], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[221:222], v[231:232], v[8:15] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v83 offset0:4 offset1:6
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[16:23], v[219:220], v[231:232], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[221:222], v[231:232], v[24:31] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v83 offset0:8 offset1:10
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[219:220], v[231:232], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[221:222], v[231:232], v[40:47] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v83 offset0:12 offset1:14
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[219:220], v[231:232], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[221:222], v[231:232], v[56:63] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v84 offset1:2
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[219:220], v[233:234], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[221:222], v[233:234], v[8:15] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v84 offset0:4 offset1:6
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[16:23], v[219:220], v[233:234], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[221:222], v[233:234], v[24:31] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v84 offset0:8 offset1:10
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[219:220], v[233:234], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[221:222], v[233:234], v[40:47] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v84 offset0:12 offset1:14
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[219:220], v[233:234], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[221:222], v[233:234], v[56:63] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v85 offset1:2
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[219:220], v[235:236], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[221:222], v[235:236], v[8:15] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v85 offset0:4 offset1:6
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[16:23], v[219:220], v[235:236], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[221:222], v[235:236], v[24:31] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v85 offset0:8 offset1:10
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[219:220], v[235:236], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[221:222], v[235:236], v[40:47] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v85 offset0:12 offset1:14
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[219:220], v[235:236], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[221:222], v[235:236], v[56:63] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v86 offset1:2
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[219:220], v[237:238], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[221:222], v[237:238], v[8:15] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v86 offset0:4 offset1:6
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[16:23], v[219:220], v[237:238], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[221:222], v[237:238], v[24:31] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v86 offset0:8 offset1:10
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[219:220], v[237:238], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[221:222], v[237:238], v[40:47] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[219:222], v86 offset0:12 offset1:14
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[219:220], v[237:238], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[221:222], v[237:238], v[56:63] neg_lo:[1,1,0]
	.loc	1 257 17                        ; generate_amdgcn.py:257:17
	s_cbranch_vccnz .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=2
	.loc	1 273 40                        ; generate_amdgcn.py:273:40
	s_mul_i32 s4, s41, s29
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v220, v30
	v_cvt_f32_i32_e32 v219, v31
	v_cvt_f32_i32_e32 v31, v32
	v_cvt_f32_i32_e32 v30, v33
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	v_add_lshl_u32 v32, s41, v153, 1
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v151, s4, 1
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	buffer_load_u16 v32, v32, s[8:11], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v221, v29
	v_cvt_f32_i32_e32 v29, v34
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v34, v155, s4, 1
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v222, v28
	v_cvt_f32_i32_e32 v28, v35
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v35, v156, s4, 1
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v223, v27
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v34, v34, s[24:27], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v27, v36
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v36, v157, s4, 1
	buffer_load_u16 v35, v35, s[24:27], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v224, v26
	v_cvt_f32_i32_e32 v26, v37
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v37, v158, s4, 1
	buffer_load_u16 v36, v36, s[24:27], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v225, v25
	v_cvt_f32_i32_e32 v25, v38
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v38, v159, s4, 1
	buffer_load_u16 v37, v37, s[24:27], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v226, v24
	v_cvt_f32_i32_e32 v24, v39
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v39, v160, s4, 1
	buffer_load_u16 v38, v38, s[24:27], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v227, v23
	v_cvt_f32_i32_e32 v23, v40
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v40, v161, s4, 1
	buffer_load_u16 v39, v39, s[24:27], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v243, v0
	v_cvt_f32_i32_e32 v244, v1
	v_cvt_f32_i32_e32 v228, v22
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v40, v40, s[24:27], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v22, v41
	v_cvt_f32_i32_e32 v245, v2
	v_cvt_f32_i32_e32 v246, v3
	v_cvt_f32_i32_e32 v247, v4
	v_cvt_f32_i32_e32 v249, v6
	v_cvt_f32_i32_e32 v248, v5
	v_cvt_f32_i32_e32 v250, v7
	v_cvt_f32_i32_e32 v241, v9
	v_cvt_f32_i32_e32 v240, v10
	v_cvt_f32_i32_e32 v242, v8
	v_cvt_f32_i32_e32 v239, v11
	v_cvt_f32_i32_e32 v238, v12
	v_cvt_f32_i32_e32 v237, v13
	v_cvt_f32_i32_e32 v236, v14
	v_cvt_f32_i32_e32 v235, v15
	v_cvt_f32_i32_e32 v232, v18
	v_cvt_f32_i32_e32 v231, v19
	v_cvt_f32_i32_e32 v233, v17
	v_cvt_f32_i32_e32 v230, v20
	v_cvt_f32_i32_e32 v234, v16
	v_cvt_f32_i32_e32 v229, v21
	v_cvt_f32_i32_e32 v20, v43
	v_cvt_f32_i32_e32 v18, v45
	v_cvt_f32_i32_e32 v16, v47
	v_cvt_f32_i32_e32 v14, v49
	v_cvt_f32_i32_e32 v21, v42
	v_cvt_f32_i32_e32 v12, v51
	v_cvt_f32_i32_e32 v19, v44
	v_cvt_f32_i32_e32 v17, v46
	v_cvt_f32_i32_e32 v10, v53
	v_cvt_f32_i32_e32 v15, v48
	v_cvt_f32_i32_e32 v8, v55
	v_cvt_f32_i32_e32 v13, v50
	v_cvt_f32_i32_e32 v6, v57
	v_cvt_f32_i32_e32 v11, v52
	v_cvt_f32_i32_e32 v4, v59
	v_cvt_f32_i32_e32 v3, v60
	v_cvt_f32_i32_e32 v9, v54
	v_cvt_f32_i32_e32 v2, v61
	v_cvt_f32_i32_e32 v0, v63
	v_cvt_f32_i32_e32 v7, v56
	v_cvt_f32_i32_e32 v1, v62
	v_cvt_f32_i32_e32 v5, v58
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s41, s41, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	s_cmp_lg_u32 s41, s35
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v41, v32, v243
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v149, v41, v33
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v33, 16, v34
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v244
	v_mul_f32_e32 v29, v32, v29
	v_mul_f32_e32 v27, v32, v27
	v_mul_f32_e32 v20, v32, v20
	v_mul_f32_e32 v18, v32, v18
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v150, v34, v33 :: v_dual_lshlrev_b32 v33, 16, v35
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v245
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v35, v164, s4, 1
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v25, v32, v25
	v_mul_f32_e32 v21, v32, v21
	v_mul_f32_e32 v19, v32, v19
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v147, v34, v33
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v34, v32, v246 :: v_dual_lshlrev_b32 v33, 16, v36
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v36, v165, s4, 1
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v17, v32, v17
	v_mul_f32_e32 v8, v32, v8
	v_mul_f32_e32 v13, v32, v13
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v148, v34, v33
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v34, v32, v247 :: v_dual_lshlrev_b32 v33, 16, v37
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v37, v166, s4, 1
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v11, v32, v11
	v_mul_f32_e32 v3, v32, v3
	v_mul_f32_e32 v9, v32, v9
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v145, v34, v33
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v34, v32, v248 :: v_dual_lshlrev_b32 v33, 16, v38
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v38, v167, s4, 1
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v41, v32, v242
	v_mul_f32_e32 v1, v32, v1
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x3
	buffer_load_u16 v35, v35, s[24:27], 0 offen
	buffer_load_u16 v36, v36, s[24:27], 0 offen
	buffer_load_u16 v37, v37, s[24:27], 0 offen
	buffer_load_u16 v38, v38, s[24:27], 0 offen
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v146, v34, v33 :: v_dual_lshlrev_b32 v33, 16, v39
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v249
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v39, v168, s4, 1
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v5, v32, v5
	v_mul_f32_e32 v28, v32, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v30, v32, v30 :: v_dual_fmac_f32 v143, v34, v33
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v34, v32, v250 :: v_dual_lshlrev_b32 v33, 16, v40
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v39, v39, s[24:27], 0 offen
	v_add_lshl_u32 v40, v169, s4, 1
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v26, v32, v26
	v_mul_f32_e32 v24, v32, v24
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v144, v34, v33
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v162, s4, 1
	v_add_lshl_u32 v34, v163, s4, 1
	buffer_load_u16 v40, v40, s[24:27], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v31, v32, v31
	v_mul_f32_e32 v22, v32, v22
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	buffer_load_u16 v34, v34, s[24:27], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v16, v32, v16
	v_mul_f32_e32 v14, v32, v14
	v_mul_f32_e32 v12, v32, v12
	v_mul_f32_e32 v10, v32, v10
	v_mul_f32_e32 v6, v32, v6
	v_mul_f32_e32 v4, v32, v4
	v_mul_f32_e32 v2, v32, v2
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v0, v32, v0 :: v_dual_lshlrev_b32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v141, v41, v33
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v34
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v241
	v_dual_mul_f32 v41, v32, v234 :: v_dual_fmac_f32 v142, v34, v33
	v_dual_mul_f32 v34, v32, v240 :: v_dual_lshlrev_b32 v33, 16, v35
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v35, v172, s4, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v139, v34, v33
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v34, v32, v239 :: v_dual_lshlrev_b32 v33, 16, v36
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v35, v35, s[24:27], 0 offen
	v_add_lshl_u32 v36, v173, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v140, v34, v33
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v34, v32, v238 :: v_dual_lshlrev_b32 v33, 16, v37
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v36, v36, s[24:27], 0 offen
	v_add_lshl_u32 v37, v174, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v137, v34, v33
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v34, v32, v237 :: v_dual_lshlrev_b32 v33, 16, v38
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v37, v37, s[24:27], 0 offen
	v_add_lshl_u32 v38, v175, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v138, v34, v33 :: v_dual_lshlrev_b32 v33, 16, v39
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v236
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v38, v38, s[24:27], 0 offen
	v_add_lshl_u32 v39, v176, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v135, v34, v33
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v34, v32, v235 :: v_dual_lshlrev_b32 v33, 16, v40
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v39, v39, s[24:27], 0 offen
	v_add_lshl_u32 v40, v177, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v136, v34, v33
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v170, s4, 1
	v_add_lshl_u32 v34, v171, s4, 1
	s_clause 0x2
	buffer_load_u16 v40, v40, s[24:27], 0 offen
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	buffer_load_u16 v34, v34, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v133, v41, v33
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v34
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v233
	v_dual_mul_f32 v41, v32, v226 :: v_dual_fmac_f32 v134, v34, v33
	v_dual_mul_f32 v34, v32, v232 :: v_dual_lshlrev_b32 v33, 16, v35
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v35, v180, s4, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v131, v34, v33
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v34, v32, v231 :: v_dual_lshlrev_b32 v33, 16, v36
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v35, v35, s[24:27], 0 offen
	v_add_lshl_u32 v36, v181, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v132, v34, v33
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v34, v32, v230 :: v_dual_lshlrev_b32 v33, 16, v37
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v36, v36, s[24:27], 0 offen
	v_add_lshl_u32 v37, v182, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v129, v34, v33
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v34, v32, v229 :: v_dual_lshlrev_b32 v33, 16, v38
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v37, v37, s[24:27], 0 offen
	v_add_lshl_u32 v38, v183, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v130, v34, v33 :: v_dual_lshlrev_b32 v33, 16, v39
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v228
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v38, v38, s[24:27], 0 offen
	v_add_lshl_u32 v39, v184, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v127, v34, v33
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v34, v32, v227 :: v_dual_lshlrev_b32 v33, 16, v40
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v39, v39, s[24:27], 0 offen
	v_add_lshl_u32 v40, v185, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v128, v34, v33
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v178, s4, 1
	v_add_lshl_u32 v34, v179, s4, 1
	s_clause 0x2
	buffer_load_u16 v40, v40, s[24:27], 0 offen
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	buffer_load_u16 v34, v34, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v125, v41, v33
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v34
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v225
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v126, v34, v33 :: v_dual_lshlrev_b32 v33, 16, v35
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v224
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v35, v188, s4, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v124, v34, v33 :: v_dual_lshlrev_b32 v33, 16, v36
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v223
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v35, v35, s[24:27], 0 offen
	v_add_lshl_u32 v36, v189, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v123, v34, v33
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v34, v32, v222 :: v_dual_lshlrev_b32 v33, 16, v37
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v36, v36, s[24:27], 0 offen
	v_add_lshl_u32 v37, v190, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v121, v34, v33
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v34, v32, v221 :: v_dual_lshlrev_b32 v33, 16, v38
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v37, v37, s[24:27], 0 offen
	v_add_lshl_u32 v38, v191, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v122, v34, v33 :: v_dual_lshlrev_b32 v33, 16, v39
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v220
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v38, v38, s[24:27], 0 offen
	v_add_lshl_u32 v39, v192, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v119, v34, v33
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v34, v32, v219 :: v_dual_lshlrev_b32 v33, 16, v40
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v39, v39, s[24:27], 0 offen
	v_add_lshl_u32 v40, v193, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v120, v34, v33
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v186, s4, 1
	v_add_lshl_u32 v34, v187, s4, 1
	s_clause 0x2
	buffer_load_u16 v40, v40, s[24:27], 0 offen
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	buffer_load_u16 v34, v34, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v118, v31, v33 :: v_dual_lshlrev_b32 v31, 16, v34
	v_fmac_f32_e32 v117, v30, v31
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v30, 16, v35
	v_add_lshl_u32 v31, v201, s4, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v115, v29, v30
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v29, 16, v36
	v_add_lshl_u32 v30, v200, s4, 1
	buffer_load_u16 v31, v31, s[24:27], 0 offen
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v116, v28, v29
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v28, 16, v37
	v_add_lshl_u32 v29, v199, s4, 1
	buffer_load_u16 v30, v30, s[24:27], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v23, v32, v23
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v113, v27, v28
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v27, 16, v38
	v_add_lshl_u32 v28, v198, s4, 1
	buffer_load_u16 v29, v29, s[24:27], 0 offen
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v114, v26, v27
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v26, 16, v39
	v_add_lshl_u32 v27, v197, s4, 1
	buffer_load_u16 v28, v28, s[24:27], 0 offen
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v111, v25, v26
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v25, 16, v40
	v_add_lshl_u32 v26, v196, s4, 1
	buffer_load_u16 v27, v27, s[24:27], 0 offen
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v112, v24, v25
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v24, v194, s4, 1
	v_add_lshl_u32 v25, v195, s4, 1
	s_clause 0x2
	buffer_load_u16 v26, v26, s[24:27], 0 offen
	buffer_load_u16 v24, v24, s[24:27], 0 offen
	buffer_load_u16 v25, v25, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v109, v23, v24
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v25
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v110, v22, v23
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v22, 16, v26
	v_add_lshl_u32 v23, v209, s4, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v107, v21, v22
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v21, 16, v27
	v_add_lshl_u32 v22, v208, s4, 1
	buffer_load_u16 v23, v23, s[24:27], 0 offen
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v108, v20, v21
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v20, 16, v28
	v_add_lshl_u32 v21, v207, s4, 1
	buffer_load_u16 v22, v22, s[24:27], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v15, v32, v15
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v105, v19, v20
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v19, 16, v29
	v_add_lshl_u32 v20, v206, s4, 1
	buffer_load_u16 v21, v21, s[24:27], 0 offen
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v106, v18, v19
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v18, 16, v30
	v_add_lshl_u32 v19, v205, s4, 1
	buffer_load_u16 v20, v20, s[24:27], 0 offen
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v103, v17, v18
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v17, 16, v31
	v_add_lshl_u32 v18, v204, s4, 1
	buffer_load_u16 v19, v19, s[24:27], 0 offen
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v104, v16, v17
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v16, v202, s4, 1
	v_add_lshl_u32 v17, v203, s4, 1
	s_clause 0x2
	buffer_load_u16 v18, v18, s[24:27], 0 offen
	buffer_load_u16 v16, v16, s[24:27], 0 offen
	buffer_load_u16 v17, v17, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v101, v15, v16
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v17
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v102, v14, v15
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v14, 16, v18
	v_add_lshl_u32 v15, v217, s4, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v99, v13, v14
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v13, 16, v19
	v_add_lshl_u32 v14, v216, s4, 1
	buffer_load_u16 v15, v15, s[24:27], 0 offen
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v100, v12, v13
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v12, 16, v20
	v_add_lshl_u32 v13, v215, s4, 1
	buffer_load_u16 v14, v14, s[24:27], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v7, v32, v7
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v97, v11, v12
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v11, 16, v21
	v_add_lshl_u32 v12, v214, s4, 1
	buffer_load_u16 v13, v13, s[24:27], 0 offen
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v98, v10, v11
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v10, 16, v22
	v_add_lshl_u32 v11, v213, s4, 1
	buffer_load_u16 v12, v12, s[24:27], 0 offen
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v95, v9, v10
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v9, 16, v23
	v_add_lshl_u32 v10, v212, s4, 1
	buffer_load_u16 v11, v11, s[24:27], 0 offen
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v96, v8, v9
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v8, v210, s4, 1
	v_add_lshl_u32 v9, v211, s4, 1
	s_clause 0x2
	buffer_load_u16 v10, v10, s[24:27], 0 offen
	buffer_load_u16 v8, v8, s[24:27], 0 offen
	buffer_load_u16 v9, v9, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v93, v7, v8
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v9
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v94, v6, v7
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v6, 16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v91, v5, v6
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v5, 16, v11
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v92, v4, v5
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v4, 16, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v90, v3, v4 :: v_dual_lshlrev_b32 v3, 16, v13
	v_dual_fmac_f32 v89, v2, v3 :: v_dual_lshlrev_b32 v2, 16, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v88, v1, v2 :: v_dual_lshlrev_b32 v1, 16, v15
	v_fmac_f32_e32 v67, v0, v1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_2
.LBB0_8:                                ; %._crit_edge9
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 251
		.amdhsa_next_free_sgpr 42
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.num_vgpr, 251
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.numbered_sgpr, 42
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9180
; TotalNumSgprs: 44
; NumVgprs: 251
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 44
; NumVGPRsForWavesPerEU: 251
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     44
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     251
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
