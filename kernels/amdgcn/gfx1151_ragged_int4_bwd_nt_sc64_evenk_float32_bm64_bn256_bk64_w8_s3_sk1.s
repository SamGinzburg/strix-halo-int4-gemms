	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[68:69], s[0:1], 0x30
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s9, s2
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v101, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s68, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:996:21 ]
	s_add_i32 s5, s69, 0xff
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_lshr_b32 s6, s6, 26
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_lshr_b32 s7, s7, 24
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_add_i32 s5, s5, s7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_ashr_i32 s4, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s6, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 997 27 is_stmt 1              ; ragged.py:997:27
	s_mul_i32 s4, s6, s4
	.loc	1 998 20                        ; ragged.py:998:20
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s8, 0, s5
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s7
	s_mul_hi_u32 s8, s7, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s8
	s_xor_b32 s8, s2, s4
	s_mul_hi_u32 s7, s9, s7
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s10, s7, s5
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s7, 1
	s_sub_i32 s11, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s7, s10, s7
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s7, 1
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s5, s10, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s7, s6
	.loc	1 998 20                        ; ragged.py:998:20
	s_xor_b32 s5, s5, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_f32_u32 s9, s7
	.loc	1 998 20                        ; ragged.py:998:20
	s_sub_i32 s60, s5, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s5, 0, s7
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s60, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s2, s2, s4
	.loc	1 1125 43                       ; ragged.py:1125:43
	s_mul_i32 s63, s60, s68
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s8, s2
	s_xor_b32 s10, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s10, s10, 31
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s5
	s_add_i32 s9, s9, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s9, s8, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s9, s7
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s9, 1
	s_sub_i32 s12, s8, s7
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s9, s11, s9
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s9, 1
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s7, s11, s9
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_ashr_i32 s61, s60, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s7, s7, s10
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[8:9], s[60:61], 2
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s7, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s6, s7, s6
	.loc	1 1003 18                       ; ragged.py:1003:18
	s_lshl_b32 s61, s7, 6
	.loc	1 1001 17                       ; ragged.py:1001:17
	s_sub_i32 s6, s2, s6
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s8
	s_addc_u32 s5, s5, s9
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v1, s61, v101
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_load_b32 s62, s[4:5], 0x0
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v2, 16, v1
	v_or_b32_e32 v3, 32, v1
	v_or_b32_e32 v4, 48, v1
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s5, s68, v1
	v_cmp_gt_i32_e64 s4, s68, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s46, s68, v3
	v_cmp_gt_i32_e64 s2, s68, v4
	.loc	1 1008 27                       ; ragged.py:1008:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s62, s62, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cmp_gt_i32 s62, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge48_crit_edge
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_add_i32 s70, s61, s63
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s7, -1
                                        ; implicit-def: $sgpr70
.LBB0_3:                                ; %Flow238
	s_load_b64 s[56:57], s[0:1], 0x28
	v_dual_mov_b32 v97, 0 :: v_dual_and_b32 v130, 0xe0, v0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v157, 0
	v_mov_b32_e32 v156, 0
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_lshl_b32 s47, s6, 8
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	.loc	1 1003 36 is_stmt 1             ; ragged.py:1003:36
	v_lshrrev_b32_e32 v2, 5, v130
	s_clause 0x1
	s_load_b256 s[48:55], s[0:1], 0x0
	s_load_b64 s[58:59], s[0:1], 0x38
	.loc	1 1118 23                       ; ragged.py:1118:23
	s_lshl_b32 s3, s3, 5
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_lshr_b32 s66, s62, 1
	s_cmp_lt_i32 s3, 32
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v1, 8, v2
	v_or_b32_e32 v4, 24, v2
	v_or_b32_e32 v3, 16, v2
	v_or_b32_e32 v5, 32, v2
	v_or_b32_e32 v6, 40, v2
	.loc	1 1003 18 is_stmt 0             ; ragged.py:1003:18
	v_or_b32_e32 v10, s61, v1
	.loc	1 1004 18 is_stmt 1             ; ragged.py:1004:18
	v_or_b32_e32 v1, s47, v1
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v7, 48, v2
	v_or_b32_e32 v8, 56, v2
	.loc	1 1003 18 is_stmt 0             ; ragged.py:1003:18
	v_or_b32_e32 v9, s61, v2
	v_mov_b32_e32 v156, 0
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s13, s69, v1
	.loc	1 1113 28                       ; ragged.py:1113:28
	v_and_b32_e32 v1, 31, v0
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v12, s61, v4
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v17, s47, v2
	v_or_b32_e32 v4, s47, v4
	v_mov_b32_e32 v157, 0
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[65:66], null, s58, v2, v[1:2]
	v_lshlrev_b32_e32 v2, 1, v0
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s15, s69, v4
	s_cselect_b32 s71, -1, 0
	s_add_i32 s70, s61, s63
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v11, s61, v3
	v_dual_mov_b32 v155, 0 :: v_dual_and_b32 v4, 24, v2
	v_mad_u64_u32 v[66:67], null, s58, 24, v[65:66]
	v_or_b32_e32 v13, s61, v5
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v3, s47, v3
	v_bfe_i32 v1, v0, 7, 1
	v_lshl_or_b32 v164, v101, 5, v4
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v4, s70, v101
	v_mad_u64_u32 v[67:68], null, s58, 40, v[65:66]
	v_mad_u64_u32 v[68:69], null, s58, 48, v[65:66]
	v_mad_u64_u32 v[69:70], null, s58, 56, v[65:66]
	v_mad_u64_u32 v[70:71], null, 0x48, s58, v[65:66]
	v_mad_u64_u32 v[71:72], null, 0x50, s58, v[65:66]
	v_mad_u64_u32 v[72:73], null, 0x58, s58, v[65:66]
	v_mad_u64_u32 v[73:74], null, 0x60, s58, v[65:66]
	v_mad_u64_u32 v[74:75], null, 0x68, s58, v[65:66]
	v_mad_u64_u32 v[75:76], null, 0x70, s58, v[65:66]
	v_mad_u64_u32 v[76:77], null, 0x78, s58, v[65:66]
	v_mad_u64_u32 v[77:78], null, 0x88, s58, v[65:66]
	v_mad_u64_u32 v[78:79], null, 0x90, s58, v[65:66]
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s68, v9
	v_cmp_gt_i32_e64 s6, s68, v11
	v_cmp_gt_i32_e64 s7, s68, v12
	v_cmp_gt_i32_e64 s8, s68, v13
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s14, s69, v3
	v_dual_mov_b32 v154, 0 :: v_dual_and_b32 v3, 0x7f, v0
	v_dual_mov_b32 v152, 0 :: v_dual_and_b32 v1, 0x88, v1
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v9, 16, v4
	v_mul_lo_u32 v167, v4, s59
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v11, 32, v4
	v_dual_mov_b32 v151, 0 :: v_dual_add_nc_u32 v4, 48, v4
	v_dual_mov_b32 v149, 0 :: v_dual_and_b32 v12, 0xf0, v0
	v_dual_mov_b32 v146, 0 :: v_dual_lshlrev_b32 v13, 5, v0
	v_mad_u64_u32 v[79:80], null, 0x98, s58, v[65:66]
	v_mad_u64_u32 v[80:81], null, 0xa0, s58, v[65:66]
	v_mad_u64_u32 v[81:82], null, 0xa8, s58, v[65:66]
	v_mad_u64_u32 v[82:83], null, 0xb0, s58, v[65:66]
	v_mad_u64_u32 v[83:84], null, 0xb8, s58, v[65:66]
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v14, s61, v6
	v_or_b32_e32 v15, s61, v7
	v_or_b32_e32 v16, s61, v8
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v5, s47, v5
	v_or_b32_e32 v6, s47, v6
	v_or_b32_e32 v7, s47, v7
	v_or_b32_e32 v8, s47, v8
	v_xor_b32_e32 v163, v1, v3
	v_lshl_or_b32 v166, v130, 4, v164
	v_mul_lo_u32 v168, v9, s59
	v_mul_lo_u32 v170, v4, s59
	v_dual_mov_b32 v147, 0 :: v_dual_lshlrev_b32 v4, 2, v12
	v_dual_mov_b32 v144, 0 :: v_dual_and_b32 v9, 32, v13
	v_mad_u64_u32 v[84:85], null, 0xc0, s58, v[65:66]
	v_mad_u64_u32 v[85:86], null, 0xc8, s58, v[65:66]
	v_mad_u64_u32 v[86:87], null, 0xd0, s58, v[65:66]
	v_mad_u64_u32 v[87:88], null, 0xd8, s58, v[65:66]
	v_mad_u64_u32 v[88:89], null, 0xe0, s58, v[65:66]
	v_or_b32_e32 v18, 64, v17
	v_or_b32_e32 v19, 0x48, v17
	v_or_b32_e32 v20, 0x50, v17
	v_or_b32_e32 v21, 0x58, v17
	v_or_b32_e32 v22, 0x60, v17
	v_or_b32_e32 v23, 0x68, v17
	v_or_b32_e32 v24, 0x70, v17
	v_or_b32_e32 v25, 0x78, v17
	v_or_b32_e32 v26, 0x80, v17
	v_or_b32_e32 v27, 0x88, v17
	v_or_b32_e32 v28, 0x90, v17
	v_or_b32_e32 v29, 0x98, v17
	v_or_b32_e32 v30, 0xa0, v17
	v_or_b32_e32 v31, 0xa8, v17
	v_or_b32_e32 v32, 0xb0, v17
	v_or_b32_e32 v33, 0xb8, v17
	v_or_b32_e32 v34, 0xc0, v17
	v_or_b32_e32 v35, 0xc8, v17
	v_or_b32_e32 v36, 0xd0, v17
	v_or_b32_e32 v37, 0xd8, v17
	v_or_b32_e32 v38, 0xe0, v17
	v_or_b32_e32 v39, 0xe8, v17
	v_or_b32_e32 v40, 0xf0, v17
	v_or_b32_e32 v41, 0xf8, v17
	v_or_b32_e32 v158, s47, v0
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s1, s68, v10
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s16, s69, v5
	v_cmp_gt_i32_e64 s17, s69, v6
	v_cmp_gt_i32_e64 s18, s69, v7
	v_cmp_gt_i32_e64 s19, s69, v8
	v_xor_b32_e32 v1, 0x110, v163
	v_xor_b32_e32 v3, 8, v164
	v_xor_b32_e32 v5, 16, v164
	v_xor_b32_e32 v6, 24, v164
	v_xor_b32_e32 v7, 8, v166
	v_xor_b32_e32 v8, 16, v166
	v_xor_b32_e32 v10, 24, v166
	v_dual_mov_b32 v145, 0 :: v_dual_and_b32 v2, 28, v2
	v_add3_u32 v4, 0, v4, v9
	v_dual_mov_b32 v142, 0 :: v_dual_lshlrev_b32 v9, 1, v12
	v_mad_u64_u32 v[89:90], null, 0xe8, s58, v[65:66]
	v_mad_u64_u32 v[90:91], null, 0xf0, s58, v[65:66]
	v_mul_lo_u32 v169, v11, s59
	v_mad_u64_u32 v[91:92], null, 0xf8, s58, v[65:66]
	.loc	1 1127 43                       ; ragged.py:1127:43
	s_mul_i32 s62, s60, s69
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s9, s68, v14
	v_cmp_gt_i32_e64 s10, s68, v15
	v_cmp_gt_i32_e64 s11, s68, v16
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s12, s69, v17
	v_cmp_gt_i32_e64 s20, s69, v18
	v_cmp_gt_i32_e64 s21, s69, v19
	v_cmp_gt_i32_e64 s22, s69, v20
	v_cmp_gt_i32_e64 s23, s69, v21
	v_cmp_gt_i32_e64 s24, s69, v22
	v_cmp_gt_i32_e64 s25, s69, v23
	v_cmp_gt_i32_e64 s26, s69, v24
	v_cmp_gt_i32_e64 s27, s69, v25
	v_cmp_gt_i32_e64 s28, s69, v26
	v_cmp_gt_i32_e64 s29, s69, v27
	v_cmp_gt_i32_e64 s30, s69, v28
	v_cmp_gt_i32_e64 s31, s69, v29
	v_cmp_gt_i32_e64 s33, s69, v30
	v_cmp_gt_i32_e64 s34, s69, v31
	v_cmp_gt_i32_e64 s35, s69, v32
	v_cmp_gt_i32_e64 s36, s69, v33
	v_cmp_gt_i32_e64 s37, s69, v34
	v_cmp_gt_i32_e64 s38, s69, v35
	v_cmp_gt_i32_e64 s39, s69, v36
	v_cmp_gt_i32_e64 s40, s69, v37
	v_cmp_gt_i32_e64 s41, s69, v38
	v_cmp_gt_i32_e64 s42, s69, v39
	v_cmp_gt_i32_e64 s43, s69, v40
	v_cmp_gt_i32_e64 s44, s69, v41
	v_cmp_gt_i32_e64 s45, s69, v158
	v_lshl_add_u32 v159, s58, 3, v65
	v_lshl_add_u32 v160, s58, 4, v65
	v_lshl_add_u32 v161, s58, 5, v65
	v_lshl_add_u32 v162, s58, 6, v65
	v_lshl_add_u32 v165, s58, 7, v65
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v171, 0, v1
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v172, 0, v3
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v173, 0, v5
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v174, 0, v6
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v175, 0, v7
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v176, 0, v8
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v177, 0, v10
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v178, v4, v2
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v179, 0, v9
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v92, 0
	v_mov_b32_e32 v93, 0
	v_mov_b32_e32 v97, 0
	s_add_i32 s73, s47, s62
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_add_i32 s66, s66, -1
	.loc	1 1214 37                       ; ragged.py:1214:37
	s_mul_i32 s68, s60, s59
	s_mul_i32 s72, s70, s58
	s_and_b32 s61, s49, 0xffff
	s_mov_b32 s60, s48
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	s_mul_i32 s73, s73, s58
	s_and_b32 s49, s51, 0xffff
	s_mov_b32 s48, s50
	s_and_b32 s53, s53, 0xffff
	s_and_b32 s65, s55, 0xffff
	s_mov_b32 s64, s54
	s_mov_b32 s59, 0
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshr_b32 s58, s66, 5
	s_mov_b32 s54, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v33, v167, s59, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s50, s59, s68
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v34, v168, s59, 1
	v_add_lshl_u32 v35, v169, s59, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s50, s50, s69
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v36, v170, s59, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v37, v158, s50, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v33, 0x80000000, v33, s5
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	v_cndmask_b32_e64 v35, 0x80000000, v35, s46
	s_mov_b32 s54, s62
	s_mov_b32 s55, s63
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_cndmask_b32_e64 v37, 0x80000000, v37, s45
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_clause 0x3
	buffer_load_u16 v33, v33, s[52:55], 0 offen
	buffer_load_u16 v34, v34, s[52:55], 0 offen
	buffer_load_u16 v35, v35, s[52:55], 0 offen
	buffer_load_u16 v36, v36, s[52:55], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v37, v37, s[64:67], 0 offen
	.loc	1 1218 21                       ; ragged.py:1218:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1220 17                       ; ragged.py:1220:17
	s_add_i32 s50, s59, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshl_b32 s54, s50, 5
	s_cmp_lg_u32 s59, s58
	s_mov_b32 s59, s50
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v54, v194, v34 :: v_dual_lshlrev_b32 v33, 16, v33
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v38, v211, v33 :: v_dual_lshlrev_b32 v35, 16, v35
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v41, v208, v33 :: v_dual_lshlrev_b32 v36, 16, v36
	v_mul_f32_e32 v39, v210, v33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v56, v192, v34 :: v_dual_lshlrev_b32 v37, 16, v37
	v_dual_mul_f32 v40, v209, v33 :: v_dual_mul_f32 v53, v195, v34
	v_dual_mul_f32 v42, v207, v33 :: v_dual_mul_f32 v55, v193, v34
	v_dual_mul_f32 v43, v206, v33 :: v_dual_mul_f32 v60, v188, v34
	v_dual_mul_f32 v44, v205, v33 :: v_dual_mul_f32 v57, v191, v34
	v_dual_mul_f32 v45, v204, v33 :: v_dual_mul_f32 v58, v190, v34
	v_dual_mul_f32 v46, v203, v33 :: v_dual_mul_f32 v59, v189, v34
	v_dual_mul_f32 v47, v202, v33 :: v_dual_mul_f32 v64, v184, v34
	v_dual_mul_f32 v48, v201, v33 :: v_dual_mul_f32 v61, v187, v34
	v_dual_mul_f32 v49, v200, v33 :: v_dual_mul_f32 v62, v186, v34
	v_dual_mul_f32 v50, v199, v33 :: v_dual_mul_f32 v63, v185, v34
	v_mul_f32_e32 v51, v198, v33
	v_dual_mul_f32 v52, v197, v33 :: v_dual_mul_f32 v183, v183, v34
	v_dual_mul_f32 v33, v196, v33 :: v_dual_mul_f32 v182, v182, v34
	v_dual_mul_f32 v181, v181, v34 :: v_dual_mul_f32 v32, v32, v35
	v_dual_mul_f32 v34, v180, v34 :: v_dual_mul_f32 v31, v31, v35
	v_mul_f32_e32 v16, v16, v36
	v_dual_mul_f32 v30, v30, v35 :: v_dual_mul_f32 v15, v15, v36
	v_dual_mul_f32 v29, v29, v35 :: v_dual_mul_f32 v196, v11, v36
	v_mul_f32_e32 v180, v28, v35
	v_dual_mul_f32 v184, v27, v35 :: v_dual_mul_f32 v195, v12, v36
	v_dual_mul_f32 v185, v26, v35 :: v_dual_mul_f32 v194, v13, v36
	v_dual_mul_f32 v186, v25, v35 :: v_dual_mul_f32 v7, v7, v36
	v_dual_mul_f32 v187, v24, v35 :: v_dual_mul_f32 v10, v10, v36
	v_dual_mul_f32 v188, v23, v35 :: v_dual_mul_f32 v9, v9, v36
	v_dual_mul_f32 v189, v22, v35 :: v_dual_mul_f32 v8, v8, v36
	v_dual_mul_f32 v190, v21, v35 :: v_dual_mul_f32 v3, v3, v36
	v_dual_mul_f32 v191, v20, v35 :: v_dual_mul_f32 v6, v6, v36
	v_dual_mul_f32 v192, v19, v35 :: v_dual_mul_f32 v5, v5, v36
	v_dual_mul_f32 v193, v18, v35 :: v_dual_mul_f32 v4, v4, v36
	v_dual_mul_f32 v35, v17, v35 :: v_dual_mul_f32 v2, v2, v36
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_store_b32 v178, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v179
	ds_load_b128 v[21:24], v179 offset:16
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_mul_f32_e32 v37, v14, v36
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_load_b128 v[11:14], v179 offset:512
	ds_load_b128 v[25:28], v179 offset:528
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v1, v1, v36 :: v_dual_fmac_f32 v156, v39, v18
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_dual_fmac_f32 v157, v38, v17 :: v_dual_fmac_f32 v154, v41, v20
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v155, v40, v19 :: v_dual_fmac_f32 v152, v43, v22
	v_dual_fmac_f32 v153, v42, v21 :: v_dual_fmac_f32 v150, v45, v24
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v151, v44, v23 :: v_dual_fmac_f32 v148, v47, v12
	v_dual_fmac_f32 v149, v46, v11 :: v_dual_fmac_f32 v146, v49, v14
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v147, v48, v13 :: v_dual_fmac_f32 v144, v51, v26
	v_dual_fmac_f32 v145, v50, v25 :: v_dual_fmac_f32 v142, v33, v28
	v_dual_fmac_f32 v143, v52, v27 :: v_dual_fmac_f32 v140, v54, v18
	v_dual_fmac_f32 v141, v53, v17 :: v_dual_fmac_f32 v138, v56, v20
	v_dual_fmac_f32 v139, v55, v19 :: v_dual_fmac_f32 v136, v58, v22
	v_dual_fmac_f32 v137, v57, v21 :: v_dual_fmac_f32 v134, v60, v24
	v_dual_fmac_f32 v135, v59, v23 :: v_dual_fmac_f32 v132, v62, v12
	v_dual_fmac_f32 v133, v61, v11 :: v_dual_fmac_f32 v128, v183, v25
	v_dual_fmac_f32 v131, v63, v13 :: v_dual_fmac_f32 v126, v181, v27
	v_dual_fmac_f32 v129, v64, v14 :: v_dual_fmac_f32 v122, v30, v19
	v_dual_fmac_f32 v127, v182, v26 :: v_dual_fmac_f32 v124, v32, v17
	v_dual_fmac_f32 v125, v34, v28 :: v_dual_fmac_f32 v120, v180, v21
	v_dual_fmac_f32 v123, v31, v18 :: v_dual_fmac_f32 v118, v185, v23
	v_dual_fmac_f32 v121, v29, v20 :: v_dual_fmac_f32 v116, v187, v11
	v_dual_fmac_f32 v119, v184, v22 :: v_dual_fmac_f32 v114, v189, v13
	v_dual_fmac_f32 v117, v186, v24 :: v_dual_fmac_f32 v112, v191, v25
	v_dual_fmac_f32 v115, v188, v12 :: v_dual_fmac_f32 v110, v193, v27
	v_dual_fmac_f32 v113, v190, v14 :: v_dual_fmac_f32 v108, v16, v17
	v_dual_fmac_f32 v111, v192, v26 :: v_dual_fmac_f32 v106, v37, v19
	v_dual_fmac_f32 v109, v35, v28 :: v_dual_fmac_f32 v102, v10, v23
	v_dual_fmac_f32 v107, v15, v18 :: v_dual_fmac_f32 v100, v9, v24
	v_dual_fmac_f32 v105, v194, v20 :: v_dual_fmac_f32 v104, v195, v21
	v_dual_fmac_f32 v103, v196, v22 :: v_dual_fmac_f32 v96, v7, v12
	v_dual_fmac_f32 v99, v8, v11 :: v_dual_fmac_f32 v94, v5, v14
	v_dual_fmac_f32 v95, v6, v13 :: v_dual_fmac_f32 v98, v3, v26
	v_dual_fmac_f32 v93, v4, v25 :: v_dual_fmac_f32 v92, v1, v28
	v_fmac_f32_e32 v97, v2, v27
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cbranch_scc0 .LBB0_10
.LBB0_6:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v211, 0
	.loc	1 1120 27 is_stmt 1             ; ragged.py:1120:27
	s_and_not1_b32 vcc_lo, exec_lo, s71
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v1, 0
	s_mov_b32 s55, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v35, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v37, v1
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v39, v1
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v41, v1
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v49, v1
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v52, v1
	v_mov_b32_e32 v53, v1
	v_mov_b32_e32 v54, v1
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v57, v1
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v64, v1
.LBB0_8:                                ; %.lr.ph
                                        ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1121 30 is_stmt 1             ; ragged.py:1121:30
	s_add_i32 s66, s55, s54
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_mov_b32 s50, s62
	.loc	1 1130 46                       ; ragged.py:1130:46
	s_add_i32 s67, s66, s72
	.loc	1 1131 46                       ; ragged.py:1131:46
	s_add_i32 s66, s66, s73
	.loc	1 1130 46                       ; ragged.py:1130:46
	v_add_nc_u32_e32 v180, s67, v65
	v_add_nc_u32_e32 v182, s67, v160
	v_add_nc_u32_e32 v184, s67, v161
	v_add_nc_u32_e32 v186, s67, v68
	v_add_nc_u32_e32 v181, s67, v159
	v_add_nc_u32_e32 v183, s67, v66
	v_add_nc_u32_e32 v185, s67, v67
	v_add_nc_u32_e32 v187, s67, v69
	v_add_nc_u32_e32 v212, s66, v84
	v_add_nc_u32_e32 v213, s66, v85
	v_add_nc_u32_e32 v214, s66, v86
	v_add_nc_u32_e32 v215, s66, v87
	v_add_nc_u32_e32 v216, s66, v88
	v_add_nc_u32_e32 v217, s66, v89
	v_add_nc_u32_e32 v218, s66, v90
	v_add_nc_u32_e32 v219, s66, v91
	.loc	1 1131 46                       ; ragged.py:1131:46
	v_add_nc_u32_e32 v188, s66, v65
	v_add_nc_u32_e32 v189, s66, v159
	v_add_nc_u32_e32 v190, s66, v160
	v_add_nc_u32_e32 v191, s66, v66
	v_add_nc_u32_e32 v192, s66, v161
	v_add_nc_u32_e32 v193, s66, v67
	v_add_nc_u32_e32 v194, s66, v68
	v_add_nc_u32_e32 v195, s66, v69
	v_add_nc_u32_e32 v196, s66, v162
	v_add_nc_u32_e32 v197, s66, v70
	v_add_nc_u32_e32 v198, s66, v71
	v_add_nc_u32_e32 v199, s66, v72
	v_add_nc_u32_e32 v200, s66, v73
	v_add_nc_u32_e32 v201, s66, v74
	v_add_nc_u32_e32 v202, s66, v75
	v_add_nc_u32_e32 v203, s66, v76
	v_add_nc_u32_e32 v204, s66, v165
	v_add_nc_u32_e32 v205, s66, v77
	v_add_nc_u32_e32 v206, s66, v78
	v_add_nc_u32_e32 v207, s66, v79
	v_add_nc_u32_e32 v208, s66, v80
	v_add_nc_u32_e32 v209, s66, v81
	v_add_nc_u32_e32 v210, s66, v82
	v_add_nc_u32_e32 v211, s66, v83
	.loc	1 1130 38                       ; ragged.py:1130:38
	v_cndmask_b32_e64 v180, 0x80000000, v180, s0
	v_cndmask_b32_e64 v182, 0x80000000, v182, s6
	v_cndmask_b32_e64 v184, 0x80000000, v184, s8
	v_cndmask_b32_e64 v186, 0x80000000, v186, s10
	v_cndmask_b32_e64 v181, 0x80000000, v181, s1
	v_cndmask_b32_e64 v183, 0x80000000, v183, s7
	v_cndmask_b32_e64 v185, 0x80000000, v185, s9
	v_cndmask_b32_e64 v187, 0x80000000, v187, s11
	.loc	1 1131 38                       ; ragged.py:1131:38
	v_cndmask_b32_e64 v212, 0x80000000, v212, s37
	v_cndmask_b32_e64 v213, 0x80000000, v213, s38
	v_cndmask_b32_e64 v214, 0x80000000, v214, s39
	v_cndmask_b32_e64 v215, 0x80000000, v215, s40
	v_cndmask_b32_e64 v216, 0x80000000, v216, s41
	v_cndmask_b32_e64 v217, 0x80000000, v217, s42
	v_cndmask_b32_e64 v218, 0x80000000, v218, s43
	v_cndmask_b32_e64 v219, 0x80000000, v219, s44
	s_mov_b32 s51, s63
	v_cndmask_b32_e64 v188, 0x80000000, v188, s12
	v_cndmask_b32_e64 v189, 0x80000000, v189, s13
	v_cndmask_b32_e64 v190, 0x80000000, v190, s14
	v_cndmask_b32_e64 v191, 0x80000000, v191, s15
	v_cndmask_b32_e64 v192, 0x80000000, v192, s16
	v_cndmask_b32_e64 v193, 0x80000000, v193, s17
	v_cndmask_b32_e64 v194, 0x80000000, v194, s18
	v_cndmask_b32_e64 v195, 0x80000000, v195, s19
	v_cndmask_b32_e64 v196, 0x80000000, v196, s20
	v_cndmask_b32_e64 v197, 0x80000000, v197, s21
	v_cndmask_b32_e64 v198, 0x80000000, v198, s22
	v_cndmask_b32_e64 v199, 0x80000000, v199, s23
	v_cndmask_b32_e64 v200, 0x80000000, v200, s24
	v_cndmask_b32_e64 v201, 0x80000000, v201, s25
	v_cndmask_b32_e64 v202, 0x80000000, v202, s26
	v_cndmask_b32_e64 v203, 0x80000000, v203, s27
	v_cndmask_b32_e64 v204, 0x80000000, v204, s28
	v_cndmask_b32_e64 v205, 0x80000000, v205, s29
	v_cndmask_b32_e64 v206, 0x80000000, v206, s30
	v_cndmask_b32_e64 v207, 0x80000000, v207, s31
	v_cndmask_b32_e64 v208, 0x80000000, v208, s33
	v_cndmask_b32_e64 v209, 0x80000000, v209, s34
	v_cndmask_b32_e64 v210, 0x80000000, v210, s35
	v_cndmask_b32_e64 v211, 0x80000000, v211, s36
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_clause 0x7
	buffer_load_u8 v180, v180, s[60:63], 0 offen
	buffer_load_u8 v182, v182, s[60:63], 0 offen
	buffer_load_u8 v184, v184, s[60:63], 0 offen
	buffer_load_u8 v186, v186, s[60:63], 0 offen
	buffer_load_u8 v187, v187, s[60:63], 0 offen
	buffer_load_u8 v185, v185, s[60:63], 0 offen
	buffer_load_u8 v183, v183, s[60:63], 0 offen
	buffer_load_u8 v181, v181, s[60:63], 0 offen
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_clause 0x1f
	buffer_load_u8 v220, v188, s[48:51], 0 offen
	buffer_load_u8 v221, v190, s[48:51], 0 offen
	buffer_load_u8 v222, v192, s[48:51], 0 offen
	buffer_load_u8 v223, v194, s[48:51], 0 offen
	buffer_load_u8 v224, v196, s[48:51], 0 offen
	buffer_load_u8 v225, v198, s[48:51], 0 offen
	buffer_load_u8 v226, v200, s[48:51], 0 offen
	buffer_load_u8 v227, v202, s[48:51], 0 offen
	buffer_load_u8 v228, v204, s[48:51], 0 offen
	buffer_load_u8 v229, v206, s[48:51], 0 offen
	buffer_load_u8 v230, v208, s[48:51], 0 offen
	buffer_load_u8 v231, v210, s[48:51], 0 offen
	buffer_load_u8 v212, v212, s[48:51], 0 offen
	buffer_load_u8 v214, v214, s[48:51], 0 offen
	buffer_load_u8 v216, v216, s[48:51], 0 offen
	buffer_load_u8 v218, v218, s[48:51], 0 offen
	buffer_load_u8 v232, v195, s[48:51], 0 offen
	buffer_load_u8 v233, v193, s[48:51], 0 offen
	buffer_load_u8 v234, v191, s[48:51], 0 offen
	buffer_load_u8 v235, v189, s[48:51], 0 offen
	buffer_load_u8 v236, v203, s[48:51], 0 offen
	buffer_load_u8 v237, v201, s[48:51], 0 offen
	buffer_load_u8 v238, v199, s[48:51], 0 offen
	buffer_load_u8 v239, v197, s[48:51], 0 offen
	buffer_load_u8 v240, v211, s[48:51], 0 offen
	buffer_load_u8 v241, v209, s[48:51], 0 offen
	buffer_load_u8 v242, v207, s[48:51], 0 offen
	buffer_load_u8 v243, v205, s[48:51], 0 offen
	buffer_load_u8 v219, v219, s[48:51], 0 offen
	buffer_load_u8 v217, v217, s[48:51], 0 offen
	buffer_load_u8 v215, v215, s[48:51], 0 offen
	buffer_load_u8 v213, v213, s[48:51], 0 offen
	.loc	1 1130 38                       ; ragged.py:1130:38
	v_add_nc_u32_e32 v244, 0, v163
	v_add_nc_u32_e32 v188, 0, v164
	.loc	1 1131 38                       ; ragged.py:1131:38
	v_add_nc_u32_e32 v245, 0, v166
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1142 25                       ; ragged.py:1142:25
	s_add_i32 s50, s55, 32
	.loc	1 1120 27                       ; ragged.py:1120:27
	s_cmp_lt_i32 s55, 0
	s_mov_b32 s55, s50
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_waitcnt vmcnt(39)
	ds_store_b8 v244, v180
	s_waitcnt vmcnt(38)
	ds_store_b8 v244, v182 offset:512
	s_waitcnt vmcnt(37)
	ds_store_b8 v244, v184 offset:1024
	s_waitcnt vmcnt(36)
	ds_store_b8 v244, v186 offset:1536
	s_waitcnt vmcnt(32)
	ds_store_b8 v171, v181
	ds_store_b8 v171, v183 offset:512
	ds_store_b8 v171, v185 offset:1024
	ds_store_b8 v171, v187 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[180:183], v188 offset1:1
	ds_load_2addr_stride64_b64 v[184:187], v188 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[188:191], v172 offset1:1
	ds_load_2addr_stride64_b64 v[192:195], v172 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[196:199], v173 offset1:1
	ds_load_2addr_stride64_b64 v[200:203], v173 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[204:207], v174 offset1:1
	ds_load_2addr_stride64_b64 v[208:211], v174 offset0:2 offset1:3
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(31)
	ds_store_b8 v244, v220
	s_waitcnt vmcnt(30)
	ds_store_b8 v244, v221 offset:512
	s_waitcnt vmcnt(29)
	ds_store_b8 v244, v222 offset:1024
	s_waitcnt vmcnt(28)
	ds_store_b8 v244, v223 offset:1536
	s_waitcnt vmcnt(27)
	ds_store_b8 v244, v224 offset:2048
	s_waitcnt vmcnt(26)
	ds_store_b8 v244, v225 offset:2560
	s_waitcnt vmcnt(25)
	ds_store_b8 v244, v226 offset:3072
	s_waitcnt vmcnt(24)
	ds_store_b8 v244, v227 offset:3584
	s_waitcnt vmcnt(23)
	ds_store_b8 v244, v228 offset:4096
	s_waitcnt vmcnt(22)
	ds_store_b8 v244, v229 offset:4608
	s_waitcnt vmcnt(21)
	ds_store_b8 v244, v230 offset:5120
	s_waitcnt vmcnt(20)
	ds_store_b8 v244, v231 offset:5632
	s_waitcnt vmcnt(19)
	ds_store_b8 v244, v212 offset:6144
	s_waitcnt vmcnt(18)
	ds_store_b8 v244, v214 offset:6656
	s_waitcnt vmcnt(17)
	ds_store_b8 v244, v216 offset:7168
	s_waitcnt vmcnt(16)
	ds_store_b8 v244, v218 offset:7680
	s_waitcnt vmcnt(12)
	ds_store_b8 v171, v235
	ds_store_b8 v171, v234 offset:512
	ds_store_b8 v171, v233 offset:1024
	ds_store_b8 v171, v232 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v171, v239 offset:2048
	ds_store_b8 v171, v238 offset:2560
	ds_store_b8 v171, v237 offset:3072
	ds_store_b8 v171, v236 offset:3584
	s_waitcnt vmcnt(4)
	ds_store_b8 v171, v243 offset:4096
	ds_store_b8 v171, v242 offset:4608
	ds_store_b8 v171, v241 offset:5120
	ds_store_b8 v171, v240 offset:5632
	s_waitcnt vmcnt(0)
	ds_store_b8 v171, v213 offset:6144
	ds_store_b8 v171, v215 offset:6656
	ds_store_b8 v171, v217 offset:7168
	ds_store_b8 v171, v219 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[212:215], v245 offset1:8
	ds_load_2addr_stride64_b64 v[216:219], v175 offset1:8
	ds_load_2addr_stride64_b64 v[220:223], v176 offset1:8
	ds_load_2addr_stride64_b64 v[224:227], v177 offset1:8
	.loc	1 1132 35                       ; ragged.py:1132:35
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[212:213], v[180:181], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[214:215], v[180:181], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[212:213], v[182:183], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[214:215], v[182:183], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[212:213], v[184:185], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[214:215], v[184:185], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[212:213], v[186:187], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[214:215], v[186:187], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[216:217], v[188:189], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[218:219], v[188:189], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[216:217], v[190:191], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[218:219], v[190:191], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[216:217], v[192:193], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[218:219], v[192:193], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[216:217], v[194:195], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[218:219], v[194:195], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[220:221], v[196:197], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[222:223], v[196:197], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[220:221], v[198:199], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[222:223], v[198:199], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[220:221], v[200:201], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[222:223], v[200:201], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[220:221], v[202:203], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[222:223], v[202:203], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[224:225], v[204:205], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[226:227], v[204:205], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[224:225], v[206:207], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[226:227], v[206:207], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[224:225], v[208:209], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[226:227], v[208:209], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[224:225], v[210:211], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[226:227], v[210:211], v[57:64] neg_lo:[1,1,0]
	.loc	1 1120 27                       ; ragged.py:1120:27
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1204 27                       ; ragged.py:1204:27
	v_cvt_f32_i32_e32 v211, v1
	v_cvt_f32_i32_e32 v210, v2
	v_cvt_f32_i32_e32 v209, v3
	v_cvt_f32_i32_e32 v208, v4
	v_cvt_f32_i32_e32 v207, v5
	v_cvt_f32_i32_e32 v206, v6
	v_cvt_f32_i32_e32 v205, v7
	v_cvt_f32_i32_e32 v204, v8
	v_cvt_f32_i32_e32 v203, v9
	v_cvt_f32_i32_e32 v202, v10
	v_cvt_f32_i32_e32 v201, v11
	v_cvt_f32_i32_e32 v200, v12
	v_cvt_f32_i32_e32 v199, v13
	v_cvt_f32_i32_e32 v198, v14
	v_cvt_f32_i32_e32 v197, v15
	v_cvt_f32_i32_e32 v196, v16
	v_cvt_f32_i32_e32 v195, v17
	v_cvt_f32_i32_e32 v194, v18
	v_cvt_f32_i32_e32 v193, v19
	v_cvt_f32_i32_e32 v192, v20
	v_cvt_f32_i32_e32 v191, v21
	v_cvt_f32_i32_e32 v190, v22
	v_cvt_f32_i32_e32 v189, v23
	v_cvt_f32_i32_e32 v188, v24
	v_cvt_f32_i32_e32 v187, v25
	v_cvt_f32_i32_e32 v186, v26
	v_cvt_f32_i32_e32 v185, v27
	v_cvt_f32_i32_e32 v184, v28
	v_cvt_f32_i32_e32 v183, v29
	v_cvt_f32_i32_e32 v182, v30
	v_cvt_f32_i32_e32 v181, v31
	v_cvt_f32_i32_e32 v180, v32
	v_cvt_f32_i32_e32 v32, v33
	v_cvt_f32_i32_e32 v31, v34
	v_cvt_f32_i32_e32 v30, v35
	v_cvt_f32_i32_e32 v29, v36
	v_cvt_f32_i32_e32 v28, v37
	v_cvt_f32_i32_e32 v27, v38
	v_cvt_f32_i32_e32 v26, v39
	v_cvt_f32_i32_e32 v25, v40
	v_cvt_f32_i32_e32 v24, v41
	v_cvt_f32_i32_e32 v23, v42
	v_cvt_f32_i32_e32 v22, v43
	v_cvt_f32_i32_e32 v21, v44
	v_cvt_f32_i32_e32 v20, v45
	v_cvt_f32_i32_e32 v19, v46
	v_cvt_f32_i32_e32 v18, v47
	v_cvt_f32_i32_e32 v17, v48
	v_cvt_f32_i32_e32 v16, v49
	v_cvt_f32_i32_e32 v15, v50
	v_cvt_f32_i32_e32 v14, v51
	v_cvt_f32_i32_e32 v13, v52
	v_cvt_f32_i32_e32 v12, v53
	v_cvt_f32_i32_e32 v11, v54
	v_cvt_f32_i32_e32 v10, v55
	v_cvt_f32_i32_e32 v9, v56
	v_cvt_f32_i32_e32 v8, v57
	v_cvt_f32_i32_e32 v7, v58
	v_cvt_f32_i32_e32 v6, v59
	v_cvt_f32_i32_e32 v5, v60
	v_cvt_f32_i32_e32 v4, v61
	v_cvt_f32_i32_e32 v3, v62
	v_cvt_f32_i32_e32 v2, v63
	v_cvt_f32_i32_e32 v1, v64
	s_branch .LBB0_5
.LBB0_10:                               ; %._crit_edge48
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_lshrrev_b32_e32 v0, 4, v0
	v_lshrrev_b32_e32 v1, 1, v130
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_mul_i32 s3, s70, s69
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	.loc	1 1004 36 is_stmt 1             ; ragged.py:1004:36
	v_and_or_b32 v3, v0, 1, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v4, 0x8e, v3
	v_or_b32_e32 v7, 0x88, v3
	v_or_b32_e32 v8, 0x86, v3
	v_or_b32_e32 v6, 0x8a, v3
	v_or_b32_e32 v5, 0x8c, v3
	v_or_b32_e32 v9, 0x84, v3
	v_or_b32_e32 v10, 0x82, v3
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v0, s47, v4
	v_or_b32_e32 v11, s47, v7
	v_or_b32_e32 v12, s47, v8
	v_or_b32_e32 v2, s47, v6
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v14, 12, v3
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v1, s47, v5
	v_or_b32_e32 v13, s47, v9
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s69, v0
	v_cmp_gt_i32_e64 s6, s69, v11
	v_cmp_gt_i32_e64 s7, s69, v12
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v0, s47, v10
	.loc	1 1004 36 is_stmt 0             ; ragged.py:1004:36
	v_or_b32_e32 v11, 0x80, v3
	v_or_b32_e32 v12, 14, v3
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s69, v2
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v2, s47, v14
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s0, s69, v1
	v_cmp_gt_i32_e64 s8, s69, v13
	v_cmp_gt_i32_e64 s9, s69, v0
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v0, s47, v11
	v_or_b32_e32 v1, s47, v12
	.loc	1 1004 36 is_stmt 0             ; ragged.py:1004:36
	v_or_b32_e32 v13, 10, v3
	v_or_b32_e32 v15, 8, v3
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s12, s69, v2
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_mul_lo_u32 v2, s69, v101
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s10, s69, v0
	v_cmp_gt_i32_e64 s11, s69, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v0, s47, v13
	v_or_b32_e32 v1, s47, v15
	.loc	1 1004 36 is_stmt 0             ; ragged.py:1004:36
	v_or_b32_e32 v16, 6, v3
	v_or_b32_e32 v18, 2, v3
	v_or_b32_e32 v17, 4, v3
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v21, s47, v3
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s13, s69, v0
	v_cmp_gt_i32_e64 s14, s69, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v1, s47, v16
	v_or_b32_e32 v20, s47, v18
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_add3_u32 v0, s3, s47, v2
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v19, s47, v17
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s17, s69, v21
	v_cmp_gt_i32_e64 s3, s69, v1
	v_cmp_gt_i32_e64 s16, s69, v20
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v1, v0, v3, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s15, s69, v19
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v0, v18, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s18, s5, s17
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v21, v0, v17, 2
	v_cndmask_b32_e64 v22, 0x80000000, v1, s18
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s18, s5, s16
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_lshl_add_u32 v19, s69, 4, v0
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	v_cndmask_b32_e64 v23, 0x80000000, v2, s18
	.loc	1 1223 20 is_stmt 1             ; ragged.py:1223:20
	s_and_b32 s18, s5, s15
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_mad_u64_u32 v[1:2], null, s69, 48, v[0:1]
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	v_cndmask_b32_e64 v21, 0x80000000, v21, s18
	v_add_lshl_u32 v2, v0, v16, 2
	s_clause 0x2
	buffer_store_b32 v157, v22, s[56:59], 0 offen
	buffer_store_b32 v156, v23, s[56:59], 0 offen
	buffer_store_b32 v155, v21, s[56:59], 0 offen
	v_add_lshl_u32 v21, v0, v15, 2
	.loc	1 1223 20 is_stmt 1             ; ragged.py:1223:20
	s_and_b32 s18, s5, s3
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v22, v0, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s18
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s18, s5, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v23, v0, v14, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s18
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s18, s5, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v154, v2, s[56:59], 0 offen
	buffer_store_b32 v153, v21, s[56:59], 0 offen
	v_add_lshl_u32 v2, v0, v12, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s18
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s18, s5, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v21, v0, v11, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s18
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s18, s5, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v152, v22, s[56:59], 0 offen
	buffer_store_b32 v151, v23, s[56:59], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s18
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s18, s5, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v22, v0, v10, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s18
	v_add_lshl_u32 v23, v0, v9, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s18, s5, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v150, v2, s[56:59], 0 offen
	buffer_store_b32 v149, v21, s[56:59], 0 offen
	v_add_lshl_u32 v2, v0, v8, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s18
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s18, s5, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v21, v0, v7, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s18
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s18, s5, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v148, v22, s[56:59], 0 offen
	buffer_store_b32 v147, v23, s[56:59], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s18
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s18, s5, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v22, v0, v6, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s18
	.loc	1 1239 26 is_stmt 0             ; ragged.py:1239:26
	v_lshl_add_u32 v20, s69, 5, v0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v23, v0, v5, 2
	v_add_lshl_u32 v0, v0, v4, 2
	.loc	1 1223 20 is_stmt 1             ; ragged.py:1223:20
	s_and_b32 s18, s5, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v146, v2, s[56:59], 0 offen
	buffer_store_b32 v145, v21, s[56:59], 0 offen
	v_add_lshl_u32 v2, v19, v3, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s18
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s18, s5, s0
	s_and_b32 s5, s5, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v23, 0x80000000, v23, s18
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s5, s4, s17
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v21, v19, v18, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	s_clause 0x1
	buffer_store_b32 v144, v22, s[56:59], 0 offen
	buffer_store_b32 v143, v23, s[56:59], 0 offen
	v_add_lshl_u32 v22, v19, v17, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s5, s4, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v142, v0, s[56:59], 0 offen
	buffer_store_b32 v141, v2, s[56:59], 0 offen
	v_add_lshl_u32 v0, v19, v16, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s5, s4, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v19, v15, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s5, s4, s3
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v140, v21, s[56:59], 0 offen
	buffer_store_b32 v139, v22, s[56:59], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s5, s4, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v21, v19, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	v_add_lshl_u32 v22, v19, v14, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s5, s4, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v138, v0, s[56:59], 0 offen
	buffer_store_b32 v137, v2, s[56:59], 0 offen
	v_add_lshl_u32 v0, v19, v12, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s5, s4, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v19, v11, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s5, s4, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v136, v21, s[56:59], 0 offen
	buffer_store_b32 v135, v22, s[56:59], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s5, s4, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v21, v19, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	v_add_lshl_u32 v22, v19, v9, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s5, s4, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v134, v0, s[56:59], 0 offen
	buffer_store_b32 v133, v2, s[56:59], 0 offen
	v_add_lshl_u32 v0, v19, v8, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s5, s4, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v19, v7, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s5, s4, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v132, v21, s[56:59], 0 offen
	buffer_store_b32 v131, v22, s[56:59], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s5, s4, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v21, v19, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	v_add_lshl_u32 v22, v19, v5, 2
	s_clause 0x1
	buffer_store_b32 v129, v0, s[56:59], 0 offen
	buffer_store_b32 v128, v2, s[56:59], 0 offen
	v_add_lshl_u32 v0, v19, v4, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s5, s4, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v20, v3, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s5, s4, s0
	s_and_b32 s4, s4, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s46, s17
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v19, v20, v18, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	s_clause 0x1
	buffer_store_b32 v127, v21, s[56:59], 0 offen
	buffer_store_b32 v126, v22, s[56:59], 0 offen
	v_add_lshl_u32 v21, v20, v17, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s46, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v125, v0, s[56:59], 0 offen
	buffer_store_b32 v124, v2, s[56:59], 0 offen
	v_add_lshl_u32 v0, v20, v16, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s46, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v20, v15, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s46, s3
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v123, v19, s[56:59], 0 offen
	buffer_store_b32 v122, v21, s[56:59], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s46, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v19, v20, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_add_lshl_u32 v21, v20, v14, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s46, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v121, v0, s[56:59], 0 offen
	buffer_store_b32 v120, v2, s[56:59], 0 offen
	v_add_lshl_u32 v0, v20, v12, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s46, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v20, v11, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s46, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v119, v19, s[56:59], 0 offen
	buffer_store_b32 v118, v21, s[56:59], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s46, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v19, v20, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_add_lshl_u32 v21, v20, v9, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s46, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v117, v0, s[56:59], 0 offen
	buffer_store_b32 v116, v2, s[56:59], 0 offen
	v_add_lshl_u32 v0, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s46, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s46, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v115, v19, s[56:59], 0 offen
	buffer_store_b32 v114, v21, s[56:59], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s46, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v19, v20, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_add_lshl_u32 v21, v20, v5, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s46, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v113, v0, s[56:59], 0 offen
	buffer_store_b32 v112, v2, s[56:59], 0 offen
	v_add_lshl_u32 v0, v20, v4, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s46, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v1, v3, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s46, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v3, v1, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s2, s17
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v17, v1, v17, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s2, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v111, v19, s[56:59], 0 offen
	buffer_store_b32 v110, v21, s[56:59], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s4, s2, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v109, v0, s[56:59], 0 offen
	buffer_store_b32 v108, v2, s[56:59], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v17, s4
	v_add_lshl_u32 v0, v1, v16, 2
	v_add_lshl_u32 v2, v1, v15, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s3
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v107, v3, s[56:59], 0 offen
	buffer_store_b32 v106, v17, s[56:59], 0 offen
	v_add_lshl_u32 v3, v1, v13, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v13, v1, v14, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v105, v0, s[56:59], 0 offen
	buffer_store_b32 v104, v2, s[56:59], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v0, v1, v12, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	v_add_lshl_u32 v2, v1, v11, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v103, v3, s[56:59], 0 offen
	buffer_store_b32 v102, v13, s[56:59], 0 offen
	v_add_lshl_u32 v3, v1, v10, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v9, v1, v9, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v100, v0, s[56:59], 0 offen
	buffer_store_b32 v99, v2, s[56:59], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v0, v1, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_add_lshl_u32 v2, v1, v7, 2
	s_clause 0x1
	buffer_store_b32 v96, v3, s[56:59], 0 offen
	buffer_store_b32 v95, v9, s[56:59], 0 offen
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v3, v1, v6, 2
	v_add_lshl_u32 v5, v1, v5, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v1, v1, v4, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s2, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, s2, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v4, 0x80000000, v5, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b32 v94, v0, s[56:59], 0 offen
	buffer_store_b32 v93, v2, s[56:59], 0 offen
	buffer_store_b32 v98, v3, s[56:59], 0 offen
	buffer_store_b32 v97, v4, s[56:59], 0 offen
	buffer_store_b32 v92, v1, s[56:59], 0 offen
	.loc	1 970 5                         ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 246
		.amdhsa_next_free_sgpr 74
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 246
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 74
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8312
; TotalNumSgprs: 76
; NumVgprs: 246
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 76
; NumVGPRsForWavesPerEU: 246
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
	.byte	1                               ; Abbrev [1] 0xb:0x52 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x2c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	995                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	996                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
      - .offset:         60
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     76
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     246
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
