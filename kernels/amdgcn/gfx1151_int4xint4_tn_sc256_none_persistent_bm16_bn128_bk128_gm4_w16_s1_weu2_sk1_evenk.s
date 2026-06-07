	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
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
	s_ashr_i32 s30, s4, 4
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s14, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s31, s14, s30
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s31
	s_cbranch_scc1 .LBB0_9
; %bb.1:                                ; %.lr.ph10
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s15, s[0:1], 0x38
	s_load_b256 s[4:11], s[0:1], 0x0
	s_load_b64 s[12:13], s[0:1], 0x20
	.loc	1 258 43 is_stmt 1              ; generate_amdgcn.py:258:43
	s_lshl_b32 s34, s3, 6
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v1, 7, v0
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s33, s14, 2
	v_dual_mov_b32 v7, 0x5410 :: v_dual_and_b32 v2, 16, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_bfe_u32 v3, v0, 4, 1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshlrev_b32_e32 v5, 1, v1
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshlrev_b32_e32 v1, 4, v1
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v15, 15, v0
	.loc	1 250 28                        ; generate_amdgcn.py:250:28
	v_lshrrev_b32_e32 v87, 3, v0
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v3, off offset:12
	scratch_store_b32 off, v5, off offset:16
	scratch_store_b32 off, v1, off offset:20
	scratch_store_b32 off, v15, off offset:8
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v1, 1, v2
	v_lshlrev_b32_e32 v3, 1, v0
	v_or_b32_e32 v4, 0x3f0, v0
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s15, 0xff
.Ltmp12:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_lshr_b32 s1, s15, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s3, s0, 31
.Ltmp14:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s15, s15, s1
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_lshr_b32 s3, s3, 24
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s35, s15, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s1, s0, s3
	s_mov_b32 s16, s4
	s_ashr_i32 s36, s1, 8
	s_cmpk_gt_i32 s0, 0xff
	v_cmp_eq_u32_e64 s0, 0, v2
	s_cselect_b32 s1, -1, 0
	s_abs_i32 s37, s33
	v_mov_b32_e32 v2, 0x7632
	s_cvt_f32_u32 s3, s37
	v_cndmask_b32_e64 v7, 0x1054, v7, s0
	s_sub_i32 s4, 0, s37
	v_lshlrev_b32_e32 v5, 4, v0
	v_rcp_iflag_f32_e32 v10, s3
	v_cndmask_b32_e64 v2, 0x3276, v2, s0
	v_lshl_or_b32 v7, v7, 8, v7
	v_or_b32_e32 v6, 0x7f0, v0
	v_or_b32_e32 v8, 0xbf0, v0
	v_or_b32_e32 v9, 0xff0, v0
	v_lshl_or_b32 v2, v2, 8, v2
	v_and_b32_e32 v7, 0x540054, v7
	v_or_b32_e32 v11, 0x13f0, v0
	v_or_b32_e32 v12, 0x17f0, v0
	v_readfirstlane_b32 s3, v10
	v_and_b32_e32 v2, 0x760076, v2
	v_or_b32_e32 v13, 0x1bf0, v0
	v_or_b32_e32 v14, 0x1ff0, v0
	v_and_b32_e32 v0, 0x1e0, v0
	s_mul_f32 s3, s3, 0x4f7ffffe
	v_mad_u64_u32 v[47:48], null, s29, v15, v[1:2]
	v_lshl_or_b32 v1, v7, 4, v7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	s_cvt_u32_f32 s3, s3
	v_lshl_or_b32 v2, v2, 4, v2
	v_dual_mov_b32 v205, 0 :: v_dual_add_nc_u32 v90, 0, v15
	v_and_b32_e32 v91, 0x5040504, v1
	v_cndmask_b32_e64 v1, 0, 1, s1
	s_mul_i32 s4, s4, s3
	v_and_b32_e32 v92, 0x7060706, v2
	s_mul_hi_u32 s4, s3, s4
	v_cmp_eq_u32_e64 s1, 0, v0
	s_add_i32 s39, s3, s4
	v_cmp_ne_u32_e64 s3, 1, v1
	v_add_nc_u32_e32 v93, 0, v3
	v_add_nc_u32_e32 v94, 0, v4
	v_add_nc_u32_e32 v95, 0, v5
	v_add_nc_u32_e32 v96, 0, v6
	v_add_nc_u32_e32 v97, 0, v8
	v_add_nc_u32_e32 v98, 0, v9
	v_add_nc_u32_e32 v99, 0, v11
	v_add_nc_u32_e32 v100, 0, v12
	v_add_nc_u32_e32 v101, 0, v13
	v_add_nc_u32_e32 v102, 0, v14
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_mov_b32 s20, s6
	s_and_b32 s17, s5, 0xffff
	s_and_b32 s21, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s25, s11, 0xffff
	s_mov_b32 s24, s10
	s_and_b32 s13, s13, 0xffff
	s_bfe_i32 s38, s14, 0x1001d
	s_mov_b32 s40, 0x76543210
	s_mov_b32 s14, s18
	s_mov_b32 s15, s19
	s_branch .LBB0_3
.Ltmp18:
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v0.h, 0
	v_mov_b16_e64 v0.l, v166.h
	v_mov_b16_e64 v1.l, v165.h
	v_mov_b16_e64 v3.l, v163.h
	v_cmp_o_f32_e32 vcc_lo, v166, v166
	v_mov_b16_e32 v1.h, v0.h
	v_and_b32_e32 v2, 1, v0
	v_mov_b16_e32 v3.h, v0.h
	v_mov_b16_e64 v0.l, v164.h
	.loc	1 277 22 is_stmt 0              ; generate_amdgcn.py:277:22
	s_mul_i32 s10, s6, s29
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v1, 1, v1
	v_add3_u32 v2, v166, v2, 0x7fff
	v_and_b32_e32 v3, 1, v3
	v_and_b32_e32 v4, 1, v0
	v_mov_b16_e64 v0.l, v162.h
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_add_i32 s10, s10, s5
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v5, v165, v1, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v2.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v165, v165
	v_add3_u32 v3, v163, v3, 0x7fff
	v_add3_u32 v2, v164, v4, 0x7fff
	v_cmp_o_f32_e64 s5, v163, v163
	v_mov_b16_e64 v4.l, v161.h
	v_mov_b16_e32 v4.h, v0.h
	v_and_b32_e32 v6, 1, v0
	v_cndmask_b16 v1.l, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v2.l, 0x7fff, v3.h, s5
	v_cmp_o_f32_e32 vcc_lo, v162, v162
	v_and_b32_e32 v3, 1, v4
	v_add3_u32 v4, v162, v6, 0x7fff
	v_mov_b16_e64 v0.l, v160.h
	v_cmp_o_f32_e64 s4, v164, v164
	v_mov_b16_e64 v5.l, v159.h
	v_mov_b16_e32 v5.h, v0.h
	v_add3_u32 v6, v161, v3, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v161, v161
	v_and_b32_e32 v4, 1, v0
	v_mov_b16_e64 v7.l, v157.h
	v_mov_b16_e32 v7.h, v0.h
	v_mov_b16_e64 v0.l, v158.h
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s4
	v_and_b32_e32 v5, 1, v5
	v_add3_u32 v4, v160, v4, 0x7fff
	v_cmp_o_f32_e64 s4, v160, v160
	v_cndmask_b16 v3.l, 0x7fff, v6.h, vcc_lo
	v_and_b32_e32 v6, 1, v7
	v_and_b32_e32 v7, 1, v0
	v_mov_b16_e64 v0.l, v156.h
	v_add3_u32 v5, v159, v5, 0x7fff
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s4
	v_cmp_o_f32_e32 vcc_lo, v159, v159
	v_add3_u32 v6, v157, v6, 0x7fff
	v_add3_u32 v7, v158, v7, 0x7fff
	v_cmp_o_f32_e64 s4, v158, v158
	v_cmp_o_f32_e64 s5, v157, v157
	v_mov_b16_e64 v8.l, v155.h
	v_mov_b16_e32 v8.h, v0.h
	v_and_b32_e32 v9, 1, v0
	v_cndmask_b16 v4.l, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v5.h, 0x7fff, v7.h, s4
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s5
	v_and_b32_e32 v6, 1, v8
	v_add3_u32 v7, v156, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v156, v156
	v_mov_b16_e64 v0.l, v154.h
	v_mov_b16_e64 v8.l, v153.h
	v_add3_u32 v9, v155, v6, 0x7fff
	v_mov_b16_e64 v10.l, v151.h
	v_cndmask_b16 v6.h, 0x7fff, v7.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v155, v155
	v_and_b32_e32 v7, 1, v0
	v_mov_b16_e32 v10.h, v0.h
	v_mov_b16_e64 v0.l, v152.h
	v_and_b32_e32 v8, 1, v8
	v_cmp_o_f32_e64 s4, v154, v154
	v_add3_u32 v7, v154, v7, 0x7fff
	v_cndmask_b16 v6.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v10
	v_and_b32_e32 v10, 1, v0
	v_mov_b16_e64 v0.l, v150.h
	v_add3_u32 v8, v153, v8, 0x7fff
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s4
	v_cmp_o_f32_e32 vcc_lo, v153, v153
	v_add3_u32 v9, v151, v9, 0x7fff
	v_add3_u32 v10, v152, v10, 0x7fff
	v_cmp_o_f32_e64 s4, v152, v152
	v_cmp_o_f32_e64 s5, v151, v151
	v_mov_b16_e64 v11.l, v149.h
	v_mov_b16_e32 v11.h, v0.h
	v_and_b32_e32 v12, 1, v0
	v_cndmask_b16 v7.l, 0x7fff, v8.h, vcc_lo
	v_cndmask_b16 v8.h, 0x7fff, v10.h, s4
	v_cndmask_b16 v8.l, 0x7fff, v9.h, s5
	v_and_b32_e32 v9, 1, v11
	v_add3_u32 v10, v150, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v150, v150
	v_mov_b16_e64 v0.l, v148.h
	v_mov_b16_e64 v11.l, v147.h
	v_add3_u32 v9, v149, v9, 0x7fff
	v_mov_b16_e64 v13.l, v145.h
	v_cndmask_b16 v10.h, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v149, v149
	v_and_b32_e32 v12, 1, v0
	v_mov_b16_e32 v13.h, v0.h
	v_mov_b16_e64 v0.l, v146.h
	v_and_b32_e32 v11, 1, v11
	v_cmp_o_f32_e64 s4, v148, v148
	v_add3_u32 v12, v148, v12, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v13
	v_and_b32_e32 v13, 1, v0
	v_mov_b16_e64 v0.l, v144.h
	v_add3_u32 v11, v147, v11, 0x7fff
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s4
	v_cmp_o_f32_e32 vcc_lo, v147, v147
	v_add3_u32 v9, v145, v9, 0x7fff
	v_add3_u32 v13, v146, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v146, v146
	v_cmp_o_f32_e64 s5, v145, v145
	v_mov_b16_e64 v14.l, v143.h
	v_mov_b16_e32 v14.h, v0.h
	v_and_b32_e32 v15, 1, v0
	v_cndmask_b16 v12.l, 0x7fff, v11.h, vcc_lo
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s4
	v_cndmask_b16 v11.l, 0x7fff, v9.h, s5
	v_and_b32_e32 v9, 1, v14
	v_add3_u32 v13, v144, v15, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v144, v144
	v_mov_b16_e64 v0.l, v142.h
	v_mov_b16_e64 v14.l, v141.h
	v_add3_u32 v9, v143, v9, 0x7fff
	v_mov_b16_e64 v16.l, v140.h
	v_cndmask_b16 v13.h, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v143, v143
	v_and_b32_e32 v15, 1, v0
	v_mov_b16_e32 v16.h, v0.h
	v_mov_b16_e64 v0.l, v139.h
	v_and_b32_e32 v14, 1, v14
	v_cmp_o_f32_e64 s4, v142, v142
	v_add3_u32 v15, v142, v15, 0x7fff
	v_cndmask_b16 v13.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v16
	v_and_b32_e32 v16, 1, v0
	v_mov_b16_e64 v0.l, v138.h
	v_add3_u32 v14, v141, v14, 0x7fff
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s4
	v_cmp_o_f32_e32 vcc_lo, v141, v141
	v_add3_u32 v9, v140, v9, 0x7fff
	v_add3_u32 v16, v139, v16, 0x7fff
	v_cmp_o_f32_e64 s4, v139, v139
	v_cmp_o_f32_e64 s5, v140, v140
	v_mov_b16_e64 v17.l, v137.h
	v_mov_b16_e32 v17.h, v0.h
	v_and_b32_e32 v18, 1, v0
	v_cndmask_b16 v15.l, 0x7fff, v14.h, vcc_lo
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s4
	v_cndmask_b16 v14.l, 0x7fff, v9.h, s5
	v_and_b32_e32 v9, 1, v17
	v_add3_u32 v16, v138, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v138, v138
	v_mov_b16_e64 v0.l, v136.h
	v_mov_b16_e64 v17.l, v135.h
	v_add3_u32 v9, v137, v9, 0x7fff
	v_mov_b16_e64 v19.l, v134.h
	v_cndmask_b16 v16.h, 0x7fff, v16.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v137, v137
	v_and_b32_e32 v18, 1, v0
	v_mov_b16_e32 v19.h, v0.h
	v_mov_b16_e64 v0.l, v133.h
	v_and_b32_e32 v17, 1, v17
	v_cmp_o_f32_e64 s4, v136, v136
	v_add3_u32 v18, v136, v18, 0x7fff
	v_cndmask_b16 v16.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v19
	v_and_b32_e32 v19, 1, v0
	v_mov_b16_e64 v0.l, v132.h
	v_add3_u32 v17, v135, v17, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s4
	v_cmp_o_f32_e32 vcc_lo, v135, v135
	v_add3_u32 v9, v134, v9, 0x7fff
	v_add3_u32 v19, v133, v19, 0x7fff
	v_cmp_o_f32_e64 s4, v133, v133
	v_cmp_o_f32_e64 s5, v134, v134
	v_mov_b16_e64 v20.l, v131.h
	v_mov_b16_e32 v20.h, v0.h
	v_and_b32_e32 v21, 1, v0
	v_cndmask_b16 v18.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v17.h, 0x7fff, v19.h, s4
	v_cndmask_b16 v17.l, 0x7fff, v9.h, s5
	v_and_b32_e32 v9, 1, v20
	v_add3_u32 v19, v132, v21, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v132, v132
	v_mov_b16_e64 v0.l, v130.h
	v_mov_b16_e64 v20.l, v129.h
	v_add3_u32 v9, v131, v9, 0x7fff
	v_mov_b16_e32 v22.l, v127.h
	v_cndmask_b16 v19.h, 0x7fff, v19.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v131, v131
	v_and_b32_e32 v21, 1, v0
	v_mov_b16_e32 v22.h, v0.h
	v_mov_b16_e64 v0.l, v128.h
	v_and_b32_e32 v20, 1, v20
	v_cmp_o_f32_e64 s4, v130, v130
	v_add3_u32 v21, v130, v21, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v22
	v_and_b32_e32 v22, 1, v0
	v_mov_b16_e32 v0.l, v126.h
	v_add3_u32 v20, v129, v20, 0x7fff
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s4
	v_cmp_o_f32_e32 vcc_lo, v129, v129
	v_add3_u32 v9, v127, v9, 0x7fff
	v_add3_u32 v22, v128, v22, 0x7fff
	v_cmp_o_f32_e64 s4, v128, v128
	v_cmp_o_f32_e64 s5, v127, v127
	v_mov_b16_e32 v23.l, v125.h
	v_mov_b16_e32 v23.h, v0.h
	v_and_b32_e32 v24, 1, v0
	v_cndmask_b16 v21.l, 0x7fff, v20.h, vcc_lo
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s4
	v_cndmask_b16 v20.l, 0x7fff, v9.h, s5
	v_and_b32_e32 v9, 1, v23
	v_add3_u32 v22, v126, v24, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v126, v126
	v_mov_b16_e32 v0.l, v124.h
	v_mov_b16_e32 v23.l, v123.h
	v_add3_u32 v9, v125, v9, 0x7fff
	v_mov_b16_e32 v25.l, v121.h
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v125, v125
	v_and_b32_e32 v24, 1, v0
	v_mov_b16_e32 v25.h, v0.h
	v_mov_b16_e32 v0.l, v122.h
	v_and_b32_e32 v23, 1, v23
	v_cmp_o_f32_e64 s4, v124, v124
	v_add3_u32 v24, v124, v24, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v25
	v_and_b32_e32 v25, 1, v0
	v_mov_b16_e32 v0.l, v120.h
	v_add3_u32 v23, v123, v23, 0x7fff
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s4
	v_cmp_o_f32_e32 vcc_lo, v123, v123
	v_add3_u32 v9, v121, v9, 0x7fff
	v_add3_u32 v25, v122, v25, 0x7fff
	v_cmp_o_f32_e64 s4, v122, v122
	v_cmp_o_f32_e64 s5, v121, v121
	v_mov_b16_e32 v26.l, v119.h
	v_mov_b16_e32 v26.h, v0.h
	v_and_b32_e32 v27, 1, v0
	v_cndmask_b16 v24.l, 0x7fff, v23.h, vcc_lo
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s4
	v_cndmask_b16 v23.l, 0x7fff, v9.h, s5
	v_and_b32_e32 v9, 1, v26
	v_add3_u32 v25, v120, v27, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v120, v120
	v_mov_b16_e32 v0.l, v118.h
	v_mov_b16_e32 v26.l, v117.h
	v_add3_u32 v9, v119, v9, 0x7fff
	v_mov_b16_e32 v28.l, v115.h
	v_cndmask_b16 v25.h, 0x7fff, v25.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v119, v119
	v_and_b32_e32 v27, 1, v0
	v_mov_b16_e32 v28.h, v0.h
	v_mov_b16_e32 v0.l, v116.h
	v_and_b32_e32 v26, 1, v26
	v_cmp_o_f32_e64 s4, v118, v118
	v_add3_u32 v27, v118, v27, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v28
	v_and_b32_e32 v28, 1, v0
	v_mov_b16_e32 v0.l, v114.h
	v_add3_u32 v26, v117, v26, 0x7fff
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s4
	v_cmp_o_f32_e32 vcc_lo, v117, v117
	v_add3_u32 v9, v115, v9, 0x7fff
	v_add3_u32 v28, v116, v28, 0x7fff
	v_cmp_o_f32_e64 s4, v116, v116
	v_cmp_o_f32_e64 s5, v115, v115
	v_mov_b16_e32 v29.l, v113.h
	v_mov_b16_e32 v29.h, v0.h
	v_and_b32_e32 v30, 1, v0
	v_cndmask_b16 v27.l, 0x7fff, v26.h, vcc_lo
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s4
	v_cndmask_b16 v26.l, 0x7fff, v9.h, s5
	v_and_b32_e32 v9, 1, v29
	v_add3_u32 v28, v114, v30, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v114, v114
	v_mov_b16_e32 v0.l, v112.h
	v_mov_b16_e32 v29.l, v111.h
	v_add3_u32 v9, v113, v9, 0x7fff
	v_mov_b16_e32 v31.l, v109.h
	v_cndmask_b16 v28.h, 0x7fff, v28.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v113, v113
	v_and_b32_e32 v30, 1, v0
	v_mov_b16_e32 v31.h, v0.h
	v_mov_b16_e32 v0.l, v110.h
	v_and_b32_e32 v29, 1, v29
	v_cmp_o_f32_e64 s4, v112, v112
	v_add3_u32 v30, v112, v30, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v31
	v_and_b32_e32 v31, 1, v0
	v_add3_u32 v29, v111, v29, 0x7fff
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s4
	v_cmp_o_f32_e32 vcc_lo, v111, v111
	v_cmp_o_f32_e64 s4, v110, v110
	v_add3_u32 v31, v110, v31, 0x7fff
	v_mov_b16_e32 v0.l, v108.h
	v_add3_u32 v9, v109, v9, 0x7fff
	v_cmp_o_f32_e64 s5, v109, v109
	v_mov_b16_e32 v32.l, v107.h
	v_mov_b16_e32 v32.h, v0.h
	v_cndmask_b16 v30.l, 0x7fff, v29.h, vcc_lo
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s4
	v_and_b32_e32 v31, 1, v0
	v_mov_b16_e32 v0.l, v105.h
	v_cndmask_b16 v29.l, 0x7fff, v9.h, s5
	v_and_b32_e32 v9, 1, v32
	v_mov_b16_e32 v32.l, v106.h
	v_mov_b16_e32 v34.l, v104.h
	v_and_b32_e32 v33, 1, v0
	v_mov_b16_e32 v34.h, v0.h
	v_mov_b16_e32 v0.l, v103.h
	v_add3_u32 v31, v108, v31, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v108, v108
	v_and_b32_e32 v32, 1, v32
	v_and_b32_e32 v34, 1, v34
	v_and_b32_e32 v0, 1, v0
	v_add3_u32 v9, v107, v9, 0x7fff
	v_cndmask_b16 v31.h, 0x7fff, v31.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v107, v107
	v_add3_u32 v32, v106, v32, 0x7fff
	v_add3_u32 v33, v105, v33, 0x7fff
	v_cmp_o_f32_e64 s4, v105, v105
	v_cmp_o_f32_e64 s5, v106, v106
	v_add3_u32 v34, v104, v34, 0x7fff
	v_add3_u32 v0, v103, v0, 0x7fff
	v_cmp_o_f32_e64 s6, v103, v103
	v_cmp_o_f32_e64 s7, v104, v104
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
	v_permlanex16_b32 v26, v4, s40, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v8, s40, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v1, v1, s40, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v2, s40, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v5, s40, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v6, s40, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v10, s40, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v14, s40, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v16, s40, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v17, s40, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v9, s40, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v0, s40, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v26, v33, v91
	v_perm_b32 v5, v26, v33, v92
	v_perm_b32 v10, v31, v11, v91
	v_perm_b32 v11, v31, v11, v92
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v31, 16, v47
	v_add_lshl_u32 v33, s10, v47, 1
	v_permlanex16_b32 v42, v19, s40, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v20, s40, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v32, v91
	v_perm_b32 v1, v1, v32, v92
	v_perm_b32 v2, v24, v3, v91
	v_perm_b32 v3, v24, v3, v92
	v_perm_b32 v6, v28, v7, v91
	v_perm_b32 v7, v28, v7, v92
	v_perm_b32 v8, v29, v34, v91
	v_perm_b32 v9, v29, v34, v92
	v_perm_b32 v16, v39, v18, v91
	v_perm_b32 v17, v39, v18, v92
	v_perm_b32 v18, v40, v21, v91
	v_perm_b32 v19, v40, v21, v92
	v_perm_b32 v20, v41, v35, v91
	v_perm_b32 v21, v41, v35, v92
	v_add_nc_u32_e32 v32, 32, v47
	v_perm_b32 v28, v45, v30, v91
	v_perm_b32 v29, v45, v30, v92
	v_add_lshl_u32 v34, v31, s10, 1
	v_perm_b32 v30, v46, v36, v91
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	v_add_nc_u32_e32 v35, 48, v47
	v_perm_b32 v31, v46, v36, v92
	v_add_nc_u32_e32 v36, 64, v47
	v_permlanex16_b32 v38, v12, s40, 0xfedcba98 op_sel:[1,0]
	v_add_lshl_u32 v32, v32, s10, 1
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	v_add_lshl_u32 v35, v35, s10, 1
	buffer_store_b128 v[0:3], v33, s[12:15], 0 offen
	v_add_lshl_u32 v0, v36, s10, 1
	v_add_nc_u32_e32 v1, 0x50, v47
	v_add_nc_u32_e32 v2, 0x60, v47
	v_add_nc_u32_e32 v3, 0x70, v47
	v_permlanex16_b32 v44, v22, s40, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v12, v37, v13, v91
	v_perm_b32 v13, v37, v13, v92
	v_perm_b32 v14, v38, v15, v91
	v_perm_b32 v15, v38, v15, v92
	v_cndmask_b32_e64 v32, 0x80000000, v32, s1
	buffer_store_b128 v[4:7], v34, s[12:15], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v35, s1
	v_add_lshl_u32 v1, v1, s10, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	v_add_lshl_u32 v2, v2, s10, 1
	v_add_lshl_u32 v3, v3, s10, 1
	v_perm_b32 v22, v42, v23, v91
	v_perm_b32 v23, v42, v23, v92
	v_perm_b32 v24, v43, v25, v91
	v_perm_b32 v25, v43, v25, v92
	v_perm_b32 v26, v44, v27, v91
	v_perm_b32 v27, v44, v27, v92
	s_clause 0x1
	buffer_store_b128 v[8:11], v32, s[12:15], 0 offen
	buffer_store_b128 v[12:15], v4, s[12:15], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	buffer_store_b128 v[16:19], v0, s[12:15], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v2, s1
	v_cndmask_b32_e64 v2, 0x80000000, v3, s1
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	buffer_store_b128 v[20:23], v1, s[12:15], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_lt_i32 s2, s31
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	s_clause 0x1
	buffer_store_b128 v[24:27], v0, s[12:15], 0 offen
	buffer_store_b128 v[28:31], v2, s[12:15], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cbranch_scc0 .LBB0_9
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
                                        ;       Child Loop BB0_6 Depth 3
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s4, s2
	s_ashr_i32 s5, s2, 31
	s_mul_hi_u32 s6, s4, s39
	s_xor_b32 s5, s5, s38
	s_mul_i32 s7, s6, s37
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	s_sub_i32 s4, s4, s7
	s_add_i32 s7, s6, 1
	s_sub_i32 s10, s4, s37
	s_cmp_ge_u32 s4, s37
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v107, 0
	s_cselect_b32 s6, s7, s6
	s_cselect_b32 s4, s10, s4
	s_add_i32 s7, s6, 1
	s_cmp_ge_u32 s4, s37
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	s_cselect_b32 s4, s7, s6
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	s_xor_b32 s4, s4, s5
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	s_sub_i32 s4, s4, s5
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v115, 0
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s5, s4, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s4, s4, s33
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s6, s30, s5
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s4, s2, s4
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s6, s6, 4
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s22, s4
	s_abs_i32 s7, s6
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	s_cvt_f32_u32 s10, s7
	s_sub_i32 s11, 0, s7
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v117, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v0, s10
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v127, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s10, v0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v129, 0
	s_mul_f32 s10, s10, 0x4f7ffffe
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v135, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s10, s10
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v137, 0
	s_mul_i32 s11, s11, s10
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v141, 0
	s_mul_hi_u32 s11, s10, s11
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v143, 0
	s_add_i32 s10, s10, s11
	s_xor_b32 s11, s4, s6
	s_mul_hi_u32 s10, s22, s10
	s_ashr_i32 s11, s11, 31
	s_mul_i32 s23, s10, s7
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v147, 0
	s_sub_i32 s22, s22, s23
	s_add_i32 s23, s10, 1
	s_sub_i32 s26, s22, s7
	s_cmp_ge_u32 s22, s7
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v145, 0
	s_cselect_b32 s10, s23, s10
	s_cselect_b32 s22, s26, s22
	s_add_i32 s23, s10, 1
	s_cmp_ge_u32 s22, s7
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v149, 0
	s_cselect_b32 s7, s23, s10
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v151, 0
	s_xor_b32 s7, s7, s11
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v155, 0
	s_sub_i32 s7, s7, s11
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v153, 0
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s6, s7, s6
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v157, 0
	s_sub_i32 s4, s4, s6
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v165, 0
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s4, s4, s5
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_and_b32 vcc_lo, exec_lo, s3
	.loc	1 221 18                        ; generate_amdgcn.py:221:18
	s_lshl_b32 s6, s4, 4
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s5, s7, 7
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:8
	scratch_load_b32 v1, off, off offset:12
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v103, 0
	s_mov_b32 s7, 0
	scratch_store_b64 off, v[47:48], off    ; 8-byte Folded Spill
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v0, s6, v0
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v167, s5, v1
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v168, v0, s36
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	v_or_b32_e32 v169, 56, v167
	v_or_b32_e32 v170, 58, v167
	v_or_b32_e32 v171, 60, v167
	v_or_b32_e32 v172, 62, v167
	v_or_b32_e32 v173, 64, v167
	v_or_b32_e32 v174, 0x42, v167
	v_or_b32_e32 v175, 0x44, v167
	v_or_b32_e32 v176, 0x46, v167
	v_or_b32_e32 v177, 0x48, v167
	v_or_b32_e32 v178, 0x4a, v167
	v_or_b32_e32 v179, 0x4c, v167
	v_or_b32_e32 v180, 0x4e, v167
	v_or_b32_e32 v181, 0x50, v167
	v_or_b32_e32 v182, 0x52, v167
	v_or_b32_e32 v183, 0x54, v167
	v_or_b32_e32 v184, 0x56, v167
	v_or_b32_e32 v185, 0x58, v167
	v_or_b32_e32 v186, 0x5a, v167
	v_or_b32_e32 v187, 0x5c, v167
	v_or_b32_e32 v188, 0x5e, v167
	v_or_b32_e32 v189, 0x60, v167
	v_or_b32_e32 v190, 0x62, v167
	v_or_b32_e32 v191, 0x64, v167
	v_or_b32_e32 v192, 0x66, v167
	v_or_b32_e32 v193, 0x68, v167
	v_or_b32_e32 v194, 0x6a, v167
	v_or_b32_e32 v195, 0x6c, v167
	v_or_b32_e32 v196, 0x6e, v167
	v_or_b32_e32 v197, 0x70, v167
	v_or_b32_e32 v198, 0x72, v167
	v_or_b32_e32 v199, 0x74, v167
	v_or_b32_e32 v200, 0x76, v167
	v_or_b32_e32 v201, 0x78, v167
	v_or_b32_e32 v202, 0x7a, v167
	v_or_b32_e32 v203, 0x7c, v167
	v_or_b32_e32 v204, 0x7e, v167
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s6, v0
	scratch_load_b32 v0, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v66, s5, v0
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_6 Depth 3
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, v205
	v_mov_b32_e32 v2, v205
	v_dual_mov_b32 v3, v205 :: v_dual_mov_b32 v8, 0
	v_mov_b32_e32 v4, v205
	v_dual_mov_b32 v5, v205 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v6, v205
	v_dual_mov_b32 v7, v205 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v9, v205 :: v_dual_mov_b32 v32, 0
	v_mov_b32_e32 v10, v205
	v_dual_mov_b32 v11, v205 :: v_dual_mov_b32 v40, 0
	v_mov_b32_e32 v12, v205
	v_dual_mov_b32 v13, v205 :: v_dual_mov_b32 v48, 0
	v_mov_b32_e32 v14, v205
	v_dual_mov_b32 v15, v205 :: v_dual_mov_b32 v56, 0
	v_mov_b32_e32 v17, v205
	v_mov_b32_e32 v18, v205
	v_mov_b32_e32 v19, v205
	v_mov_b32_e32 v20, v205
	v_mov_b32_e32 v21, v205
	v_mov_b32_e32 v22, v205
	v_mov_b32_e32 v23, v205
	v_mov_b32_e32 v25, v205
	v_mov_b32_e32 v26, v205
	v_mov_b32_e32 v27, v205
	v_mov_b32_e32 v28, v205
	v_mov_b32_e32 v29, v205
	v_mov_b32_e32 v30, v205
	v_mov_b32_e32 v31, v205
	v_mov_b32_e32 v33, v205
	v_mov_b32_e32 v34, v205
	v_mov_b32_e32 v35, v205
	v_mov_b32_e32 v36, v205
	v_mov_b32_e32 v37, v205
	v_mov_b32_e32 v38, v205
	v_mov_b32_e32 v39, v205
	v_mov_b32_e32 v41, v205
	v_mov_b32_e32 v42, v205
	v_mov_b32_e32 v43, v205
	v_mov_b32_e32 v44, v205
	v_mov_b32_e32 v45, v205
	v_mov_b32_e32 v46, v205
	v_mov_b32_e32 v47, v205
	v_mov_b32_e32 v49, v205
	v_mov_b32_e32 v50, v205
	v_mov_b32_e32 v51, v205
	v_mov_b32_e32 v52, v205
	v_mov_b32_e32 v53, v205
	v_mov_b32_e32 v54, v205
	v_mov_b32_e32 v55, v205
	v_mov_b32_e32 v57, v205
	v_mov_b32_e32 v58, v205
	v_mov_b32_e32 v59, v205
	v_mov_b32_e32 v60, v205
	v_mov_b32_e32 v61, v205
	v_mov_b32_e32 v62, v205
	v_mov_b32_e32 v63, v205
	.loc	1 256 28 is_stmt 1              ; generate_amdgcn.py:256:28
	s_lshl_b32 s10, s7, 7
	s_mov_b32 s11, -1
	s_mov_b32 s4, 0
.LBB0_6:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_5 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 258 26 is_stmt 1              ; generate_amdgcn.py:258:26
	s_or_b32 s4, s4, s10
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_mov_b32 s22, s18
	.loc	1 258 26                        ; generate_amdgcn.py:258:26
	s_add_i32 s4, s4, s34
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_mov_b32 s23, s19
	.loc	1 258 26                        ; generate_amdgcn.py:258:26
	v_or_b32_e32 v69, s4, v87
	.loc	1 259 56                        ; generate_amdgcn.py:259:56
	v_subrev_nc_u32_e32 v67, s10, v69
	.loc	1 259 31 is_stmt 0              ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e32 vcc_lo, s35, v69
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 259 55                        ; generate_amdgcn.py:259:55
	v_cmp_gt_i32_e64 s4, 0x80, v67
	.loc	1 263 38 is_stmt 1              ; generate_amdgcn.py:263:38
	v_mad_u64_u32 v[67:68], null, v69, s28, v[65:66]
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s4
	s_mov_b32 s4, 64
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	buffer_load_u16 v71, v67, s[16:19], 0 offen
	.loc	1 270 38                        ; generate_amdgcn.py:270:38
	v_mad_u64_u32 v[67:68], null, v69, s29, v[66:67]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 270 30 is_stmt 0              ; generate_amdgcn.py:270:30
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 257 17 is_stmt 1              ; generate_amdgcn.py:257:17
	s_and_b32 vcc_lo, exec_lo, s11
	s_mov_b32 s11, 0
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	buffer_load_b128 v[67:70], v67, s[20:23], 0 offen
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b16 v93, v71
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v71, v90
	ds_load_u8 v72, v90 offset:16
	ds_load_u8 v73, v90 offset:32
	ds_load_u8 v74, v90 offset:48
	ds_load_u8 v75, v90 offset:112
	ds_load_u8 v76, v90 offset:96
	ds_load_u8 v77, v90 offset:80
	ds_load_u8 v78, v90 offset:64
	ds_load_u8 v79, v90 offset:176
	ds_load_u8 v207, v90 offset:160
	ds_load_u8 v208, v90 offset:144
	ds_load_u8 v209, v90 offset:128
	ds_load_u8 v80, v90 offset:240
	ds_load_u8 v210, v90 offset:224
	ds_load_u8 v211, v90 offset:208
	ds_load_u8 v212, v90 offset:192
	ds_load_u8 v213, v90 offset:304
	ds_load_u8 v214, v90 offset:288
	ds_load_u8 v215, v90 offset:272
	ds_load_u8 v216, v90 offset:256
	ds_load_u8 v217, v90 offset:368
	ds_load_u8 v218, v90 offset:352
	ds_load_u8 v219, v90 offset:336
	ds_load_u8 v220, v90 offset:320
	ds_load_u8 v221, v90 offset:432
	ds_load_u8 v222, v90 offset:416
	ds_load_u8 v223, v90 offset:400
	ds_load_u8 v224, v90 offset:384
	ds_load_u8 v225, v90 offset:496
	ds_load_u8 v226, v90 offset:480
	ds_load_u8 v227, v90 offset:464
	ds_load_u8 v228, v90 offset:448
	ds_load_u8 v229, v90 offset:560
	ds_load_u8 v230, v90 offset:544
	ds_load_u8 v231, v90 offset:528
	ds_load_u8 v232, v90 offset:512
	ds_load_u8 v233, v90 offset:624
	ds_load_u8 v234, v90 offset:608
	ds_load_u8 v235, v90 offset:592
	ds_load_u8 v236, v90 offset:576
	ds_load_u8 v237, v90 offset:688
	ds_load_u8 v238, v90 offset:672
	ds_load_u8 v239, v90 offset:656
	ds_load_u8 v240, v90 offset:640
	ds_load_u8 v241, v90 offset:752
	ds_load_u8 v242, v90 offset:736
	ds_load_u8 v243, v90 offset:720
	ds_load_u8 v244, v90 offset:704
	ds_load_u8 v245, v90 offset:816
	ds_load_u8 v246, v90 offset:800
	ds_load_u8 v247, v90 offset:784
	ds_load_u8 v248, v90 offset:768
	ds_load_u8 v249, v90 offset:880
	ds_load_u8 v250, v90 offset:864
	ds_load_u8 v251, v90 offset:848
	ds_load_u8 v252, v90 offset:832
	ds_load_u8 v253, v94
	ds_load_u8 v254, v90 offset:992
	ds_load_u8 v255, v90 offset:976
	ds_load_u8 v86, v90 offset:960
	ds_load_u8 v88, v90 offset:944
	ds_load_u8 v89, v90 offset:928
	ds_load_u8 v85, v90 offset:912
	ds_load_u8 v64, v90 offset:896
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v95, v[67:70]
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_perm_b32 v67, v78, v77, 0xc0c0004
	v_perm_b32 v68, v76, v75, 0xc0c0004
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_lshl_or_b32 v82, v68, 16, v67
	v_perm_b32 v67, v71, v72, 0xc0c0004
	v_perm_b32 v68, v73, v74, 0xc0c0004
	v_perm_b32 v64, v64, v85, 0xc0c0004
	v_lshl_or_b32 v81, v68, 16, v67
	ds_load_u8 v67, v90 offset:640
	ds_load_u8 v68, v90 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v90 offset:896
	ds_load_u8 v69, v90 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v68, 16, v67
	ds_load_u8 v67, v90 offset:128
	ds_load_u8 v69, v90
	ds_load_u8 v206, v90 offset:16
	ds_load_u8 v84, v90 offset:32
	ds_load_u8 v83, v90 offset:48
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v67, v69, v67, 0xc0c0004
	ds_load_u8 v69, v90 offset:384
	ds_load_u8 v70, v90 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v67, v69, 16, v67
	v_wmma_i32_16x16x16_iu4 v[0:7], v[67:68], v[81:82], v[0:7] neg_lo:[1,1,0]
	v_perm_b32 v67, v212, v211, 0xc0c0004
	v_perm_b32 v68, v210, v80, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v80, v68, 16, v67
	v_perm_b32 v67, v209, v208, 0xc0c0004
	v_perm_b32 v68, v207, v79, 0xc0c0004
	v_lshl_or_b32 v79, v68, 16, v67
	ds_load_u8 v67, v90 offset:1664
	ds_load_u8 v68, v90 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v90 offset:1920
	ds_load_u8 v69, v90 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v68, 16, v67
	ds_load_u8 v67, v90 offset:1152
	ds_load_u8 v69, v90 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v69, v67, 0xc0c0004
	ds_load_u8 v69, v90 offset:1408
	ds_load_u8 v70, v90 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v67, v69, 16, v67
	v_wmma_i32_16x16x16_iu4 v[0:7], v[67:68], v[79:80], v[0:7] neg_lo:[1,1,0]
	v_perm_b32 v67, v220, v219, 0xc0c0004
	v_perm_b32 v68, v218, v217, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v78, v68, 16, v67
	v_perm_b32 v67, v216, v215, 0xc0c0004
	v_perm_b32 v68, v214, v213, 0xc0c0004
	v_lshl_or_b32 v77, v68, 16, v67
	ds_load_u8 v67, v90 offset:2688
	ds_load_u8 v68, v90 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v90 offset:2944
	ds_load_u8 v69, v90 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v68, 16, v67
	ds_load_u8 v67, v90 offset:2176
	ds_load_u8 v69, v90 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v69, v67, 0xc0c0004
	ds_load_u8 v69, v90 offset:2432
	ds_load_u8 v70, v90 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v67, v69, 16, v67
	v_wmma_i32_16x16x16_iu4 v[0:7], v[67:68], v[77:78], v[0:7] neg_lo:[1,1,0]
	v_perm_b32 v67, v228, v227, 0xc0c0004
	v_perm_b32 v68, v226, v225, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v76, v68, 16, v67
	v_perm_b32 v67, v224, v223, 0xc0c0004
	v_perm_b32 v68, v222, v221, 0xc0c0004
	v_lshl_or_b32 v75, v68, 16, v67
	ds_load_u8 v67, v90 offset:3712
	ds_load_u8 v68, v90 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v90 offset:3968
	ds_load_u8 v69, v90 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v68, 16, v67
	ds_load_u8 v67, v90 offset:3200
	ds_load_u8 v69, v90 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v69, v67, 0xc0c0004
	ds_load_u8 v69, v90 offset:3456
	ds_load_u8 v70, v90 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v67, v69, 16, v67
	v_wmma_i32_16x16x16_iu4 v[0:7], v[67:68], v[75:76], v[0:7] neg_lo:[1,1,0]
	v_perm_b32 v67, v236, v235, 0xc0c0004
	v_perm_b32 v68, v234, v233, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v74, v68, 16, v67
	v_perm_b32 v67, v232, v231, 0xc0c0004
	v_perm_b32 v68, v230, v229, 0xc0c0004
	v_lshl_or_b32 v73, v68, 16, v67
	ds_load_u8 v67, v90 offset:4736
	ds_load_u8 v68, v90 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v90 offset:4992
	ds_load_u8 v69, v90 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v68, 16, v67
	ds_load_u8 v67, v90 offset:4224
	ds_load_u8 v69, v90 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v69, v67, 0xc0c0004
	ds_load_u8 v69, v90 offset:4480
	ds_load_u8 v70, v90 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v67, v69, 16, v67
	v_wmma_i32_16x16x16_iu4 v[0:7], v[67:68], v[73:74], v[0:7] neg_lo:[1,1,0]
	v_perm_b32 v67, v244, v243, 0xc0c0004
	v_perm_b32 v68, v242, v241, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v72, v68, 16, v67
	v_perm_b32 v67, v240, v239, 0xc0c0004
	v_perm_b32 v68, v238, v237, 0xc0c0004
	v_lshl_or_b32 v71, v68, 16, v67
	ds_load_u8 v67, v90 offset:5760
	ds_load_u8 v68, v90 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v90 offset:6016
	ds_load_u8 v69, v90 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v68, 16, v67
	ds_load_u8 v67, v90 offset:5248
	ds_load_u8 v69, v90 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v69, v67, 0xc0c0004
	ds_load_u8 v69, v90 offset:5504
	ds_load_u8 v70, v90 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v67, v69, 16, v67
	v_wmma_i32_16x16x16_iu4 v[0:7], v[67:68], v[71:72], v[0:7] neg_lo:[1,1,0]
	v_perm_b32 v67, v252, v251, 0xc0c0004
	v_perm_b32 v68, v250, v249, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v70, v68, 16, v67
	v_perm_b32 v67, v248, v247, 0xc0c0004
	v_perm_b32 v68, v246, v245, 0xc0c0004
	v_lshl_or_b32 v69, v68, 16, v67
	ds_load_u8 v67, v90 offset:6784
	ds_load_u8 v68, v90 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v90 offset:7040
	ds_load_u8 v207, v90 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v207, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v68, 16, v67
	ds_load_u8 v67, v90 offset:6272
	ds_load_u8 v207, v90 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v207, v67, 0xc0c0004
	ds_load_u8 v207, v90 offset:6528
	ds_load_u8 v208, v90 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v207, v208, v207, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v67, v207, 16, v67
	v_wmma_i32_16x16x16_iu4 v[0:7], v[67:68], v[69:70], v[0:7] neg_lo:[1,1,0]
	v_perm_b32 v67, v89, v88, 0xc0c0004
	v_perm_b32 v68, v254, v253, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v67, v67, 16, v64
	v_perm_b32 v64, v86, v255, 0xc0c0004
	v_lshl_or_b32 v68, v68, 16, v64
	ds_load_u8 v64, v90 offset:7808
	ds_load_u8 v85, v90 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v85, v64, 0xc0c0004
	ds_load_u8 v85, v90 offset:8064
	ds_load_u8 v86, v90 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v208, v85, 16, v64
	ds_load_u8 v64, v90 offset:7296
	ds_load_u8 v85, v90 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v85, v64, 0xc0c0004
	ds_load_u8 v85, v90 offset:7552
	ds_load_u8 v86, v90 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v207, v85, 16, v64
	ds_load_u8 v64, v90 offset:656
	ds_load_u8 v85, v90 offset:528
	v_wmma_i32_16x16x16_iu4 v[0:7], v[207:208], v[67:68], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v85, v64, 0xc0c0004
	ds_load_u8 v85, v90 offset:912
	ds_load_u8 v86, v90 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v207, v85, 16, v64
	ds_load_u8 v64, v90 offset:144
	ds_load_u8 v85, v90 offset:400
	ds_load_u8 v86, v90 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v64, v206, v64, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v206, v85, 16, v64
	ds_load_u8 v64, v90 offset:1680
	ds_load_u8 v85, v90 offset:1552
	v_wmma_i32_16x16x16_iu4 v[8:15], v[206:207], v[81:82], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v85, v64, 0xc0c0004
	ds_load_u8 v85, v90 offset:1936
	ds_load_u8 v86, v90 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v207, v85, 16, v64
	ds_load_u8 v64, v90 offset:1168
	ds_load_u8 v85, v90 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v85, v64, 0xc0c0004
	ds_load_u8 v85, v90 offset:1424
	ds_load_u8 v86, v90 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v206, v85, 16, v64
	ds_load_u8 v64, v90 offset:2704
	ds_load_u8 v85, v90 offset:2576
	v_wmma_i32_16x16x16_iu4 v[8:15], v[206:207], v[79:80], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v85, v64, 0xc0c0004
	ds_load_u8 v85, v90 offset:2960
	ds_load_u8 v86, v90 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v207, v85, 16, v64
	ds_load_u8 v64, v90 offset:2192
	ds_load_u8 v85, v90 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v85, v64, 0xc0c0004
	ds_load_u8 v85, v90 offset:2448
	ds_load_u8 v86, v90 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v206, v85, 16, v64
	ds_load_u8 v64, v90 offset:3728
	ds_load_u8 v85, v90 offset:3600
	v_wmma_i32_16x16x16_iu4 v[8:15], v[206:207], v[77:78], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v85, v64, 0xc0c0004
	ds_load_u8 v85, v90 offset:3984
	ds_load_u8 v86, v90 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v207, v85, 16, v64
	ds_load_u8 v64, v90 offset:3216
	ds_load_u8 v85, v90 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v85, v64, 0xc0c0004
	ds_load_u8 v85, v90 offset:3472
	ds_load_u8 v86, v90 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v206, v85, 16, v64
	ds_load_u8 v64, v90 offset:4752
	ds_load_u8 v85, v90 offset:4624
	v_wmma_i32_16x16x16_iu4 v[8:15], v[206:207], v[75:76], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v85, v64, 0xc0c0004
	ds_load_u8 v85, v90 offset:5008
	ds_load_u8 v86, v90 offset:4880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v207, v85, 16, v64
	ds_load_u8 v64, v90 offset:4240
	ds_load_u8 v85, v90 offset:4112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v85, v64, 0xc0c0004
	ds_load_u8 v85, v90 offset:4496
	ds_load_u8 v86, v90 offset:4368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v206, v85, 16, v64
	ds_load_u8 v64, v90 offset:5776
	ds_load_u8 v85, v90 offset:5648
	v_wmma_i32_16x16x16_iu4 v[8:15], v[206:207], v[73:74], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v85, v64, 0xc0c0004
	ds_load_u8 v85, v90 offset:6032
	ds_load_u8 v86, v90 offset:5904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v207, v85, 16, v64
	ds_load_u8 v64, v90 offset:5264
	ds_load_u8 v85, v90 offset:5136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v85, v64, 0xc0c0004
	ds_load_u8 v85, v90 offset:5520
	ds_load_u8 v86, v90 offset:5392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v206, v85, 16, v64
	ds_load_u8 v64, v90 offset:6800
	ds_load_u8 v85, v90 offset:6672
	v_wmma_i32_16x16x16_iu4 v[8:15], v[206:207], v[71:72], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v85, v64, 0xc0c0004
	ds_load_u8 v85, v90 offset:7056
	ds_load_u8 v86, v90 offset:6928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v207, v85, 16, v64
	ds_load_u8 v64, v90 offset:6288
	ds_load_u8 v85, v90 offset:6160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v85, v64, 0xc0c0004
	ds_load_u8 v85, v90 offset:6544
	ds_load_u8 v86, v90 offset:6416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v206, v85, 16, v64
	ds_load_u8 v64, v90 offset:7824
	ds_load_u8 v85, v90 offset:7696
	v_wmma_i32_16x16x16_iu4 v[8:15], v[206:207], v[69:70], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v85, v64, 0xc0c0004
	ds_load_u8 v85, v90 offset:8080
	ds_load_u8 v86, v90 offset:7952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v207, v85, 16, v64
	ds_load_u8 v64, v90 offset:7312
	ds_load_u8 v85, v90 offset:7184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v85, v64, 0xc0c0004
	ds_load_u8 v85, v90 offset:7568
	ds_load_u8 v86, v90 offset:7440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v206, v85, 16, v64
	ds_load_u8 v64, v90 offset:672
	ds_load_u8 v85, v90 offset:544
	v_wmma_i32_16x16x16_iu4 v[8:15], v[206:207], v[67:68], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v85, v64, 0xc0c0004
	ds_load_u8 v85, v90 offset:928
	ds_load_u8 v86, v90 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v207, v85, 16, v64
	ds_load_u8 v64, v90 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v84, v64, 0xc0c0004
	ds_load_u8 v84, v90 offset:416
	ds_load_u8 v85, v90 offset:288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v206, v84, 16, v64
	ds_load_u8 v64, v90 offset:1696
	ds_load_u8 v84, v90 offset:1568
	v_wmma_i32_16x16x16_iu4 v[16:23], v[206:207], v[81:82], v[16:23] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v84, v64, 0xc0c0004
	ds_load_u8 v84, v90 offset:1952
	ds_load_u8 v85, v90 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v207, v84, 16, v64
	ds_load_u8 v64, v90 offset:1184
	ds_load_u8 v84, v90 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v84, v64, 0xc0c0004
	ds_load_u8 v84, v90 offset:1440
	ds_load_u8 v85, v90 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v206, v84, 16, v64
	ds_load_u8 v64, v90 offset:2720
	ds_load_u8 v84, v90 offset:2592
	v_wmma_i32_16x16x16_iu4 v[16:23], v[206:207], v[79:80], v[16:23] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v84, v64, 0xc0c0004
	ds_load_u8 v84, v90 offset:2976
	ds_load_u8 v85, v90 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v207, v84, 16, v64
	ds_load_u8 v64, v90 offset:2208
	ds_load_u8 v84, v90 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v84, v64, 0xc0c0004
	ds_load_u8 v84, v90 offset:2464
	ds_load_u8 v85, v90 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v206, v84, 16, v64
	ds_load_u8 v64, v90 offset:3744
	ds_load_u8 v84, v90 offset:3616
	v_wmma_i32_16x16x16_iu4 v[16:23], v[206:207], v[77:78], v[16:23] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v84, v64, 0xc0c0004
	ds_load_u8 v84, v90 offset:4000
	ds_load_u8 v85, v90 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v207, v84, 16, v64
	ds_load_u8 v64, v90 offset:3232
	ds_load_u8 v84, v90 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v84, v64, 0xc0c0004
	ds_load_u8 v84, v90 offset:3488
	ds_load_u8 v85, v90 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v206, v84, 16, v64
	ds_load_u8 v64, v90 offset:4768
	ds_load_u8 v84, v90 offset:4640
	v_wmma_i32_16x16x16_iu4 v[16:23], v[206:207], v[75:76], v[16:23] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v84, v64, 0xc0c0004
	ds_load_u8 v84, v90 offset:5024
	ds_load_u8 v85, v90 offset:4896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v207, v84, 16, v64
	ds_load_u8 v64, v90 offset:4256
	ds_load_u8 v84, v90 offset:4128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v84, v64, 0xc0c0004
	ds_load_u8 v84, v90 offset:4512
	ds_load_u8 v85, v90 offset:4384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v206, v84, 16, v64
	ds_load_u8 v64, v90 offset:5792
	ds_load_u8 v84, v90 offset:5664
	v_wmma_i32_16x16x16_iu4 v[16:23], v[206:207], v[73:74], v[16:23] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v84, v64, 0xc0c0004
	ds_load_u8 v84, v90 offset:6048
	ds_load_u8 v85, v90 offset:5920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v207, v84, 16, v64
	ds_load_u8 v64, v90 offset:5280
	ds_load_u8 v84, v90 offset:5152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v84, v64, 0xc0c0004
	ds_load_u8 v84, v90 offset:5536
	ds_load_u8 v85, v90 offset:5408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v206, v84, 16, v64
	ds_load_u8 v64, v90 offset:6816
	ds_load_u8 v84, v90 offset:6688
	v_wmma_i32_16x16x16_iu4 v[16:23], v[206:207], v[71:72], v[16:23] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v84, v64, 0xc0c0004
	ds_load_u8 v84, v90 offset:7072
	ds_load_u8 v85, v90 offset:6944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v207, v84, 16, v64
	ds_load_u8 v64, v90 offset:6304
	ds_load_u8 v84, v90 offset:6176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v84, v64, 0xc0c0004
	ds_load_u8 v84, v90 offset:6560
	ds_load_u8 v85, v90 offset:6432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v206, v84, 16, v64
	ds_load_u8 v64, v90 offset:7840
	ds_load_u8 v84, v90 offset:7712
	v_wmma_i32_16x16x16_iu4 v[16:23], v[206:207], v[69:70], v[16:23] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v84, v64, 0xc0c0004
	ds_load_u8 v84, v90 offset:8096
	ds_load_u8 v85, v90 offset:7968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v207, v84, 16, v64
	ds_load_u8 v64, v90 offset:7328
	ds_load_u8 v84, v90 offset:7200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v84, v64, 0xc0c0004
	ds_load_u8 v84, v90 offset:7584
	ds_load_u8 v85, v90 offset:7456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v206, v84, 16, v64
	ds_load_u8 v64, v90 offset:688
	ds_load_u8 v84, v90 offset:560
	v_wmma_i32_16x16x16_iu4 v[16:23], v[206:207], v[67:68], v[16:23] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v84, v64, 0xc0c0004
	ds_load_u8 v84, v90 offset:944
	ds_load_u8 v85, v90 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v84, 16, v64
	ds_load_u8 v64, v90 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:432
	ds_load_u8 v85, v90 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[24:31], v[83:84], v[81:82], v[24:31] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:1712
	ds_load_u8 v83, v90 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:1968
	ds_load_u8 v84, v90 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:1200
	ds_load_u8 v83, v90 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:1456
	ds_load_u8 v85, v90 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[24:31], v[83:84], v[79:80], v[24:31] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:2736
	ds_load_u8 v83, v90 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:2992
	ds_load_u8 v84, v90 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:2224
	ds_load_u8 v83, v90 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:2480
	ds_load_u8 v85, v90 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[24:31], v[83:84], v[77:78], v[24:31] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:3760
	ds_load_u8 v83, v90 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:4016
	ds_load_u8 v84, v90 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:3248
	ds_load_u8 v83, v90 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:3504
	ds_load_u8 v85, v90 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[24:31], v[83:84], v[75:76], v[24:31] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:4784
	ds_load_u8 v83, v90 offset:4656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:5040
	ds_load_u8 v84, v90 offset:4912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:4272
	ds_load_u8 v83, v90 offset:4144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:4528
	ds_load_u8 v85, v90 offset:4400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[24:31], v[83:84], v[73:74], v[24:31] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:5808
	ds_load_u8 v83, v90 offset:5680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:6064
	ds_load_u8 v84, v90 offset:5936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:5296
	ds_load_u8 v83, v90 offset:5168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:5552
	ds_load_u8 v85, v90 offset:5424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[24:31], v[83:84], v[71:72], v[24:31] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:6832
	ds_load_u8 v83, v90 offset:6704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:7088
	ds_load_u8 v84, v90 offset:6960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:6320
	ds_load_u8 v83, v90 offset:6192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:6576
	ds_load_u8 v85, v90 offset:6448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[24:31], v[83:84], v[69:70], v[24:31] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:7856
	ds_load_u8 v83, v90 offset:7728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:8112
	ds_load_u8 v84, v90 offset:7984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:7344
	ds_load_u8 v83, v90 offset:7216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:7600
	ds_load_u8 v85, v90 offset:7472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[24:31], v[83:84], v[67:68], v[24:31] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:704
	ds_load_u8 v83, v90 offset:576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:960
	ds_load_u8 v84, v90 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:192
	ds_load_u8 v83, v90 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:448
	ds_load_u8 v85, v90 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[32:39], v[83:84], v[81:82], v[32:39] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:1728
	ds_load_u8 v83, v90 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:1984
	ds_load_u8 v84, v90 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:1216
	ds_load_u8 v83, v90 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:1472
	ds_load_u8 v85, v90 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[32:39], v[83:84], v[79:80], v[32:39] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:2752
	ds_load_u8 v83, v90 offset:2624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:3008
	ds_load_u8 v84, v90 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:2240
	ds_load_u8 v83, v90 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:2496
	ds_load_u8 v85, v90 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[32:39], v[83:84], v[77:78], v[32:39] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:3776
	ds_load_u8 v83, v90 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:4032
	ds_load_u8 v84, v90 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:3264
	ds_load_u8 v83, v90 offset:3136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:3520
	ds_load_u8 v85, v90 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[32:39], v[83:84], v[75:76], v[32:39] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:4800
	ds_load_u8 v83, v90 offset:4672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:5056
	ds_load_u8 v84, v90 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:4288
	ds_load_u8 v83, v90 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:4544
	ds_load_u8 v85, v90 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[32:39], v[83:84], v[73:74], v[32:39] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:5824
	ds_load_u8 v83, v90 offset:5696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:6080
	ds_load_u8 v84, v90 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:5312
	ds_load_u8 v83, v90 offset:5184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:5568
	ds_load_u8 v85, v90 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[32:39], v[83:84], v[71:72], v[32:39] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:6848
	ds_load_u8 v83, v90 offset:6720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:7104
	ds_load_u8 v84, v90 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:6336
	ds_load_u8 v83, v90 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:6592
	ds_load_u8 v85, v90 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[32:39], v[83:84], v[69:70], v[32:39] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:7872
	ds_load_u8 v83, v90 offset:7744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:8128
	ds_load_u8 v84, v90 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:7360
	ds_load_u8 v83, v90 offset:7232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:7616
	ds_load_u8 v85, v90 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[32:39], v[83:84], v[67:68], v[32:39] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:720
	ds_load_u8 v83, v90 offset:592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:976
	ds_load_u8 v84, v90 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:208
	ds_load_u8 v83, v90 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:464
	ds_load_u8 v85, v90 offset:336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[40:47], v[83:84], v[81:82], v[40:47] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:1744
	ds_load_u8 v83, v90 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:2000
	ds_load_u8 v84, v90 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:1232
	ds_load_u8 v83, v90 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:1488
	ds_load_u8 v85, v90 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[40:47], v[83:84], v[79:80], v[40:47] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:2768
	ds_load_u8 v83, v90 offset:2640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:3024
	ds_load_u8 v84, v90 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:2256
	ds_load_u8 v83, v90 offset:2128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:2512
	ds_load_u8 v85, v90 offset:2384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[40:47], v[83:84], v[77:78], v[40:47] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:3792
	ds_load_u8 v83, v90 offset:3664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:4048
	ds_load_u8 v84, v90 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:3280
	ds_load_u8 v83, v90 offset:3152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:3536
	ds_load_u8 v85, v90 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[40:47], v[83:84], v[75:76], v[40:47] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:4816
	ds_load_u8 v83, v90 offset:4688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:5072
	ds_load_u8 v84, v90 offset:4944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:4304
	ds_load_u8 v83, v90 offset:4176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:4560
	ds_load_u8 v85, v90 offset:4432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[40:47], v[83:84], v[73:74], v[40:47] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:5840
	ds_load_u8 v83, v90 offset:5712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:6096
	ds_load_u8 v84, v90 offset:5968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:5328
	ds_load_u8 v83, v90 offset:5200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:5584
	ds_load_u8 v85, v90 offset:5456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[40:47], v[83:84], v[71:72], v[40:47] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:6864
	ds_load_u8 v83, v90 offset:6736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:7120
	ds_load_u8 v84, v90 offset:6992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:6352
	ds_load_u8 v83, v90 offset:6224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:6608
	ds_load_u8 v85, v90 offset:6480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[40:47], v[83:84], v[69:70], v[40:47] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:7888
	ds_load_u8 v83, v90 offset:7760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:8144
	ds_load_u8 v84, v90 offset:8016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:7376
	ds_load_u8 v83, v90 offset:7248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:7632
	ds_load_u8 v85, v90 offset:7504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[40:47], v[83:84], v[67:68], v[40:47] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:736
	ds_load_u8 v83, v90 offset:608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:992
	ds_load_u8 v84, v90 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:224
	ds_load_u8 v83, v90 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:480
	ds_load_u8 v85, v90 offset:352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[48:55], v[83:84], v[81:82], v[48:55] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:1760
	ds_load_u8 v83, v90 offset:1632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:2016
	ds_load_u8 v84, v90 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:1248
	ds_load_u8 v83, v90 offset:1120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:1504
	ds_load_u8 v85, v90 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[48:55], v[83:84], v[79:80], v[48:55] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:2784
	ds_load_u8 v83, v90 offset:2656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:3040
	ds_load_u8 v84, v90 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:2272
	ds_load_u8 v83, v90 offset:2144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:2528
	ds_load_u8 v85, v90 offset:2400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[48:55], v[83:84], v[77:78], v[48:55] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:3808
	ds_load_u8 v83, v90 offset:3680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:4064
	ds_load_u8 v84, v90 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:3296
	ds_load_u8 v83, v90 offset:3168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:3552
	ds_load_u8 v85, v90 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[48:55], v[83:84], v[75:76], v[48:55] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:4832
	ds_load_u8 v83, v90 offset:4704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:5088
	ds_load_u8 v84, v90 offset:4960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:4320
	ds_load_u8 v83, v90 offset:4192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:4576
	ds_load_u8 v85, v90 offset:4448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[48:55], v[83:84], v[73:74], v[48:55] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:5856
	ds_load_u8 v83, v90 offset:5728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:6112
	ds_load_u8 v84, v90 offset:5984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:5344
	ds_load_u8 v83, v90 offset:5216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:5600
	ds_load_u8 v85, v90 offset:5472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[48:55], v[83:84], v[71:72], v[48:55] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:6880
	ds_load_u8 v83, v90 offset:6752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:7136
	ds_load_u8 v84, v90 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:6368
	ds_load_u8 v83, v90 offset:6240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:6624
	ds_load_u8 v85, v90 offset:6496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[48:55], v[83:84], v[69:70], v[48:55] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:7904
	ds_load_u8 v83, v90 offset:7776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:8160
	ds_load_u8 v84, v90 offset:8032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v64
	ds_load_u8 v64, v90 offset:7392
	ds_load_u8 v83, v90 offset:7264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:7648
	ds_load_u8 v85, v90 offset:7520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	v_wmma_i32_16x16x16_iu4 v[48:55], v[83:84], v[67:68], v[48:55] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:240
	ds_load_u8 v83, v90 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v83, v64, 0xc0c0004
	ds_load_u8 v83, v90 offset:496
	ds_load_u8 v84, v90 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v64
	ds_load_u8 v64, v90 offset:752
	ds_load_u8 v84, v90 offset:624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v84, v64, 0xc0c0004
	ds_load_u8 v84, v94
	ds_load_u8 v85, v90 offset:880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v84, v84, 16, v64
	v_wmma_i32_16x16x16_iu4 v[56:63], v[83:84], v[81:82], v[56:63] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:1264
	ds_load_u8 v81, v90 offset:1136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v81, v64, 0xc0c0004
	ds_load_u8 v81, v90 offset:1520
	ds_load_u8 v82, v90 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v81, 16, v64
	ds_load_u8 v64, v90 offset:1776
	ds_load_u8 v82, v90 offset:1648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v82, v64, 0xc0c0004
	ds_load_u8 v82, v96
	ds_load_u8 v83, v90 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v82, v82, 16, v64
	v_wmma_i32_16x16x16_iu4 v[56:63], v[81:82], v[79:80], v[56:63] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:2288
	ds_load_u8 v79, v90 offset:2160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v79, v64, 0xc0c0004
	ds_load_u8 v79, v90 offset:2544
	ds_load_u8 v80, v90 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v79, 16, v64
	ds_load_u8 v64, v90 offset:2800
	ds_load_u8 v80, v90 offset:2672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v80, v64, 0xc0c0004
	ds_load_u8 v80, v97
	ds_load_u8 v81, v90 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v80, v80, 16, v64
	v_wmma_i32_16x16x16_iu4 v[56:63], v[79:80], v[77:78], v[56:63] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:3312
	ds_load_u8 v77, v90 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v77, v64, 0xc0c0004
	ds_load_u8 v77, v90 offset:3568
	ds_load_u8 v78, v90 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v77, 16, v64
	ds_load_u8 v64, v90 offset:3824
	ds_load_u8 v78, v90 offset:3696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v78, v64, 0xc0c0004
	ds_load_u8 v78, v98
	ds_load_u8 v79, v90 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v64
	v_wmma_i32_16x16x16_iu4 v[56:63], v[77:78], v[75:76], v[56:63] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:4336
	ds_load_u8 v75, v90 offset:4208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v75, v64, 0xc0c0004
	ds_load_u8 v75, v90 offset:4592
	ds_load_u8 v76, v90 offset:4464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v75, 16, v64
	ds_load_u8 v64, v90 offset:4848
	ds_load_u8 v76, v90 offset:4720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v76, v64, 0xc0c0004
	ds_load_u8 v76, v99
	ds_load_u8 v77, v90 offset:4976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v76, v76, 16, v64
	v_wmma_i32_16x16x16_iu4 v[56:63], v[75:76], v[73:74], v[56:63] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:5360
	ds_load_u8 v73, v90 offset:5232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v73, v64, 0xc0c0004
	ds_load_u8 v73, v90 offset:5616
	ds_load_u8 v74, v90 offset:5488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v64
	ds_load_u8 v64, v90 offset:5872
	ds_load_u8 v74, v90 offset:5744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v74, v64, 0xc0c0004
	ds_load_u8 v74, v100
	ds_load_u8 v75, v90 offset:6000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v64
	v_wmma_i32_16x16x16_iu4 v[56:63], v[73:74], v[71:72], v[56:63] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:6384
	ds_load_u8 v71, v90 offset:6256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v71, v64, 0xc0c0004
	ds_load_u8 v71, v90 offset:6640
	ds_load_u8 v72, v90 offset:6512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v71, 16, v64
	ds_load_u8 v64, v90 offset:6896
	ds_load_u8 v72, v90 offset:6768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v72, v64, 0xc0c0004
	ds_load_u8 v72, v101
	ds_load_u8 v73, v90 offset:7024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v72, v72, 16, v64
	v_wmma_i32_16x16x16_iu4 v[56:63], v[71:72], v[69:70], v[56:63] neg_lo:[1,1,0]
	ds_load_u8 v64, v90 offset:7408
	ds_load_u8 v69, v90 offset:7280
	ds_load_u8 v71, v102
	ds_load_u8 v72, v90 offset:8048
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v64, v69, v64, 0xc0c0004
	ds_load_u8 v69, v90 offset:7664
	ds_load_u8 v70, v90 offset:7536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v69, 16, v64
	ds_load_u8 v64, v90 offset:7920
	ds_load_u8 v70, v90 offset:7792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v70, v64, 0xc0c0004
	v_perm_b32 v64, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v70, v64, 16, v70
	v_wmma_i32_16x16x16_iu4 v[56:63], v[69:70], v[67:68], v[56:63] neg_lo:[1,1,0]
	.loc	1 257 17                        ; generate_amdgcn.py:257:17
	s_cbranch_vccnz .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=2
	.loc	1 273 40                        ; generate_amdgcn.py:273:40
	s_mul_i32 s4, s7, s29
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v86, v2
	v_cvt_f32_i32_e32 v67, v31
	v_cvt_f32_i32_e32 v31, v33
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	v_add_lshl_u32 v2, s7, v168, 1
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v167, s4, 1
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	buffer_load_u16 v2, v2, s[8:11], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v64, v0
	v_cvt_f32_i32_e32 v68, v30
	v_cvt_f32_i32_e32 v30, v34
	v_cvt_f32_i32_e32 v85, v1
	v_cvt_f32_i32_e32 v88, v3
	v_cvt_f32_i32_e32 v214, v5
	v_cvt_f32_i32_e32 v89, v4
	v_cvt_f32_i32_e32 v212, v7
	v_cvt_f32_i32_e32 v211, v8
	v_cvt_f32_i32_e32 v213, v6
	v_cvt_f32_i32_e32 v210, v9
	v_cvt_f32_i32_e32 v83, v15
	v_cvt_f32_i32_e32 v69, v29
	v_cvt_f32_i32_e32 v29, v35
	v_cvt_f32_i32_e32 v15, v49
	v_cvt_f32_i32_e32 v208, v11
	v_cvt_f32_i32_e32 v207, v12
	v_cvt_f32_i32_e32 v206, v13
	v_cvt_f32_i32_e32 v209, v10
	v_cvt_f32_i32_e32 v3, v61
	v_cvt_f32_i32_e32 v84, v14
	v_cvt_f32_i32_e32 v71, v27
	v_cvt_f32_i32_e32 v27, v37
	v_cvt_f32_i32_e32 v13, v51
	v_cvt_f32_i32_e32 v1, v62
	v_cvt_f32_i32_e32 v82, v16
	v_cvt_f32_i32_e32 v80, v18
	v_cvt_f32_i32_e32 v79, v19
	v_cvt_f32_i32_e32 v73, v25
	v_cvt_f32_i32_e32 v25, v39
	v_cvt_f32_i32_e32 v11, v53
	v_cvt_f32_i32_e32 v78, v20
	v_cvt_f32_i32_e32 v76, v22
	v_cvt_f32_i32_e32 v81, v17
	v_cvt_f32_i32_e32 v75, v23
	v_cvt_f32_i32_e32 v74, v24
	v_cvt_f32_i32_e32 v23, v41
	v_cvt_f32_i32_e32 v72, v26
	v_cvt_f32_i32_e32 v77, v21
	v_cvt_f32_i32_e32 v70, v28
	v_cvt_f32_i32_e32 v21, v43
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v28, v36
	v_cvt_f32_i32_e32 v26, v38
	v_cvt_f32_i32_e32 v19, v45
	v_cvt_f32_i32_e32 v24, v40
	v_cvt_f32_i32_e32 v22, v42
	v_cvt_f32_i32_e32 v20, v44
	v_cvt_f32_i32_e32 v17, v47
	v_cvt_f32_i32_e32 v18, v46
	v_cvt_f32_i32_e32 v16, v48
	v_cvt_f32_i32_e32 v14, v50
	v_cvt_f32_i32_e32 v12, v52
	v_cvt_f32_i32_e32 v10, v54
	v_cvt_f32_i32_e32 v9, v55
	v_cvt_f32_i32_e32 v8, v56
	v_cvt_f32_i32_e32 v7, v57
	v_cvt_f32_i32_e32 v5, v59
	v_cvt_f32_i32_e32 v6, v58
	v_cvt_f32_i32_e32 v4, v60
	v_cvt_f32_i32_e32 v0, v63
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s7, s7, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	s_cmp_lg_u32 s7, s36
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v64
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v165, v34, v33
	v_or_b32_e32 v33, 2, v167
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v31, v2, v31
	v_mul_f32_e32 v34, v2, v85
	v_mul_f32_e32 v15, v2, v15
	v_mul_f32_e32 v29, v2, v29
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v33, s4, 1
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v3, v2, v3
	v_mul_f32_e32 v1, v2, v1
	v_mul_f32_e32 v13, v2, v13
	v_mul_f32_e32 v27, v2, v27
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v11, v2, v11
	v_mul_f32_e32 v25, v2, v25
	v_mul_f32_e32 v23, v2, v23
	v_mul_f32_e32 v21, v2, v21
	v_mul_f32_e32 v19, v2, v19
	v_mul_f32_e32 v17, v2, v17
	v_mul_f32_e32 v9, v2, v9
	v_mul_f32_e32 v7, v2, v7
	v_mul_f32_e32 v5, v2, v5
	v_mul_f32_e32 v32, v2, v32
	v_mul_f32_e32 v30, v2, v30
	v_mul_f32_e32 v28, v2, v28
	v_mul_f32_e32 v26, v2, v26
	v_mul_f32_e32 v24, v2, v24
	v_mul_f32_e32 v22, v2, v22
	v_mul_f32_e32 v20, v2, v20
	v_mul_f32_e32 v18, v2, v18
	v_mul_f32_e32 v16, v2, v16
	v_mul_f32_e32 v14, v2, v14
	v_mul_f32_e32 v12, v2, v12
	v_mul_f32_e32 v10, v2, v10
	v_mul_f32_e32 v8, v2, v8
	v_mul_f32_e32 v6, v2, v6
	v_mul_f32_e32 v4, v2, v4
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v0, v2, v0 :: v_dual_lshlrev_b32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v166, v34, v33
	v_or_b32_e32 v33, 4, v167
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v86
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v33, s4, 1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v163, v34, v33
	v_or_b32_e32 v33, 6, v167
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v88
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v33, s4, 1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v164, v34, v33
	v_or_b32_e32 v33, 8, v167
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v89
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v33, s4, 1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v161, v34, v33
	v_or_b32_e32 v33, 10, v167
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v214
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v33, s4, 1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v162, v34, v33
	v_or_b32_e32 v33, 12, v167
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v213
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v33, s4, 1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v159, v34, v33
	v_or_b32_e32 v33, 14, v167
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v212
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v33, s4, 1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v160, v34, v33
	v_or_b32_e32 v33, 16, v167
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v211
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v33, s4, 1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v157, v34, v33
	v_or_b32_e32 v33, 18, v167
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v210
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v33, s4, 1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v158, v34, v33
	v_or_b32_e32 v33, 20, v167
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v209
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v33, s4, 1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v155, v34, v33
	v_or_b32_e32 v33, 22, v167
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v208
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v33, s4, 1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v156, v34, v33
	v_or_b32_e32 v33, 24, v167
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v207
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v33, s4, 1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v153, v34, v33
	v_or_b32_e32 v33, 26, v167
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v206
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v33, s4, 1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v154, v34, v33
	v_or_b32_e32 v33, 28, v167
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v84
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v33, s4, 1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v151, v34, v33
	v_or_b32_e32 v33, 30, v167
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v83
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v33, s4, 1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v152, v34, v33
	v_or_b32_e32 v33, 32, v167
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v82
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v33, s4, 1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v149, v34, v33
	v_or_b32_e32 v33, 34, v167
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v81
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v33, s4, 1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v150, v34, v33
	v_or_b32_e32 v33, 36, v167
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v80
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v33, s4, 1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v147, v34, v33
	v_or_b32_e32 v33, 38, v167
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v79
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v33, s4, 1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v148, v34, v33
	v_or_b32_e32 v33, 40, v167
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v78
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v33, s4, 1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v145, v34, v33
	v_or_b32_e32 v33, 42, v167
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v77
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v33, s4, 1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v146, v34, v33
	v_or_b32_e32 v33, 44, v167
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v76
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v33, s4, 1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v143, v34, v33
	v_or_b32_e32 v33, 46, v167
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v75
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v33, s4, 1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v144, v34, v33
	v_or_b32_e32 v33, 48, v167
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v74
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v33, s4, 1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v141, v34, v33
	v_or_b32_e32 v33, 50, v167
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v73
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v33, s4, 1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v142, v34, v33
	v_or_b32_e32 v33, 52, v167
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v72
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v33, s4, 1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v140, v34, v33
	v_or_b32_e32 v33, 54, v167
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v71
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v33, s4, 1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v139, v34, v33
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v169, s4, 1
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v70
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v137, v34, v33
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v170, s4, 1
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v69
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v138, v34, v33
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v171, s4, 1
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v68
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v135, v34, v33
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v172, s4, 1
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v2, v67
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v136, v34, v33
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v173, s4, 1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v134, v32, v33
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v32, v174, s4, 1
	buffer_load_u16 v32, v32, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v32, 16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v133, v31, v32
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v31, v175, s4, 1
	buffer_load_u16 v31, v31, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v131, v30, v31
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v30, v176, s4, 1
	buffer_load_u16 v30, v30, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v132, v29, v30
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v29, v177, s4, 1
	buffer_load_u16 v29, v29, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v129, v28, v29
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v28, v178, s4, 1
	buffer_load_u16 v28, v28, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v130, v27, v28
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v27, v179, s4, 1
	buffer_load_u16 v27, v27, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v127, v26, v27
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v26, v180, s4, 1
	buffer_load_u16 v26, v26, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v128, v25, v26
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v25, v181, s4, 1
	buffer_load_u16 v25, v25, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v125, v24, v25
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v24, v182, s4, 1
	buffer_load_u16 v24, v24, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v126, v23, v24
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v23, v183, s4, 1
	buffer_load_u16 v23, v23, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v123, v22, v23
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v22, v184, s4, 1
	buffer_load_u16 v22, v22, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v124, v21, v22
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v21, v185, s4, 1
	buffer_load_u16 v21, v21, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v121, v20, v21
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v20, v186, s4, 1
	buffer_load_u16 v20, v20, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v122, v19, v20
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v19, v187, s4, 1
	buffer_load_u16 v19, v19, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v119, v18, v19
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v18, v188, s4, 1
	buffer_load_u16 v18, v18, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v120, v17, v18
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v17, v189, s4, 1
	buffer_load_u16 v17, v17, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v117, v16, v17
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v16, v190, s4, 1
	buffer_load_u16 v16, v16, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v118, v15, v16
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v15, v191, s4, 1
	buffer_load_u16 v15, v15, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v115, v14, v15
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v14, v192, s4, 1
	buffer_load_u16 v14, v14, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v14, 16, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v116, v13, v14
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v13, v193, s4, 1
	buffer_load_u16 v13, v13, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v113, v12, v13
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v12, v194, s4, 1
	buffer_load_u16 v12, v12, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v12, 16, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v114, v11, v12
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v11, v195, s4, 1
	buffer_load_u16 v11, v11, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v111, v10, v11
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v10, v196, s4, 1
	buffer_load_u16 v10, v10, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v112, v9, v10
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v9, v197, s4, 1
	buffer_load_u16 v9, v9, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v109, v8, v9
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v8, v198, s4, 1
	buffer_load_u16 v8, v8, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v110, v7, v8
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v7, v199, s4, 1
	buffer_load_u16 v7, v7, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v107, v6, v7
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v6, v200, s4, 1
	buffer_load_u16 v6, v6, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v108, v5, v6
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v5, v201, s4, 1
	buffer_load_u16 v5, v5, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v106, v4, v5
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v4, v202, s4, 1
	buffer_load_u16 v4, v4, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v4, 16, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v105, v3, v4
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v3, v203, s4, 1
	buffer_load_u16 v3, v3, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v104, v1, v3
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v1, v204, s4, 1
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v103, v0, v1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %Flow
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	scratch_load_b64 v[47:48], off, off     ; 8-byte Folded Reload
	s_branch .LBB0_2
.LBB0_9:                                ; %._crit_edge11
	.loc	1 196 1 is_stmt 1               ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 28
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 41
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.private_seg_size, 28
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19852
; TotalNumSgprs: 43
; NumVgprs: 256
; ScratchSize: 28
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 43
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
    .private_segment_fixed_size: 28
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 6
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
