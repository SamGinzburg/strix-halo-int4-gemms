	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[30:31], s[0:1], 0x5c
	v_mov_b32_e32 v104, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v105, 15, v104
	v_lshlrev_b32_e32 v11, 4, v104
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s4, s4, 24
	s_add_i32 s3, s3, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s3, s3, 8
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_rcp_iflag_f32_e32 v0, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v0
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s5
	s_mul_hi_u32 s6, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s8, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s4, s31, s8
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s8, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s9, s4, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s10, s9
	s_cvt_f32_u32 s4, s10
	s_sub_i32 s5, 0, s10
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s4
	v_readfirstlane_b32 s4, v0
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s5, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s4, s5
	s_abs_i32 s5, s2
	s_add_i32 s4, s4, s3
	s_mul_hi_u32 s3, s5, s4
	s_xor_b32 s4, s2, s9
	s_mul_i32 s6, s3, s10
	s_ashr_i32 s11, s4, 31
	s_sub_i32 s12, s5, s6
	s_add_i32 s13, s3, 1
	s_sub_i32 s14, s12, s10
	s_cmp_ge_u32 s12, s10
	s_load_b128 s[4:7], s[0:1], 0x28
	s_cselect_b32 s3, s13, s3
	s_cselect_b32 s12, s14, s12
	s_add_i32 s13, s3, 1
	s_cmp_ge_u32 s12, s10
	s_cselect_b32 s3, s13, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s3, s3, s11
	s_sub_i32 s31, s3, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s31, s9
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s8
	s_load_b64 s[8:9], s[0:1], 0x38
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[2:3], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s2
	s_addc_u32 s5, s5, s3
	s_load_b64 s[24:25], s[4:5], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s4, s6, s2
	s_addc_u32 s5, s7, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s6, s8, s2
	s_addc_u32 s7, s9, s3
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s30, 0
	s_mov_b32 s8, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 4, v104
	s_branch .LBB0_3
.Ltmp4:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow628
	s_load_b128 s[20:23], s[0:1], 0x40
	s_load_b64 s[26:27], s[4:5], 0x0
	s_load_b64 s[28:29], s[6:7], 0x0
	v_dual_mov_b32 v87, 0 :: v_dual_and_b32 v106, 0xf0, v104
	v_dual_mov_b32 v102, 0 :: v_dual_lshlrev_b32 v107, 4, v105
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v84, 3, v104
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v243, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v255, 0
	v_mov_b32_e32 v250, 0
	v_mov_b32_e32 v254, 0
	v_mov_b32_e32 v140, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x2
	s_load_b64 s[4:5], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s9, s[0:1], 0x58
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v10, 2, v104
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s0, s24, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s25, 0, s0
	v_add_co_u32 v2, s0, s24, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_u32 v4, vcc_lo, v0, 16
	v_add_co_ci_u32_e64 v3, null, s25, 0, s0
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 32
	v_mov_b32_e32 v159, 0
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_add_u32 s0, s4, s2
	s_addc_u32 s1, s5, s3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v8, vcc_lo, v0, 48
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[10:11], s[0:1], 0x0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[26:27], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[28:29], v[0:1]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_add_nc_u32_e32 v0, s24, v105
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, 0, v1, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[26:27], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[28:29], v[2:3]
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v1, 16, v0
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v2, 32, v0
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v3, 48, v0
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v0, v0, s30
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s39, s31, 8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[26:27], v[6:7]
	v_or_b32_e32 v14, s39, v104
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[28:29], v[6:7]
	v_dual_mov_b32 v143, 0 :: v_dual_and_b32 v6, 0xe00, v11
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[26:27], v[4:5]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:296
	scratch_store_b32 off, v107, off offset:332
	v_mul_lo_u32 v0, v1, s30
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[28:29], v[4:5]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v160, 3, v106
	v_dual_mov_b32 v158, 0 :: v_dual_lshlrev_b32 v161, 3, v84
	v_dual_mov_b32 v138, 0 :: v_dual_lshlrev_b32 v13, 2, v106
	v_mov_b32_e32 v151, 0
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:300
	scratch_store_b32 off, v84, off offset:336
	scratch_store_b32 off, v104, off offset:320
	v_mul_lo_u32 v0, v2, s30
	v_dual_mov_b32 v145, 0 :: v_dual_lshlrev_b32 v2, 5, v105
	v_mov_b32_e32 v142, 0
	v_lshrrev_b32_e32 v1, 1, v104
	v_xor_b32_e32 v5, v161, v160
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v141, 0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:304
	scratch_store_b32 off, v11, off offset:340
	scratch_store_b32 off, v105, off offset:324
	v_mul_lo_u32 v0, v3, s30
	v_lshlrev_b32_e32 v11, 5, v104
	v_dual_mov_b32 v144, 0 :: v_dual_lshlrev_b32 v3, 3, v104
	v_and_b32_e32 v1, 24, v1
	v_lshl_or_b32 v147, v105, 9, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v11, 32, v11
	v_mov_b32_e32 v253, 0
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:308
	scratch_store_b32 off, v106, off offset:328
	v_lshlrev_b32_e32 v0, 1, v104
	v_add3_u32 v11, 0, v13, v11
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[26:27], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[28:29], v[8:9]
	v_xor_b32_e32 v7, 0x198, v147
	v_xor_b32_e32 v4, v0, v10
	v_and_or_b32 v146, v0, 24, v2
	v_and_b32_e32 v0, 28, v0
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v10, s24, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v4, 24, v4
	v_xor_b32_e32 v5, 16, v146
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v243, 0 :: v_dual_add_nc_u32 v0, v11, v0
	scratch_store_b32 off, v14, off offset:312 ; 4-byte Folded Spill
	v_or3_b32 v148, v6, v4, v2
	v_xor_b32_e32 v2, 24, v146
	v_xor_b32_e32 v4, 0x88, v147
	v_xor_b32_e32 v6, 0x110, v147
	v_dual_mov_b32 v140, 0 :: v_dual_lshlrev_b32 v13, 1, v106
	v_xor_b32_e32 v8, 8, v148
	v_xor_b32_e32 v9, 16, v148
	v_xor_b32_e32 v12, 24, v148
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_xor_b32_e32 v1, v3, v1
	v_xor_b32_e32 v3, 8, v146
	.loc	1 1049 17 is_stmt 1             ; ragged.py:1049:17
	s_lshl_b32 s34, s33, 1
	v_mul_lo_u32 v149, v10, s9
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s4, s34, s9
	v_dual_mov_b32 v249, 0 :: v_dual_add_nc_u32 v154, 0, v1
	v_dual_mov_b32 v254, 0 :: v_dual_add_nc_u32 v155, 0, v3
	v_dual_mov_b32 v255, 0 :: v_dual_add_nc_u32 v166, 0, v5
	v_dual_mov_b32 v250, 0 :: v_dual_add_nc_u32 v167, 0, v2
	v_dual_mov_b32 v251, 0 :: v_dual_add_nc_u32 v168, 0, v4
	v_dual_mov_b32 v247, 0 :: v_dual_add_nc_u32 v156, 0, v6
	v_dual_mov_b32 v248, 0 :: v_dual_add_nc_u32 v157, 0, v7
	v_dual_mov_b32 v246, 0 :: v_dual_add_nc_u32 v169, 0, v8
	v_dual_mov_b32 v245, 0 :: v_dual_add_nc_u32 v162, 0, v9
	v_dual_mov_b32 v244, 0 :: v_dual_add_nc_u32 v163, 0, v12
	v_dual_mov_b32 v241, 0 :: v_dual_add_nc_u32 v174, 0, v13
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v102, 0
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v137, s39, v107
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s2, s2, s7
	s_and_b32 s3, s6, s8
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s35, s4, s10
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s5
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s36, s30, s10
	.loc	1 1180 33                       ; ragged.py:1180:33
	s_mov_b32 s37, 0
	s_add_u32 s38, s35, s33
	s_mov_b32 s4, s12
	s_mov_b32 s5, s13
	s_mov_b32 s8, s14
	s_mov_b32 s9, s15
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
	s_mov_b32 s12, s16
	s_mov_b32 s13, s17
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 33 is_stmt 0                ; ragged.py:0:33
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v190, off offset:292
	scratch_store_b32 off, v189, off offset:288
	scratch_store_b32 off, v188, off offset:284
	scratch_store_b32 off, v187, off offset:280
	scratch_store_b32 off, v186, off offset:276
	scratch_store_b32 off, v185, off offset:272
	scratch_store_b32 off, v200, off offset:268
	scratch_store_b32 off, v199, off offset:264
	scratch_store_b32 off, v198, off offset:260
	scratch_store_b32 off, v197, off offset:256
	scratch_store_b32 off, v184, off offset:252
	scratch_store_b32 off, v177, off offset:248
	scratch_store_b32 off, v176, off offset:244
	scratch_store_b32 off, v175, off offset:240
	scratch_store_b32 off, v183, off offset:236
	scratch_store_b32 off, v182, off offset:232
	scratch_store_b32 off, v181, off offset:228
	scratch_store_b32 off, v172, off offset:224
	scratch_store_b32 off, v171, off offset:220
	scratch_store_b32 off, v170, off offset:216
	scratch_store_b32 off, v165, off offset:212
	scratch_store_b32 off, v164, off offset:208
	scratch_store_b32 off, v136, off offset:204
	scratch_store_b32 off, v135, off offset:200
	scratch_store_b32 off, v134, off offset:196
	scratch_store_b32 off, v133, off offset:192
	scratch_store_b32 off, v132, off offset:188
	scratch_store_b32 off, v131, off offset:184
	scratch_store_b32 off, v130, off offset:180
	scratch_store_b32 off, v129, off offset:176
	scratch_store_b32 off, v180, off offset:172
	scratch_store_b32 off, v179, off offset:168
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v178, off offset:164
	scratch_store_b32 off, v173, off offset:160
	scratch_store_b32 off, v128, off offset:156
	scratch_store_b32 off, v127, off offset:152
	scratch_store_b32 off, v126, off offset:148
	scratch_store_b32 off, v125, off offset:144
	scratch_store_b32 off, v124, off offset:140
	scratch_store_b32 off, v123, off offset:136
	scratch_store_b32 off, v122, off offset:132
	scratch_store_b32 off, v121, off offset:128
	scratch_store_b32 off, v120, off offset:124
	scratch_store_b32 off, v115, off offset:120
	scratch_store_b32 off, v99, off offset:116
	scratch_store_b32 off, v98, off offset:112
	scratch_store_b32 off, v114, off offset:108
	scratch_store_b32 off, v113, off offset:104
	scratch_store_b32 off, v112, off offset:100
	scratch_store_b32 off, v103, off offset:96
	scratch_store_b32 off, v97, off offset:92
	scratch_store_b32 off, v96, off offset:88
	scratch_store_b32 off, v95, off offset:84
	scratch_store_b32 off, v94, off offset:80
	scratch_store_b32 off, v119, off offset:76
	scratch_store_b32 off, v118, off offset:72
	scratch_store_b32 off, v117, off offset:68
	scratch_store_b32 off, v116, off offset:64
	scratch_store_b32 off, v93, off offset:60
	scratch_store_b32 off, v92, off offset:56
	scratch_store_b32 off, v91, off offset:52
	scratch_store_b32 off, v90, off offset:48
	scratch_store_b32 off, v111, off offset:44
	scratch_store_b32 off, v110, off offset:40
	s_clause 0x9                            ; 40-byte Folded Spill
	scratch_store_b32 off, v109, off offset:36
	scratch_store_b32 off, v108, off offset:32
	scratch_store_b32 off, v89, off offset:28
	scratch_store_b32 off, v88, off offset:24
	scratch_store_b32 off, v86, off offset:20
	scratch_store_b32 off, v85, off offset:16
	scratch_store_b32 off, v102, off offset:12
	scratch_store_b32 off, v87, off offset:8
	scratch_store_b32 off, v101, off offset:4
	scratch_store_b32 off, v100, off
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v159
	v_mov_b32_e32 v3, v159
	v_dual_mov_b32 v4, v159 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v5, v159
	v_dual_mov_b32 v6, v159 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v7, v159
	v_dual_mov_b32 v8, v159 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v10, v159 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v11, v159
	v_dual_mov_b32 v12, v159 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v13, v159
	v_dual_mov_b32 v14, v159 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v15, v159
	v_dual_mov_b32 v16, v159 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v18, v159 :: v_dual_mov_b32 v65, 0
	v_mov_b32_e32 v19, v159
	v_dual_mov_b32 v20, v159 :: v_dual_mov_b32 v73, 0
	v_mov_b32_e32 v21, v159
	v_dual_mov_b32 v22, v159 :: v_dual_mov_b32 v81, 0
	v_mov_b32_e32 v23, v159
	v_dual_mov_b32 v24, v159 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v26, v159 :: v_dual_mov_b32 v97, 0
	v_mov_b32_e32 v27, v159
	v_dual_mov_b32 v28, v159 :: v_dual_mov_b32 v105, 0
	v_mov_b32_e32 v29, v159
	v_dual_mov_b32 v30, v159 :: v_dual_mov_b32 v113, 0
	v_mov_b32_e32 v31, v159
	v_dual_mov_b32 v32, v159 :: v_dual_mov_b32 v121, 0
	v_mov_b32_e32 v34, v159
	v_mov_b32_e32 v35, v159
	v_mov_b32_e32 v36, v159
	v_mov_b32_e32 v37, v159
	v_mov_b32_e32 v38, v159
	v_mov_b32_e32 v39, v159
	v_mov_b32_e32 v40, v159
	v_mov_b32_e32 v42, v159
	v_mov_b32_e32 v43, v159
	v_mov_b32_e32 v44, v159
	v_mov_b32_e32 v45, v159
	v_mov_b32_e32 v46, v159
	v_mov_b32_e32 v47, v159
	v_mov_b32_e32 v48, v159
	v_mov_b32_e32 v50, v159
	v_mov_b32_e32 v51, v159
	v_mov_b32_e32 v52, v159
	v_mov_b32_e32 v53, v159
	v_mov_b32_e32 v54, v159
	v_mov_b32_e32 v55, v159
	v_mov_b32_e32 v56, v159
	v_mov_b32_e32 v58, v159
	v_mov_b32_e32 v59, v159
	v_mov_b32_e32 v60, v159
	v_mov_b32_e32 v61, v159
	v_mov_b32_e32 v62, v159
	v_mov_b32_e32 v63, v159
	v_mov_b32_e32 v64, v159
	v_mov_b32_e32 v66, v159
	v_mov_b32_e32 v67, v159
	v_mov_b32_e32 v68, v159
	v_mov_b32_e32 v69, v159
	v_mov_b32_e32 v70, v159
	v_mov_b32_e32 v71, v159
	v_mov_b32_e32 v72, v159
	v_mov_b32_e32 v74, v159
	v_mov_b32_e32 v75, v159
	v_mov_b32_e32 v76, v159
	v_mov_b32_e32 v77, v159
	v_mov_b32_e32 v78, v159
	v_mov_b32_e32 v79, v159
	v_mov_b32_e32 v80, v159
	v_mov_b32_e32 v82, v159
	v_mov_b32_e32 v83, v159
	v_mov_b32_e32 v84, v159
	v_mov_b32_e32 v85, v159
	v_mov_b32_e32 v86, v159
	v_mov_b32_e32 v87, v159
	v_mov_b32_e32 v88, v159
	v_mov_b32_e32 v90, v159
	v_mov_b32_e32 v91, v159
	v_mov_b32_e32 v92, v159
	v_mov_b32_e32 v93, v159
	v_mov_b32_e32 v94, v159
	v_mov_b32_e32 v95, v159
	v_mov_b32_e32 v96, v159
	v_mov_b32_e32 v98, v159
	v_mov_b32_e32 v99, v159
	v_mov_b32_e32 v100, v159
	v_mov_b32_e32 v101, v159
	v_mov_b32_e32 v102, v159
	v_mov_b32_e32 v103, v159
	v_mov_b32_e32 v104, v159
	v_mov_b32_e32 v106, v159
	v_mov_b32_e32 v107, v159
	v_mov_b32_e32 v108, v159
	v_mov_b32_e32 v109, v159
	v_mov_b32_e32 v110, v159
	v_mov_b32_e32 v111, v159
	v_mov_b32_e32 v112, v159
	v_mov_b32_e32 v114, v159
	v_mov_b32_e32 v115, v159
	v_mov_b32_e32 v116, v159
	v_mov_b32_e32 v117, v159
	v_mov_b32_e32 v118, v159
	v_mov_b32_e32 v119, v159
	v_mov_b32_e32 v120, v159
	v_mov_b32_e32 v122, v159
	v_mov_b32_e32 v123, v159
	v_mov_b32_e32 v124, v159
	v_mov_b32_e32 v125, v159
	v_mov_b32_e32 v126, v159
	v_mov_b32_e32 v127, v159
	v_mov_b32_e32 v128, v159
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s39, s37, 7
	s_mov_b32 s40, 0
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v130, 1, v160
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_add_i32 s41, s40, s39
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_add_nc_u32_e32 v211, 0, v148
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s41, v160
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_add_nc_u32_e32 v214, 0, v147
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s41, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[164:165], null, v129, s34, v[137:138]
	v_mad_u64_u32 v[170:171], null, v130, s34, v[137:138]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v129, s35, v164
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v179, s38, v164
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v133, s35, v170
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1
	buffer_load_b128 v[129:132], v129, s[8:11], 0 offen
	buffer_load_b128 v[133:136], v133, s[8:11], 0 offen
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v204, s38, v170
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(0)
	v_perm_b32 v165, v133, v129, 0x5010400
	v_perm_b32 v133, v133, v129, 0x7030602
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s41, v161
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_perm_b32 v171, v134, v130, 0x5010400
	v_perm_b32 v134, v134, v130, 0x7030602
	v_perm_b32 v172, v135, v131, 0x5010400
	v_perm_b32 v131, v135, v131, 0x7030602
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_add_nc_u32_e32 v129, v149, v129
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_perm_b32 v135, v136, v132, 0x5010400
	v_perm_b32 v132, v136, v132, 0x7030602
	.loc	1 1200 21                       ; ragged.py:1200:21
	s_add_i32 s41, s40, 32
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cmpk_lt_u32 s40, 0x60
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e32 v129, 0x80000000, v129, vcc_lo
	s_mov_b32 s40, s41
	buffer_load_b64 v[129:130], v129, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v154, v[129:130]
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshrrev_b32_e32 v129, 8, v165
	v_and_b16 v129.h, 0xff, v165.l
	v_lshrrev_b32_e32 v130, 24, v165
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshlrev_b16 v129.l, 8, v129.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v164.l, v129.h, v129.l
	v_and_b16 v129.l, 0xff, v165.h
	v_lshlrev_b16 v129.h, 8, v130.l
	v_lshrrev_b32_e32 v130, 24, v133
	v_or_b16 v164.h, v129.l, v129.h
	v_lshrrev_b32_e32 v129, 8, v133
	v_and_b16 v129.h, 0xff, v133.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v129.l, 8, v129.l
	v_or_b16 v165.l, v129.h, v129.l
	v_and_b16 v129.l, 0xff, v133.h
	v_lshlrev_b16 v129.h, 8, v130.l
	v_lshrrev_b32_e32 v130, 24, v171
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v165.h, v129.l, v129.h
	v_lshrrev_b32_e32 v129, 8, v171
	v_and_b16 v129.h, 0xff, v171.l
	v_lshlrev_b16 v129.l, 8, v129.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v194.l, v129.h, v129.l
	v_and_b16 v129.l, 0xff, v171.h
	v_lshlrev_b16 v129.h, 8, v130.l
	v_lshrrev_b32_e32 v130, 24, v134
	v_or_b16 v194.h, v129.l, v129.h
	v_lshrrev_b32_e32 v129, 8, v134
	v_and_b16 v129.h, 0xff, v134.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v129.l, 8, v129.l
	v_or_b16 v195.l, v129.h, v129.l
	v_and_b16 v129.l, 0xff, v134.h
	v_lshlrev_b16 v129.h, 8, v130.l
	v_lshrrev_b32_e32 v130, 24, v172
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v195.h, v129.l, v129.h
	v_lshrrev_b32_e32 v129, 8, v172
	v_and_b16 v129.h, 0xff, v172.l
	v_lshlrev_b16 v129.l, 8, v129.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v196.l, v129.h, v129.l
	v_and_b16 v129.l, 0xff, v172.h
	v_lshlrev_b16 v129.h, 8, v130.l
	v_lshrrev_b32_e32 v130, 24, v131
	v_or_b16 v196.h, v129.l, v129.h
	v_lshrrev_b32_e32 v129, 8, v131
	v_and_b16 v129.h, 0xff, v131.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v129.l, 8, v129.l
	v_or_b16 v197.l, v129.h, v129.l
	v_and_b16 v129.l, 0xff, v131.h
	v_lshlrev_b16 v129.h, 8, v130.l
	v_lshrrev_b32_e32 v130, 24, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v197.h, v129.l, v129.h
	v_lshrrev_b32_e32 v129, 8, v135
	v_and_b16 v129.h, 0xff, v135.l
	v_lshlrev_b16 v129.l, 8, v129.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v202.l, v129.h, v129.l
	v_and_b16 v129.l, 0xff, v135.h
	v_lshlrev_b16 v129.h, 8, v130.l
	v_lshrrev_b32_e32 v130, 24, v132
	v_or_b16 v202.h, v129.l, v129.h
	v_lshrrev_b32_e32 v129, 8, v132
	v_and_b16 v129.h, 0xff, v132.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v129.l, 8, v129.l
	v_or_b16 v203.l, v129.h, v129.l
	v_and_b16 v129.l, 0xff, v132.h
	v_lshlrev_b16 v129.h, 8, v130.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v203.h, v129.l, v129.h
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_add_nc_u32_e32 v129, 0, v146
	ds_load_2addr_stride64_b64 v[170:173], v129 offset1:1
	ds_load_2addr_stride64_b64 v[182:185], v129 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[175:178], v155 offset1:1
	ds_load_2addr_stride64_b64 v[190:193], v155 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[186:189], v166 offset1:1
	ds_load_2addr_stride64_b64 v[198:201], v166 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[133:136], v167 offset1:1
	ds_load_2addr_stride64_b64 v[129:132], v167 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v214, v164
	ds_store_b16_d16_hi v214, v164 offset:32
	ds_store_b16 v214, v165 offset:64
	ds_store_b16_d16_hi v214, v165 offset:96
	ds_store_b16 v168, v194
	ds_store_b16_d16_hi v168, v194 offset:32
	ds_store_b16 v168, v195 offset:64
	ds_store_b16_d16_hi v168, v195 offset:96
	ds_store_b16 v156, v196
	ds_store_b16_d16_hi v156, v196 offset:32
	ds_store_b16 v156, v197 offset:64
	ds_store_b16_d16_hi v156, v197 offset:96
	ds_store_b16 v157, v202
	ds_store_b16_d16_hi v157, v202 offset:32
	ds_store_b16 v157, v203 offset:64
	ds_store_b16_d16_hi v157, v203 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1
	buffer_load_b128 v[206:209], v179, s[8:11], 0 offen
	buffer_load_b128 v[194:197], v204, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_perm_b32 v165, v194, v206, 0x5010400
	v_perm_b32 v179, v194, v206, 0x7030602
	v_perm_b32 v215, v195, v207, 0x5010400
	v_perm_b32 v216, v195, v207, 0x7030602
	v_perm_b32 v217, v196, v208, 0x5010400
	v_perm_b32 v181, v196, v208, 0x7030602
	v_perm_b32 v180, v197, v209, 0x5010400
	v_perm_b32 v210, v197, v209, 0x7030602
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[194:197], v211 offset1:8
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_lshrrev_b32_e32 v164, 8, v165
	v_and_b16 v164.h, 0xff, v165.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v164.l, 8, v164.l
	v_or_b16 v164.l, v164.h, v164.l
	v_and_b16 v164.h, 0xff, v165.h
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[194:195], v[170:171], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[194:195], v[172:173], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[194:195], v[182:183], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[194:195], v[184:185], v[113:120] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_lshrrev_b32_e32 v194, 24, v165
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[73:80], v[196:197], v[170:171], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[196:197], v[172:173], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[196:197], v[182:183], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[196:197], v[184:185], v[121:128] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_lshlrev_b16 v165.l, 8, v194.l
	v_lshrrev_b32_e32 v194, 24, v179
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or_b16 v164.h, v164.h, v165.l
	v_lshrrev_b32_e32 v165, 8, v179
	v_and_b16 v165.h, 0xff, v179.l
	v_lshlrev_b16 v194.l, 8, v194.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v165.l, 8, v165.l
	v_or_b16 v165.l, v165.h, v165.l
	v_and_b16 v165.h, 0xff, v179.h
	v_lshrrev_b32_e32 v179, 24, v216
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b16 v165.h, v165.h, v194.l
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[194:197], v169 offset1:8
	ds_load_2addr_stride64_b64 v[206:209], v162 offset1:8
	ds_load_2addr_stride64_b64 v[202:205], v163 offset1:8
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v214, v164
	ds_store_b16_d16_hi v214, v164 offset:32
	ds_store_b16 v214, v165 offset:64
	ds_store_b16_d16_hi v214, v165 offset:96
	v_lshrrev_b32_e32 v164, 8, v215
	v_and_b16 v164.h, 0xff, v215.l
	v_lshrrev_b32_e32 v165, 24, v215
	v_lshlrev_b16 v214.l, 8, v179.l
	v_lshrrev_b32_e32 v179, 8, v217
	v_lshlrev_b16 v164.l, 8, v164.l
	v_and_b16 v214.h, 0xff, v217.l
	v_lshlrev_b16 v165.l, 8, v165.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or_b16 v164.l, v164.h, v164.l
	v_and_b16 v164.h, 0xff, v215.h
	v_and_b16 v215.h, 0xff, v181.l
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[65:72], v[194:195], v[175:176], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[196:197], v[175:176], v[73:80] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v164.h, v164.h, v165.l
	v_lshrrev_b32_e32 v165, 8, v216
	v_and_b16 v165.h, 0xff, v216.l
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[81:88], v[194:195], v[177:178], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[196:197], v[177:178], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[194:195], v[190:191], v[97:104] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_lshlrev_b16 v165.l, 8, v165.l
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[105:112], v[196:197], v[190:191], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[194:195], v[192:193], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[196:197], v[192:193], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[206:207], v[186:187], v[65:72] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v165.l, v165.h, v165.l
	v_and_b16 v165.h, 0xff, v216.h
	v_and_b16 v216.h, 0xff, v180.l
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[73:80], v[208:209], v[186:187], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[206:207], v[188:189], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[208:209], v[188:189], v[89:96] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v165.h, v165.h, v214.l
	v_lshlrev_b16 v214.l, 8, v179.l
	v_lshrrev_b32_e32 v179, 24, v217
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[97:104], v[206:207], v[198:199], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[208:209], v[198:199], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[206:207], v[200:201], v[113:120] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v214.l, v214.h, v214.l
	v_and_b16 v214.h, 0xff, v217.h
	v_lshlrev_b16 v215.l, 8, v179.l
	v_lshrrev_b32_e32 v179, 8, v181
	v_and_b16 v217.h, 0xff, v210.l
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[121:128], v[208:209], v[200:201], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[202:203], v[133:134], v[65:72] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v214.h, v214.h, v215.l
	v_lshlrev_b16 v215.l, 8, v179.l
	v_lshrrev_b32_e32 v179, 24, v181
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[73:80], v[204:205], v[133:134], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[202:203], v[135:136], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[204:205], v[135:136], v[89:96] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v215.l, v215.h, v215.l
	v_and_b16 v215.h, 0xff, v181.h
	v_lshlrev_b16 v216.l, 8, v179.l
	v_lshrrev_b32_e32 v179, 8, v180
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[97:104], v[202:203], v[129:130], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[204:205], v[129:130], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[202:203], v[131:132], v[113:120] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v215.h, v215.h, v216.l
	v_lshlrev_b16 v216.l, 8, v179.l
	v_lshrrev_b32_e32 v179, 24, v180
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[121:128], v[204:205], v[131:132], v[121:128] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v216.l, v216.h, v216.l
	v_and_b16 v216.h, 0xff, v180.h
	v_lshlrev_b16 v217.l, 8, v179.l
	v_lshrrev_b32_e32 v179, 8, v210
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v216.h, v216.h, v217.l
	v_lshlrev_b16 v217.l, 8, v179.l
	v_lshrrev_b32_e32 v179, 24, v210
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v217.l, v217.h, v217.l
	v_and_b16 v217.h, 0xff, v210.h
	v_lshlrev_b16 v179.l, 8, v179.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v179.l, v217.h, v179.l
	ds_store_b16 v168, v164
	ds_store_b16_d16_hi v168, v164 offset:32
	ds_store_b16 v168, v165 offset:64
	ds_store_b16_d16_hi v168, v165 offset:96
	ds_store_b16 v156, v214
	ds_store_b16_d16_hi v156, v214 offset:32
	ds_store_b16 v156, v215 offset:64
	ds_store_b16_d16_hi v156, v215 offset:96
	ds_store_b16 v157, v216
	ds_store_b16_d16_hi v157, v216 offset:32
	ds_store_b16 v157, v217 offset:64
	ds_store_b16 v157, v179 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[214:217], v211 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[214:215], v[170:171], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[216:217], v[170:171], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[214:215], v[172:173], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[216:217], v[172:173], v[25:32] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[170:173], v169 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[33:40], v[214:215], v[182:183], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[216:217], v[182:183], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[214:215], v[184:185], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[216:217], v[184:185], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[170:171], v[175:176], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[172:173], v[175:176], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[170:171], v[177:178], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[172:173], v[177:178], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[170:171], v[190:191], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[172:173], v[190:191], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[170:171], v[192:193], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[172:173], v[192:193], v[57:64] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[170:173], v162 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[170:171], v[186:187], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[172:173], v[186:187], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[170:171], v[188:189], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[172:173], v[188:189], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[170:171], v[198:199], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[172:173], v[198:199], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[170:171], v[200:201], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[172:173], v[200:201], v[57:64] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[170:173], v163 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[170:171], v[133:134], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[172:173], v[133:134], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[170:171], v[135:136], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[172:173], v[135:136], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[170:171], v[129:130], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[172:173], v[129:130], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[170:171], v[131:132], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[172:173], v[131:132], v[57:64] neg_lo:[1,1,0]
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_scc1 .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v177, v73
	v_cvt_f32_i32_e32 v135, v74
	v_cvt_f32_i32_e32 v183, v83
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v74, v22
	v_cvt_f32_i32_e32 v73, v23
	v_cvt_f32_i32_e32 v83, v36
	v_cvt_f32_i32_e32 v23, v43
	v_cvt_f32_i32_e32 v22, v44
	v_cvt_f32_i32_e32 v36, v55
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v55, off, off offset:312
	scratch_load_b32 v43, off, off offset:296
	scratch_load_b32 v44, off, off offset:300
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v172, v69
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v69, v7
	v_cvt_f32_i32_e32 v7, v31
	v_cvt_f32_i32_e32 v31, v40
	v_cvt_f32_i32_e32 v40, v51
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v180, v68
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v68, v8
	v_cvt_f32_i32_e32 v8, v32
	v_cvt_f32_i32_e32 v32, v39
	v_cvt_f32_i32_e32 v39, v52
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s39, s37, s36
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v171, v70
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s39, s39, s34
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v70, v6
	v_cvt_f32_i32_e32 v6, v30
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v184, v84
	v_cvt_f32_i32_e32 v186, v86
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v86, v33
	v_cvt_f32_i32_e32 v84, v35
	v_cvt_f32_i32_e32 v33, v38
	v_cvt_f32_i32_e32 v38, v53
	v_cvt_f32_i32_e32 v35, v56
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v173, v65
	v_cvt_f32_i32_e32 v178, v66
	v_cvt_f32_i32_e32 v179, v67
	v_cvt_f32_i32_e32 v165, v72
	v_cvt_f32_i32_e32 v181, v81
	v_cvt_f32_i32_e32 v175, v91
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v91, v1
	v_cvt_f32_i32_e32 v67, v9
	v_cvt_f32_i32_e32 v66, v10
	v_cvt_f32_i32_e32 v65, v11
	v_cvt_f32_i32_e32 v10, v12
	v_cvt_f32_i32_e32 v1, v13
	v_cvt_f32_i32_e32 v81, v18
	v_cvt_f32_i32_e32 v72, v24
	v_cvt_f32_i32_e32 v18, v25
	v_cvt_f32_i32_e32 v25, v41
	v_cvt_f32_i32_e32 v24, v42
	v_cvt_f32_i32_e32 v9, v45
	v_cvt_f32_i32_e32 v11, v46
	v_cvt_f32_i32_e32 v12, v47
	v_cvt_f32_i32_e32 v13, v48
	v_cvt_f32_i32_e32 v42, v49
	v_cvt_f32_i32_e32 v41, v50
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v185, v85
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v85, v34
	v_cvt_f32_i32_e32 v34, v37
	v_cvt_f32_i32_e32 v37, v54
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v188, v88
	v_cvt_f32_i32_e32 v88, v95
	v_cvt_f32_i32_e32 v95, v109
	v_cvt_f32_i32_e32 v109, v114
	v_cvt_f32_i32_e32 v164, v90
	v_cvt_f32_i32_e32 v136, v92
	v_cvt_f32_i32_e32 v90, v93
	v_cvt_f32_i32_e32 v194, v102
	v_cvt_f32_i32_e32 v102, v106
	v_cvt_f32_i32_e32 v93, v111
	v_cvt_f32_i32_e32 v92, v112
	v_cvt_f32_i32_e32 v111, v116
	v_cvt_f32_i32_e32 v112, v117
	v_cvt_f32_i32_e32 v114, v119
	v_cvt_f32_i32_e32 v106, v122
	v_cvt_f32_i32_e32 v176, v89
	v_cvt_f32_i32_e32 v89, v94
	v_cvt_f32_i32_e32 v94, v110
	v_cvt_f32_i32_e32 v110, v115
	v_cvt_f32_i32_e32 v192, v100
	v_cvt_f32_i32_e32 v100, v108
	v_cvt_f32_i32_e32 v108, v113
	v_cvt_f32_i32_e32 v113, v118
	v_cvt_f32_i32_e32 v182, v82
	v_cvt_f32_i32_e32 v196, v104
	v_cvt_f32_i32_e32 v104, v124
	v_cvt_f32_i32_e32 v189, v97
	v_cvt_f32_i32_e32 v170, v71
	v_cvt_f32_i32_e32 v190, v98
	v_cvt_f32_i32_e32 v191, v99
	v_cvt_f32_i32_e32 v193, v101
	v_cvt_f32_i32_e32 v195, v103
	v_cvt_f32_i32_e32 v103, v105
	v_cvt_f32_i32_e32 v101, v107
	v_cvt_f32_i32_e32 v107, v121
	v_cvt_f32_i32_e32 v105, v123
	v_cvt_f32_i32_e32 v187, v87
	v_cvt_f32_i32_e32 v134, v75
	v_cvt_f32_i32_e32 v115, v120
	v_cvt_f32_i32_e32 v133, v76
	v_cvt_f32_i32_e32 v130, v79
	v_cvt_f32_i32_e32 v131, v78
	v_cvt_f32_i32_e32 v132, v77
	v_cvt_f32_i32_e32 v129, v80
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v77, v3
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v87, v96
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v78, v2
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v99, v125
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v76, v4
	v_cvt_f32_i32_e32 v82, v17
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v98, v126
	v_cvt_f32_i32_e32 v97, v127
	v_cvt_f32_i32_e32 v96, v128
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v80, v19
	v_cvt_f32_i32_e32 v79, v20
	v_cvt_f32_i32_e32 v71, v5
	v_cvt_f32_i32_e32 v75, v21
	v_cvt_f32_i32_e32 v17, v26
	v_cvt_f32_i32_e32 v4, v16
	v_cvt_f32_i32_e32 v16, v27
	v_cvt_f32_i32_e32 v2, v14
	v_cvt_f32_i32_e32 v14, v28
	v_cvt_f32_i32_e32 v5, v29
	v_cvt_f32_i32_e32 v29, v57
	v_cvt_f32_i32_e32 v27, v59
	v_cvt_f32_i32_e32 v28, v58
	v_cvt_f32_i32_e32 v26, v60
	v_cvt_f32_i32_e32 v3, v15
	v_cvt_f32_i32_e32 v15, v61
	v_cvt_f32_i32_e32 v19, v62
	v_cvt_f32_i32_e32 v20, v63
	v_cvt_f32_i32_e32 v21, v64
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v30, v55, s39, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v43, s37, v43, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s37, v44, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v30, v30, s[16:19], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v43, 0x80000000, v43, s0
	v_cndmask_b32_e64 v44, 0x80000000, v44, s1
	s_clause 0x1
	buffer_load_u16 v43, v43, s[12:15], 0 offen
	buffer_load_u16 v51, v44, s[12:15], 0 offen
	scratch_load_b32 v44, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v51, 16, v51
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s37, v44, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v8, v51
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v5, v51, v5
	v_mul_f32_e32 v7, v7, v51
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v52, v44, s[12:15], 0 offen
	scratch_load_b32 v44, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v52, 16, v52
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s37, v44, 1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v6, v6, v51
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s37, s37, 1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v52, v32
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v44, 0x80000000, v44, s3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v34, v52, v34
	v_mul_f32_e32 v33, v52, v33
	v_mul_f32_e32 v31, v52, v31
	v_mul_f32_e32 v9, v52, v9
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v53, v44, s[12:15], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v56, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s37, s30
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v56, v30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v197, off, off offset:256
	scratch_load_b32 v198, off, off offset:260
	scratch_load_b32 v200, off, off offset:268
	scratch_load_b32 v199, off, off offset:264
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v30, 16, v43
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[43:46], v174
	ds_load_b128 v[47:50], v174 offset:16
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v116, off, off offset:64
	scratch_load_b32 v117, off, off offset:68
	scratch_load_b32 v119, off, off offset:76
	scratch_load_b32 v122, off, off offset:132
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v30, v173
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v173, off, off offset:160
	scratch_load_b32 v118, off, off offset:72
	scratch_load_b32 v121, off, off offset:128
	scratch_load_b32 v123, off, off offset:136
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v53, v39
	v_mul_f32_e32 v42, v53, v42
	v_mul_f32_e32 v41, v53, v41
	v_mul_f32_e32 v40, v53, v40
	v_mul_f32_e32 v15, v53, v15
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v230, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v30, v178
	scratch_load_b32 v178, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v231, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v30, v179
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v179, off, off offset:168
	scratch_load_b32 v124, off, off offset:140
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v233, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v30, v180
	scratch_load_b32 v180, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v30, v10
	v_mul_f32_e32 v2, v2, v30
	v_mul_f32_e32 v3, v3, v30
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v232, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v181
	scratch_load_b32 v181, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v4, v4, v30 :: v_dual_mul_f32 v1, v30, v1
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(16)
	v_dual_fmac_f32 v197, v54, v43 :: v_dual_mul_f32 v54, v51, v182
	scratch_load_b32 v182, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(16)
	v_fmac_f32_e32 v198, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v183
	scratch_load_b32 v183, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(16)
	v_fmac_f32_e32 v200, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v184
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(15)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v199, v54, v46 :: v_dual_mul_f32 v54, v52, v189
	scratch_load_b32 v189, off, off offset:288 ; 4-byte Folded Reload
	s_waitcnt vmcnt(11)
	v_dual_fmac_f32 v173, v54, v43 :: v_dual_mul_f32 v54, v52, v190
	scratch_load_b32 v190, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(8)
	v_fmac_f32_e32 v178, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v191
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v180, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v192
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v179, v54, v46 :: v_dual_mul_f32 v54, v53, v108
	scratch_load_b32 v108, off, off offset:32 ; 4-byte Folded Reload
	v_dual_fmac_f32 v116, v54, v43 :: v_dual_mul_f32 v43, v53, v109
	scratch_load_b32 v109, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v54, v177, v30 :: v_dual_fmac_f32 v117, v43, v44
	v_mul_f32_e32 v43, v53, v110
	scratch_load_b32 v110, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v119, v43, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v111
	scratch_load_b32 v111, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v118, v43, v46 :: v_dual_mul_f32 v43, v30, v172
	scratch_load_b32 v172, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v222, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v30, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v223, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v30, v170
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v224, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v30, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v225, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v185
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v172, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v186
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v181, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v187
	scratch_load_b32 v187, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v182, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v188
	scratch_load_b32 v188, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v183, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v121, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v194
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v122, v43, v48 :: v_dual_mul_f32 v43, v52, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v123, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v196
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v124, v43, v50 :: v_dual_mul_f32 v43, v53, v112
	scratch_load_b32 v112, off, off offset:100 ; 4-byte Folded Reload
	v_dual_fmac_f32 v108, v43, v47 :: v_dual_mul_f32 v43, v53, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v109, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v114
	scratch_load_b32 v114, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v110, v43, v49 :: v_dual_mul_f32 v43, v53, v115
	v_fmac_f32_e32 v111, v43, v50
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[43:46], v174 offset:512
	ds_load_b128 v[47:50], v174 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v140, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v30, v135
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v135, off, off offset:200
	scratch_load_b32 v113, off, off offset:104
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v187, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v30, v134
	scratch_load_b32 v134, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v188, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v30, v133
	scratch_load_b32 v133, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v189, v54, v46 :: v_dual_mul_f32 v54, v176, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v250, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v164
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v133, v54, v44 :: v_dual_mul_f32 v54, v51, v175
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v134, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v136
	scratch_load_b32 v136, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v135, v54, v46 :: v_dual_mul_f32 v54, v103, v52
	scratch_load_b32 v103, off, off offset:96 ; 4-byte Folded Reload
	v_dual_fmac_f32 v245, v54, v43 :: v_dual_mul_f32 v54, v52, v102
	scratch_load_b32 v102, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v103, v54, v44 :: v_dual_mul_f32 v54, v52, v101
	scratch_load_b32 v101, off, off offset:4 ; 4-byte Folded Reload
	v_fmac_f32_e32 v112, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v100
	scratch_load_b32 v100, off, off         ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v113, v54, v46 :: v_dual_mul_f32 v54, v107, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v241, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v43, v53, v106 :: v_dual_mul_f32 v54, v30, v91
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v100, v43, v44 :: v_dual_mul_f32 v43, v53, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v101, v43, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v104
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v102, v43, v46 :: v_dual_mul_f32 v43, v30, v132
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v190, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v131, v30
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v255, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v130, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v254, v43, v49 :: v_dual_mul_f32 v43, v129, v30
	v_fmac_f32_e32 v251, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v136, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v89, v51
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v248, v43, v48 :: v_dual_mul_f32 v43, v88, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v247, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v87, v51
	scratch_load_b32 v87, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v246, v43, v50 :: v_dual_mul_f32 v43, v52, v95
	v_dual_fmac_f32 v114, v43, v47 :: v_dual_mul_f32 v43, v94, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v244, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v93, v52
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v243, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v92, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v242, v43, v50 :: v_dual_mul_f32 v43, v53, v99
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v87, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v98, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v240, v43, v48 :: v_dual_mul_f32 v43, v97, v53
	v_fmac_f32_e32 v239, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v96, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v238, v43, v50 :: v_dual_add_nc_u32 v43, s33, v55
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v43, v43, s39, 1
	buffer_load_u16 v43, v43, s[16:19], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v56, v43
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1f                           ; 128-byte Folded Reload
	scratch_load_b32 v186, off, off offset:276
	scratch_load_b32 v185, off, off offset:272
	scratch_load_b32 v132, off, off offset:188
	scratch_load_b32 v131, off, off offset:184
	scratch_load_b32 v129, off, off offset:176
	scratch_load_b32 v130, off, off offset:180
	scratch_load_b32 v128, off, off offset:156
	scratch_load_b32 v127, off, off offset:152
	scratch_load_b32 v125, off, off offset:144
	scratch_load_b32 v126, off, off offset:148
	scratch_load_b32 v97, off, off offset:92
	scratch_load_b32 v95, off, off offset:84
	scratch_load_b32 v94, off, off offset:80
	scratch_load_b32 v120, off, off offset:124
	scratch_load_b32 v115, off, off offset:120
	scratch_load_b32 v99, off, off offset:116
	scratch_load_b32 v98, off, off offset:112
	scratch_load_b32 v96, off, off offset:88
	scratch_load_b32 v184, off, off offset:252
	scratch_load_b32 v177, off, off offset:248
	scratch_load_b32 v176, off, off offset:244
	scratch_load_b32 v175, off, off offset:240
	scratch_load_b32 v171, off, off offset:220
	scratch_load_b32 v170, off, off offset:216
	scratch_load_b32 v164, off, off offset:208
	scratch_load_b32 v165, off, off offset:212
	scratch_load_b32 v93, off, off offset:60
	scratch_load_b32 v92, off, off offset:56
	scratch_load_b32 v91, off, off offset:52
	scratch_load_b32 v90, off, off offset:48
	scratch_load_b32 v89, off, off offset:28
	scratch_load_b32 v88, off, off offset:24
	ds_load_b128 v[43:46], v174
	ds_load_b128 v[47:50], v174 offset:16
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v237, v54, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v30, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v236, v54, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v30, v77
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v234, v54, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v30, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v235, v54, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v51, v82
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v213, v54, v43 :: v_dual_mul_f32 v54, v51, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v212, v54, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v51, v80
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(31)
	v_fmac_f32_e32 v186, v54, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v51, v79
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(30)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v185, v54, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v52, v86
	scratch_load_b32 v86, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(23) lgkmcnt(0)
	v_dual_fmac_f32 v127, v33, v48 :: v_dual_fmac_f32 v126, v31, v50
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v31, v53, v38 :: v_dual_fmac_f32 v132, v54, v43
	v_mul_f32_e32 v54, v52, v85
	scratch_load_b32 v85, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(21)
	v_dual_fmac_f32 v94, v39, v46 :: v_dual_mul_f32 v39, v30, v71
	v_fmac_f32_e32 v128, v34, v47
	v_fmac_f32_e32 v131, v54, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v54, v52, v84 :: v_dual_fmac_f32 v97, v42, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v229, v39, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(16)
	v_dual_mul_f32 v39, v30, v70 :: v_dual_fmac_f32 v96, v41, v44
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v129, v54, v45 :: v_dual_mul_f32 v54, v52, v83
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v93, v31, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v228, v39, v48 :: v_dual_mul_f32 v39, v30, v69
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v31, v53, v37
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v125, v32, v49 :: v_dual_fmac_f32 v130, v54, v46
	v_fmac_f32_e32 v95, v40, v45
	v_dual_fmac_f32 v226, v39, v49 :: v_dual_mul_f32 v39, v30, v68
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v92, v31, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v31, v53, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v227, v39, v50
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v51, v75
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v91, v31, v49
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v31, v53, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v184, v39, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v51, v74
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v90, v31, v50
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[31:34], v174 offset:512
	ds_load_b128 v[35:38], v174 offset:528
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v219, v10, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v10, v18, v51 :: v_dual_fmac_f32 v177, v39, v48
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v218, v1, v35 :: v_dual_fmac_f32 v151, v4, v38
	v_fmac_f32_e32 v153, v2, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v150, v10, v31
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v51, v17
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v152, v3, v37 :: v_dual_fmac_f32 v165, v5, v35
	v_dual_fmac_f32 v143, v8, v38 :: v_dual_fmac_f32 v98, v9, v35
	v_fmac_f32_e32 v171, v10, v32
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v51, v16
	v_mul_f32_e32 v16, v21, v53
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v144, v7, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v170, v10, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v51, v14
	v_mul_f32_e32 v39, v51, v73
	v_mul_f32_e32 v14, v20, v53
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v249, v16, v38
	v_fmac_f32_e32 v164, v10, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v176, v39, v49
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v25, v52
	v_dual_mul_f32 v39, v51, v72 :: v_dual_fmac_f32 v252, v14, v37
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v0, v10, v31 :: v_dual_fmac_f32 v175, v39, v50
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v10, v52, v24 :: v_dual_mul_f32 v39, v67, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v120, v10, v32
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v52, v23
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v158, v39, v31 :: v_dual_mul_f32 v39, v30, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v115, v10, v33 :: v_dual_mul_f32 v10, v52, v22
	v_fmac_f32_e32 v221, v39, v32
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v30, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v99, v10, v34 :: v_dual_mul_f32 v10, v29, v53
	v_dual_fmac_f32 v220, v39, v33 :: v_dual_fmac_f32 v139, v10, v31
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v53, v28
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v89, v10, v32 :: v_dual_mul_f32 v10, v53, v27
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v88, v10, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v53, v26
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v10, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v11, v52
	v_mul_f32_e32 v11, v12, v52
	v_dual_mul_f32 v12, v13, v52 :: v_dual_mul_f32 v13, v19, v53
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v145, v6, v36
	v_dual_fmac_f32 v142, v10, v36 :: v_dual_fmac_f32 v141, v11, v37
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v138, v12, v38 :: v_dual_fmac_f32 v85, v15, v35
	v_fmac_f32_e32 v253, v13, v36
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v1, off, off offset:340
	scratch_load_b32 v104, off, off offset:320
	scratch_load_b32 v105, off, off offset:324
	scratch_load_b32 v106, off, off offset:328
	scratch_load_b32 v107, off, off offset:332
	scratch_load_b32 v84, off, off offset:336
.LBB0_9:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v2, 0xbfb8aa3b, v158 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v235
	v_dual_mul_f32 v9, 0xbfb8aa3b, v237 :: v_dual_mul_f32 v4, 0xbfb8aa3b, v151
	v_mul_f32_e32 v31, 0xbfb8aa3b, v219
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_dual_mul_f32 v2, 0xbfb8aa3b, v153 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v152
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v4
	v_mul_f32_e32 v40, 0xbfb8aa3b, v212
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v3
	v_cndmask_b32_e64 v13, 0, 0x42800000, s1
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s1
	v_mul_f32_e32 v38, 0xbfb8aa3b, v185
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v158
	v_cndmask_b32_e64 v11, 0, 0x42800000, s0
	v_mul_f32_e32 v22, 0xbfb8aa3b, v227
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v151
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v153
	v_exp_f32_e32 v14, v6
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v152
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v6, 0xbfb8aa3b, v229
	v_exp_f32_e32 v3, v3
	v_exp_f32_e32 v13, v13
	v_exp_f32_e32 v11, v11
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, s0
	v_mul_f32_e32 v46, 0xbfb8aa3b, v171
	v_mul_f32_e32 v58, 0xbfb8aa3b, v115
	v_ldexp_f32 v10, v14, v10
	v_mul_f32_e32 v14, 0xbfb8aa3b, v150
	v_dual_mul_f32 v5, 0xbfb8aa3b, v234 :: v_dual_mul_f32 v8, 0xbfb8aa3b, v236
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v15, v3, v2
	v_mul_f32_e32 v3, 0xbfb8aa3b, v145
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_ldexp_f32 v11, v11, v4
	v_ldexp_f32 v12, v13, v12
	v_dual_mul_f32 v13, 0xbfb8aa3b, v144 :: v_dual_add_f32 v10, 1.0, v10
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v13
	v_mul_f32_e32 v41, 0xbfb8aa3b, v177
	v_dual_mul_f32 v39, 0xbfb8aa3b, v165 :: v_dual_fmac_f32 v4, 0xbfb8aa3b, v150
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v14, 0xbfb8aa3b, v143
	v_cndmask_b32_e64 v16, 0, 0x42800000, s0
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v4, v4
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v145
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v14
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v144
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s0
	v_mul_f32_e32 v47, 0xbfb8aa3b, v170
	v_exp_f32_e32 v13, v13
	v_cndmask_b32_e64 v18, 0, 0x42800000, s1
	v_exp_f32_e32 v16, v16
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s1
	v_ldexp_f32 v19, v4, v2
	v_dual_mul_f32 v2, 0xbfb8aa3b, v0 :: v_dual_mul_f32 v49, 0xbfb8aa3b, v130
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v143
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v10, v10, v158
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v13, v13, v3
	v_exp_f32_e32 v18, v18
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_mul_f32_e32 v3, 0xbfb8aa3b, v142
	v_ldexp_f32 v14, v16, v14
	v_dual_mul_f32 v50, 0xbfb8aa3b, v131 :: v_dual_mul_f32 v45, 0xbfb8aa3b, v125
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v16, v18, v17
	v_dual_mul_f32 v17, 0xbfb8aa3b, v141 :: v_dual_mul_f32 v18, 0xbfb8aa3b, v138
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v24, 0xbfb8aa3b, v92 :: v_dual_add_f32 v15, 1.0, v15
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v18
	v_mul_f32_e32 v53, 0xbfb8aa3b, v98
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v142
	v_exp_f32_e32 v4, v4
	v_cndmask_b32_e64 v20, 0, 0x42800000, s0
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v23, 0, 0x42800000, s1
	v_exp_f32_e32 v17, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, s1, v152, v11, v152
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_dual_mul_f32 v60, 0xbfb8aa3b, v132 :: v_dual_fmac_f32 v23, 0xbfb8aa3b, v138
	v_ldexp_f32 v33, v4, v2
	v_mul_f32_e32 v4, 0xbfb8aa3b, v252
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v20, v20
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v17, v17, v3
	v_mul_f32_e32 v3, 0xbfb8aa3b, v253
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v23, v23
	v_dual_mul_f32 v29, 0xbfb8aa3b, v228 :: v_dual_mul_f32 v30, 0xbfb8aa3b, v218
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v3
	v_dual_mul_f32 v25, 0xbfb8aa3b, v226 :: v_dual_mul_f32 v36, 0xbfb8aa3b, v220
	v_ldexp_f32 v18, v20, v18
	v_mul_f32_e32 v20, 0xbfb8aa3b, v249
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v27, 0, 0x42800000, s0
	v_mul_f32_e32 v2, 0xbfb8aa3b, v139
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s0
	v_ldexp_f32 v61, v23, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v14, 1.0, v14 :: v_dual_fmac_f32 v27, 0xbfb8aa3b, v253
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_dual_mul_f32 v37, 0xbfb8aa3b, v221 :: v_dual_mul_f32 v32, 0xbfb8aa3b, v186
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v27
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v54, 0xbfb8aa3b, v96
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v27, 0xbfb8aa3b, v93
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v139
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v19, v19, v150
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v3, v3
	v_ldexp_f32 v62, v65, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v66, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v252
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, vcc_lo, v158, v10, v158
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v70, v65, v70 :: v_dual_add_f32 v13, 1.0, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v4
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v69, v3, v2
	v_mul_f32_e32 v3, 0xbfb8aa3b, v86
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v73, v71, v70 :: v_dual_mul_f32 v4, 0xbfb8aa3b, v88
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v61, 1.0, v61 :: v_dual_add_f32 v18, 1.0, v18
	v_add_f32_e32 v69, 1.0, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, s0
	v_ldexp_f32 v63, v67, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v15, v15, v153
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v249
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v66, v73, v71
	v_rcp_f32_e32 v65, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v2, 0xbfb8aa3b, v85 :: v_dual_add_f32 v63, 1.0, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v68, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v73, v75, v70 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v89
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v48, 0xbfb8aa3b, v213 :: v_dual_mul_f32 v35, 0xbfb8aa3b, v176
	v_dual_mul_f32 v34, 0xbfb8aa3b, v175 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v184
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v67, v65, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v66, v73, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v64, v68, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v11, v11, v152
	v_fmac_f32_e32 v65, v74, v65
	v_div_scale_f32 v74, s0, v153, v15, v153
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v72, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v66, v66, v70, v73
	v_mul_f32_e32 v75, v74, v65
	v_rcp_f32_e32 v70, v80
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v42, 0xbfb8aa3b, v164 :: v_dual_mul_f32 v43, 0xbfb8aa3b, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v67, v75, v74
	v_div_fixup_f32 v10, v66, v10, v158
	v_fma_f32 v76, -v68, v72, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v56, 0xbfb8aa3b, v128 :: v_dual_mul_f32 v57, 0xbfb8aa3b, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v75, v71, v65 :: v_dual_mul_f32 v52, 0xbfb8aa3b, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v59, 0xbfb8aa3b, v120
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v76, v72
	v_div_scale_f32 v76, null, v12, v12, v151
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v66, -v67, v75, v74
	v_div_scale_f32 v67, s2, v151, v12, v151
	v_rcp_f32_e32 v78, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v44, 0xbfb8aa3b, v126 :: v_dual_mul_f32 v55, 0xbfb8aa3b, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v65, v66, v65, v75
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v28, 0xbfb8aa3b, v94 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v91
	v_dual_mul_f32 v26, 0xbfb8aa3b, v95 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v90
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v15, v65, v15, v153
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v76, v78, 1.0
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v78, v73, v78
	v_mul_f32_e32 v79, v77, v72
	v_div_scale_f32 v73, s0, v150, v19, v150
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v68, v79, v77
	v_fmac_f32_e32 v79, v71, v72
	v_fma_f32 v71, -v80, v70, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v66, -v68, v79, v77
	v_mul_f32_e32 v68, v67, v78
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, null, v13, v13, v145
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v76, v68, v67
	v_mul_f32_e32 v75, v73, v70
	v_div_scale_f32 v77, null, v14, v14, v144
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v68, v74, v78
	v_div_fmas_f32 v66, v66, v72, v79
	v_rcp_f32_e32 v72, v71
	v_fma_f32 v65, -v80, v75, v73
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v67, -v76, v68, v67
	v_div_fixup_f32 v11, v66, v11, v152
	v_rcp_f32_e32 v66, v77
	v_div_scale_f32 v76, null, v16, v16, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v67, v67, v78, v68
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v74, -v71, v72, 1.0
	v_fmac_f32_e32 v75, v65, v70
	v_div_scale_f32 v65, s1, v145, v13, v145
	v_div_scale_f32 v78, s2, v144, v14, v144
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v72, v74, v72
	v_rcp_f32_e32 v74, v76
	v_fma_f32 v68, -v80, v75, v73
	v_fma_f32 v79, -v77, v66, 1.0
	v_div_scale_f32 v80, null, v33, v33, v0
	v_mul_f32_e32 v73, v65, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v68, v68, v70, v75
	v_fmac_f32_e32 v66, v79, v66
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v81, s0, v143, v16, v143
	v_fma_f32 v70, -v71, v73, v65
	v_fma_f32 v79, -v76, v74, 1.0
	v_div_fixup_f32 v12, v67, v12, v151
	v_div_fixup_f32 v67, v68, v19, v150
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v73, v70, v72
	v_div_scale_f32 v70, null, v17, v17, v142
	v_fmac_f32_e32 v74, v79, v74
	v_rcp_f32_e32 v79, v80
	v_fma_f32 v65, -v71, v73, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v71, v70
	v_div_fmas_f32 v65, v65, v72, v73
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v82, -v80, v79, 1.0
	v_div_fixup_f32 v13, v65, v13, v145
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v73, -v70, v71, 1.0
	v_dual_fmac_f32 v79, v82, v79 :: v_dual_mul_f32 v68, v81, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v71, v73, v71
	v_mul_f32_e32 v75, v78, v66
	v_div_scale_f32 v82, s3, v0, v33, v0
	v_div_scale_f32 v73, null, v18, v18, v141
	v_fma_f32 v19, -v77, v75, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v75, v19, v66
	v_fma_f32 v19, -v76, v68, v81
	v_fma_f32 v72, -v77, v75, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v68, v19, v74 :: v_dual_mul_f32 v19, v82, v79
	v_div_fmas_f32 v66, v72, v66, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v72, -v76, v68, v81
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v75, -v80, v19, v82
	v_div_scale_f32 v76, s1, v142, v17, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v68, v72, v74, v68
	v_rcp_f32_e32 v72, v73
	v_fmac_f32_e32 v19, v75, v79
	v_div_fixup_f32 v65, v66, v14, v144
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v66, v68, v16, v143
	v_div_scale_f32 v68, null, v61, v61, v138
	v_fma_f32 v14, -v80, v19, v82
	v_div_scale_f32 v82, null, v64, v64, v249
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v75, -v73, v72, 1.0
	v_div_fmas_f32 v14, v14, v79, v19
	v_rcp_f32_e32 v19, v68
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v72, v75, v72
	v_mul_f32_e32 v74, v76, v71
	v_div_scale_f32 v75, null, v69, v69, v139
	v_div_fixup_f32 v0, v14, v33, v0
	v_fma_f32 v16, -v70, v74, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v74, v16, v71
	v_div_scale_f32 v16, s0, v141, v18, v141
	v_fma_f32 v14, -v70, v74, v76
	v_rcp_f32_e32 v76, v75
	v_fma_f32 v70, -v68, v19, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v33, v16, v72
	v_div_fmas_f32 v14, v14, v71, v74
	v_div_scale_f32 v74, s1, v138, v61, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v71, -v73, v33, v16
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v78, v14, v17, v142
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v77, -v75, v76, 1.0
	v_fmac_f32_e32 v19, v70, v19
	v_div_scale_f32 v70, null, v62, v62, v253
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, null, v63, v63, v252
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v14, v70
	v_rcp_f32_e32 v81, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v80, -v70, v14, 1.0
	v_fmac_f32_e32 v33, v71, v72
	v_div_scale_f32 v71, s2, v139, v69, v139
	v_dual_fmac_f32 v14, v80, v14 :: v_dual_mul_f32 v17, v74, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v16, -v73, v33, v16
	v_mul_f32_e32 v79, v71, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v77, v81, 1.0
	v_fma_f32 v73, -v68, v17, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v16, v16, v72, v33
	v_rcp_f32_e32 v72, v82
	v_fma_f32 v33, -v75, v79, v71
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v17, v73, v19
	v_div_scale_f32 v73, s0, v253, v62, v253
	v_div_fixup_f32 v83, v16, v18, v141
	v_fmac_f32_e32 v81, v80, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v16, -v68, v17, v74
	v_mul_f32_e32 v18, v73, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v82, v72, 1.0
	v_fmac_f32_e32 v72, v68, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v16, v16, v19, v17
	v_fma_f32 v19, -v70, v18, v73
	v_fmac_f32_e32 v79, v33, v76
	v_div_scale_f32 v33, s3, v252, v63, v252
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v18, v19, v14
	v_fma_f32 v17, -v75, v79, v71
	v_mul_f32_e32 v71, v33, v81
	v_div_scale_f32 v68, s1, v249, v64, v249
	v_div_fixup_f32 v61, v16, v61, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v17, v17, v76, v79
	v_fma_f32 v16, -v77, v71, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v19, v68, v72
	v_fma_f32 v9, -v70, v18, v73
	v_div_fixup_f32 v69, v17, v69, v139
	v_fmac_f32_e32 v71, v16, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v16, -v82, v19, v68
	v_div_fmas_f32 v9, v9, v14, v18
	v_fma_f32 v14, -v77, v71, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v237
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v19, v16, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v14, v14, v81, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v18, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v9, v62, v253
	v_fma_f32 v16, -v82, v19, v68
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v62, v14, v63, v252
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0x42800000, s0
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v8, v16, v72, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v140, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v7, v18, v17
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v236
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v63, v8, v64, v249
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v7, v14
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v17, v251, v12 :: v_dual_mul_f32 v14, v248, v13
	v_dual_mul_f32 v13, v247, v65 :: v_dual_mul_f32 v12, v246, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v235
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v64, v64, v237
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v255, v15
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v7, v9
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v15, v250, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v10, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v67, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v5
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v16, v254, v11 :: v_dual_mul_f32 v11, v245, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v234
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v66, v66, v236
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v10, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v5, -v68, v67, 1.0
	v_div_scale_f32 v72, vcc_lo, v237, v64, v237
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v73, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v244, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v41
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v243, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v70, v73, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v73, v77, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v67, v5, v67 :: v_dual_mul_f32 v0, v240, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v5, v7
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v241, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v75, v72, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v76, -v68, v75, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v5, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v5, v239, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, s0, v236, v66, v236
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v75, v76, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v68, v75, v72
	v_div_scale_f32 v72, null, v33, v33, v234
	v_mul_f32_e32 v68, v65, v73
	v_div_scale_f32 v74, null, v71, v71, v235
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v62, v62, v67, v75
	v_rcp_f32_e32 v67, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v70, v68, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v6, v238, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v62, v62, v64, v237
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v75, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v64, -v72, v67, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v229
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v70, v68, v65
	v_fmac_f32_e32 v67, v64, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v242, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v61, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v29, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, s2, v234, v33, v234
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v228
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v74, v61, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v29, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v69, v61
	v_div_scale_f32 v69, s1, v235, v71, v235
	v_mul_f32_e32 v76, v69, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v63, -v74, v76, v69
	v_fmac_f32_e32 v76, v63, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v65, v65, v73, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_exp_f32_e32 v25, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v70, v67
	v_fma_f32 v69, -v74, v76, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v64, v64, v229
	v_fma_f32 v29, -v72, v68, v70
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v25, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v63, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v226
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v61, v69, v61, v76
	v_fmac_f32_e32 v68, v29, v67
	v_div_fixup_f32 v29, v65, v66, v236
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v61, v71, v235
	v_fma_f32 v61, -v72, v68, v70
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v70, -v75, v63, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v231, v29
	v_mul_f32_e32 v25, v232, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v61, v61, v67, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v63, v70, v63
	v_div_scale_f32 v68, s0, v229, v64, v229
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v22, v61, v33, v234
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v66, v66, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v68, v63
	v_div_scale_f32 v69, null, v65, v65, v228
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v61, 0xbfb8aa3b, v227 :: v_dual_add_f32 v66, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v75, v70, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v67, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v61, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v66, v66, v226
	v_fmac_f32_e32 v70, v72, v63
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v73
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v22, v233, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v75, v70, v68
	v_fma_f32 v71, -v69, v67, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v61, v61, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v63, v68, v63, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, s0, v226, v66, v226
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v63, v63, v64, v229
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v230, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v73, v74, 1.0
	v_fmac_f32_e32 v67, v71, v67
	v_div_scale_f32 v71, s1, v228, v65, v228
	v_div_scale_f32 v68, null, v61, v61, v227
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v74, v62, v74
	v_mul_f32_e32 v72, v71, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v221
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v62, v68
	v_fma_f32 v75, -v69, v72, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v75, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v64, -v69, v72, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v36, v64, v67, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, s2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v68, v62, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_ldexp_f32 v31, v70, v69
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v67, 0xbfb8aa3b, v220 :: v_dual_fmac_f32 v62, v72, v62
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v37, v74
	v_div_fixup_f32 v36, v36, v65, v228
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, s1, v227, v61, v227
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v219
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v73, v71, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v30
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v223, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v64, v67, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v65, v74
	v_dual_mul_f32 v65, v72, v62 :: v_dual_add_f32 v64, 1.0, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v73, v71, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v68, v65, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v75, null, v64, v64, v220
	v_div_scale_f32 v67, null, v73, v73, v221
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v65, v31, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v30, v37, v74, v71
	v_rcp_f32_e32 v70, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v68, v65, v72
	v_rcp_f32_e32 v72, v75
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v37, v37, v62, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v31, v69
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v67, v70, 1.0
	v_div_fixup_f32 v37, v37, v61, v227
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v65, -v75, v72, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v218
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v74, v70
	v_div_scale_f32 v62, vcc_lo, v221, v73, v221
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v72, v65, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, s0, v220, v64, v220
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v71, v62, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v30, v66, v226
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v30, v225, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v65, v72
	v_fma_f32 v37, -v67, v71, v62
	v_div_scale_f32 v74, null, v69, v69, v219
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v61, v61, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v75, v66, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v71, v37, v70
	v_rcp_f32_e32 v76, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v222, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v61, 1.0, v61 :: v_dual_fmac_f32 v66, v68, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v67, v71, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v67, null, v61, v61, v218
	v_div_fmas_f32 v62, v62, v70, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v75, v66, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v48, v67
	v_fma_f32 v63, -v74, v76, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v224, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v76, v63, v76
	v_div_fmas_f32 v65, v65, v72, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v213
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v67, v48, 1.0
	v_div_scale_f32 v63, s1, v219, v69, v219
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v70
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v48, v71, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v63, v76
	v_div_scale_f32 v72, s0, v218, v61, v218
	v_div_fixup_f32 v64, v65, v64, v220
	v_div_fixup_f32 v62, v62, v73, v221
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v40, v68
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v212
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v74, v66, v63
	v_dual_mul_f32 v40, v72, v48 :: v_dual_add_f32 v73, 1.0, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v185
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v65, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v67, v40, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_exp_f32_e32 v32, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v74, v66, v63
	v_div_scale_f32 v74, null, v73, v73, v213
	v_fmac_f32_e32 v40, v38, v48
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v71, v70
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v68, v74
	v_div_fmas_f32 v63, v63, v76, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v186
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v67, v40, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v32, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v40, v66, v48, v40
	v_div_scale_f32 v65, null, v67, v67, v212
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v74, v68, 1.0
	v_div_scale_f32 v72, vcc_lo, v213, v73, v213
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v66, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v40, v61, v218
	v_fmac_f32_e32 v68, v38, v68
	v_div_fixup_f32 v38, v63, v69, v219
	v_div_scale_f32 v75, s0, v212, v67, v212
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v48, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v189, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v65, v66, 1.0
	v_fmac_f32_e32 v66, v40, v66
	v_div_scale_f32 v61, null, v71, v71, v185
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v188, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v48
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v187, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v61
	v_div_scale_f32 v77, null, v64, v64, v186
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v61, v69, 1.0
	v_fmac_f32_e32 v69, v76, v69
	v_mul_f32_e32 v63, v72, v68
	v_div_scale_f32 v76, s1, v185, v71, v185
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v74, v63, v72
	v_dual_fmac_f32 v63, v70, v68 :: v_dual_mul_f32 v70, v75, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v62, -v74, v63, v72
	v_rcp_f32_e32 v74, v77
	v_fma_f32 v72, -v65, v70, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v51, v62, v68, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v72, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v76, v69
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v72, -v77, v74, 1.0
	v_fma_f32 v65, -v65, v70, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v184
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v51, v73, v213
	v_fma_f32 v73, -v61, v68, v76
	v_fmac_f32_e32 v74, v72, v74
	v_div_scale_f32 v72, s2, v186, v64, v186
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v190, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v41, v65, v66, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v65, v72, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_exp_f32_e32 v63, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v73, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v177
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v77, v65, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v61, v68, v76
	v_div_fixup_f32 v41, v41, v67, v212
	v_fmac_f32_e32 v65, v35, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v70
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v176
	v_ldexp_f32 v62, v63, v62
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v198, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v61, v61, v69, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v73
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v77, v65, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v35, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v58
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v70, null, v62, v62, v184
	v_div_fmas_f32 v34, v34, v74, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v68, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v70
	v_div_fixup_f32 v34, v34, v64, v186
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v68, null, v65, v65, v177
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v35, v61, v71, v185
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v74, v68
	v_div_scale_f32 v75, null, v73, v73, v176
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v63, -v70, v69, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v199, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v61, v75
	v_fmac_f32_e32 v69, v63, v69
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v67, -v68, v74, 1.0
	v_div_scale_f32 v63, vcc_lo, v184, v62, v184
	v_fmac_f32_e32 v74, v67, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v76, v63, v69
	v_fma_f32 v67, -v75, v61, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v175
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v70, v76, v63
	v_fmac_f32_e32 v61, v67, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, s1, v176, v73, v176
	v_fmac_f32_e32 v76, v64, v69
	v_div_scale_f32 v64, s0, v177, v65, v177
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v63, -v70, v76, v63
	v_mul_f32_e32 v70, v64, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v72, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v63, v63, v69, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v68, v70, v64
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v197, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v63, v62, v184
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v66, v66, v175
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v76, v67, v61 :: v_dual_mul_f32 v51, v172, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v69, v71
	v_fmac_f32_e32 v70, v72, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v171
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v75, v76, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v64, -v68, v70, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v62, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v71, v69, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v34, v200, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, s2, v175, v66, v175
	v_fma_f32 v67, -v75, v76, v67
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v69, v63, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v47, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v64, v64, v74, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	v_dual_fmac_f32 v63, 0xbfb8aa3b, v170 :: v_dual_mul_f32 v70, v68, v69
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v42, v63
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v71, v70, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v61, v67, v61, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v70, v47, v69
	v_div_fixup_f32 v47, v64, v65, v177
	v_div_scale_f32 v75, null, v63, v63, v171
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v42, v42, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v164
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v62, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v50
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v42, v61, v73, v176
	v_fma_f32 v61, -v71, v70, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v181, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v64, v64, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v61, v61, v69, v70
	v_fma_f32 v68, -v75, v62, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v67
	v_fmac_f32_e32 v62, v68, v62
	v_div_scale_f32 v68, s0, v171, v63, v171
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v65, v65, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v68, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v71, -v67, v69, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v75, v70, v68
	v_fmac_f32_e32 v69, v71, v69
	v_div_fixup_f32 v39, v61, v66, v175
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, s1, v170, v64, v170
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v65, v65, v164
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v165
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v72, v62
	v_mul_f32_e32 v72, v71, v69
	v_rcp_f32_e32 v74, v73
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v75, v70, v68
	v_fma_f32 v75, -v67, v72, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v39, v183, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v62, v68, v62, v70
	v_fmac_f32_e32 v72, v75, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v60, s0, v164, v65, v164
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v61, v66, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v73, v74, 1.0
	v_div_fixup_f32 v62, v62, v63, v171
	v_fma_f32 v63, -v67, v72, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v61, 1.0, v61 :: v_dual_fmac_f32 v74, v66, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v132
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v61, v61, v165
	v_div_fmas_f32 v50, v63, v69, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v60, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v66, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v50, v64, v170
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v131
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v73, v71, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v43
	v_exp_f32_e32 v69, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v64, v74
	v_fma_f32 v72, -v67, v66, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v70, v68
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v73, v71, v60
	v_fmac_f32_e32 v66, v72, v66
	v_div_scale_f32 v72, s1, v165, v61, v165
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v63, v69, v63
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v64, v72, v66
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v69, null, v73, v73, v132
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v67, v64, v72
	v_div_fmas_f32 v43, v60, v74, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v75, null, v63, v63, v131
	v_fmac_f32_e32 v64, v49, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v49, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v67, v64, v72
	v_rcp_f32_e32 v72, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v60, v60, v66, v64
	v_div_scale_f32 v64, vcc_lo, v132, v73, v132
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v69, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v49, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v60, v60, v61, v165
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v66, -v75, v72, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v74, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v49, v43, v65, v164
	v_fmac_f32_e32 v72, v66, v72
	v_div_scale_f32 v66, s0, v131, v63, v131
	v_mul_f32_e32 v71, v64, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v136, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v68, v68, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v65, v66, v72
	v_fma_f32 v60, -v69, v71, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v61, v61, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v76, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v135, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v75, v65, v66
	v_fmac_f32_e32 v71, v60, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v60, v133, v62 :: v_dual_add_f32 v61, 1.0, v61
	v_dual_mul_f32 v42, v182, v42 :: v_dual_fmac_f32 v65, v67, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v69, v71, v64
	v_div_scale_f32 v67, null, v61, v61, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v66, -v75, v65, v66
	v_div_fmas_f32 v62, v62, v70, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v56, v67
	v_fma_f32 v64, -v74, v76, 1.0
	v_div_fixup_f32 v62, v62, v73, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v76, v64, v76
	v_div_fmas_f32 v65, v66, v72, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v128
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v67, v56, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v64, s1, v130, v68, v130
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v70
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v71, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v64, v76
	v_div_scale_f32 v72, s0, v129, v61, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v127
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v63, v65, v63, v131
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v52, v69
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v74, v66, v64
	v_mul_f32_e32 v52, v72, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v69, 0xbfb8aa3b, v125 :: v_dual_fmac_f32 v66, v65, v76
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v67, v52, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	v_exp_f32_e32 v44, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v74, v66, v64
	v_div_scale_f32 v74, null, v73, v73, v128
	v_fmac_f32_e32 v52, v45, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v71, v70
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v69, v74
	v_div_fmas_f32 v64, v64, v76, v66
	v_fma_f32 v66, -v67, v52, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v44, v44, v65
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v126
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v52, v66, v56, v52
	v_div_scale_f32 v72, vcc_lo, v128, v73, v128
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v74, v69, 1.0
	v_div_fixup_f32 v44, v52, v61, v129
	v_div_scale_f32 v65, null, v67, v67, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v61, null, v71, v71, v125
	v_fmac_f32_e32 v69, v45, v69
	v_div_fixup_f32 v45, v64, v68, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v66, v65
	v_rcp_f32_e32 v68, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v56, v56, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, s0, v127, v67, v127
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v179, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v65, v66, 1.0
	v_fma_f32 v76, -v61, v68, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v66, v52, v66
	v_fmac_f32_e32 v68, v76, v68
	v_mul_f32_e32 v64, v72, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v52, v178, v63 :: v_dual_add_f32 v63, 1.0, v56
	v_mul_f32_e32 v56, v173, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, s1, v125, v71, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v74, v64, v72
	v_div_scale_f32 v77, null, v63, v63, v126
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v50, v134, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v70, v69
	v_mul_f32_e32 v70, v75, v66
	v_fma_f32 v62, -v74, v64, v72
	v_rcp_f32_e32 v74, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v72, -v65, v70, v75
	v_div_fmas_f32 v59, v62, v69, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v72, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v76, v68
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v72, -v77, v74, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v120
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v65, v70, v75
	v_div_fixup_f32 v59, v59, v73, v128
	v_fma_f32 v73, -v61, v69, v76
	v_fmac_f32_e32 v74, v72, v74
	v_div_scale_f32 v72, s2, v126, v63, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v64, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v58, v65, v66, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v65, v72, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v73, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v115
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v77, v65, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v62, v64, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v61, v69, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v55, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v62, 1.0, v62 :: v_dual_fmac_f32 v73, 0xbfb8aa3b, v99
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v58, v58, v67, v127
	v_div_fmas_f32 v61, v61, v68, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_scale_f32 v70, null, v62, v62, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v73
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v77, v65, v72
	v_rcp_f32_e32 v69, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v55, v66
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v53, v53, v74, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v68, v64
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v70, v69, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v98
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v53, v53, v63, v126
	v_div_scale_f32 v68, null, v65, v65, v115
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v64, v69
	v_div_scale_f32 v64, vcc_lo, v120, v62, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v73, v73, v99
	v_mul_f32_e32 v76, v64, v69
	v_rcp_f32_e32 v74, v68
	v_div_fixup_f32 v55, v61, v71, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v63, v75
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v53, v124, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v70, v76, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v72, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v55, v123, v55 :: v_dual_fmac_f32 v76, v61, v69
	v_mul_f32_e32 v61, v122, v58
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v58, 1.0, v66
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v75, v63, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v44, v180, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v68, v74, 1.0
	v_fma_f32 v64, -v70, v76, v64
	v_div_scale_f32 v70, s1, v99, v73, v99
	v_fmac_f32_e32 v63, v71, v63
	v_div_scale_f32 v71, null, v58, v58, v98
	v_fmac_f32_e32 v74, v67, v74
	v_div_scale_f32 v67, s0, v115, v65, v115
	v_div_fmas_f32 v64, v64, v69, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v57, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v66, v67, v74 :: v_dual_mul_f32 v69, v121, v59
	v_div_fixup_f32 v59, v64, v62, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v68, v66, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v70, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v97
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v71, v57, 1.0
	v_fmac_f32_e32 v66, v72, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v75, v76, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v54, v78
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v64, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v68, v66, v67
	v_fmac_f32_e32 v76, v62, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v96
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, s2, v98, v58, v98
	v_div_fmas_f32 v66, v67, v74, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v54, v54, v77
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_exp_f32_e32 v28, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v67, v68, v57
	v_fma_f32 v70, -v75, v76, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v71, v67, v68
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v75, null, v72, v72, v97
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v28, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v67, v54, v57 :: v_dual_fmac_f32 v74, 0xbfb8aa3b, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v62, v75
	v_div_fmas_f32 v63, v70, v63, v76
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v71, v67, v68
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v65, v66, v65, v115
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v28, v28, v96
	v_div_fmas_f32 v54, v54, v57, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v75, v62, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v57, v68
	v_div_scale_f32 v26, s0, v97, v72, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v62, v70, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v64, v66, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v63, v63, v73, v99
	v_div_fixup_f32 v54, v54, v58, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v66, v26, v62 :: v_dual_fmac_f32 v67, 0xbfb8aa3b, v95
	v_fma_f32 v70, -v68, v57, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v75, v66, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v70, v57
	v_div_scale_f32 v70, s1, v96, v28, v96
	v_div_scale_f32 v74, null, v73, v73, v94
	v_fmac_f32_e32 v66, v64, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v76, v70, v57
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v112, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v65, v74
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v58, v67, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v75, v66, v26
	v_fma_f32 v71, -v68, v76, v70
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v24
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v58, 1.0, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v26, v62, v66
	v_fmac_f32_e32 v76, v71, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v71, v103, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v74, v65, 1.0
	v_div_scale_f32 v66, null, v58, v58, v95
	v_fma_f32 v62, -v68, v76, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v65, v59, v65
	v_rcp_f32_e32 v59, v66
	v_div_fmas_f32 v24, v62, v57, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v93
	v_cndmask_b32_e64 v62, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, s0, v94, v73, v94
	v_div_fixup_f32 v26, v26, v72, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v68
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v27, v65
	v_fma_f32 v72, -v66, v59, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v24, v28, v96
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v62, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v74, v70, v27
	v_fmac_f32_e32 v59, v72, v59
	v_div_scale_f32 v72, s1, v95, v58, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_ldexp_f32 v23, v68, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v28, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v28, v72, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v21
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v62, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v74, v70, v27
	v_fma_f32 v74, -v66, v28, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v91
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v23, v23, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v57, 1.0, v57 :: v_dual_fmac_f32 v28, v74, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v62, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v21, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v57, v57, v92
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v76, s0, v92, v57, v92
	v_div_fmas_f32 v27, v27, v65, v70
	v_fma_f32 v65, -v66, v28, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v68
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v74, -v75, v21, 1.0
	v_div_fmas_f32 v28, v65, v59, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v59, v62, v67
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v90
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, vcc_lo, v93, v23, v93
	v_fmac_f32_e32 v21, v74, v21
	v_div_fixup_f32 v28, v28, v58, v95
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v62, -v68, v72, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v74, v67, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v62, v72
	v_div_fixup_f32 v27, v27, v73, v94
	v_div_scale_f32 v77, null, v70, v70, v91
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v62, v119, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v75, v74, v67
	v_mul_f32_e32 v73, v76, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v78, v77
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v59, v118, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v27, v58, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v28, v21
	v_fma_f32 v28, -v68, v73, v76
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v65, v117, v24 :: v_dual_mul_f32 v66, v116, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v75, v74, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v73, v28, v72
	v_fma_f32 v27, -v77, v78, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v28, null, v24, v24, v90
	v_div_fmas_f32 v21, v26, v21, v74
	v_fma_f32 v26, -v68, v73, v76
	v_fmac_f32_e32 v78, v27, v78
	v_div_scale_f32 v27, s1, v91, v70, v91
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v20, v26, v72, v73
	v_mul_f32_e32 v26, v27, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v58, v28
	v_div_fixup_f32 v21, v21, v23, v93
	v_div_fixup_f32 v20, v20, v57, v92
	v_fma_f32 v4, -v77, v26, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v89
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v26, v4, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v4, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v3, -v28, v58, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v88
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s2
	v_exp_f32_e32 v2, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v77, v26, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v86
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v3, v58
	v_div_scale_f32 v73, s0, v90, v24, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v85
	v_ldexp_f32 v4, v4, v67
	v_exp_f32_e32 v67, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v2, v2, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v27, v78, v26
	v_mul_f32_e32 v27, v73, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v23, v57
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v4, 1.0, v4
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v26, v70, v91
	v_fma_f32 v72, -v28, v27, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v67, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v57, null, v4, v4, v89
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v27, v72, v58
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v3, v23, v3
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v75, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v57
	v_div_scale_f32 v23, null, v2, v2, v88
	v_fma_f32 v28, -v28, v27, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v3, 1.0, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v75, v75, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v73, v23
	v_div_fmas_f32 v27, v28, v58, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v28, null, v3, v3, v85
	v_rcp_f32_e32 v76, v74
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v57, v70, 1.0
	v_div_scale_f32 v58, vcc_lo, v89, v4, v89
	v_rcp_f32_e32 v77, v28
	v_div_fixup_f32 v24, v27, v24, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fmac_f32_e32 v70, v67, v70
	v_fma_f32 v67, -v23, v73, 1.0
	v_div_scale_f32 v79, s0, v88, v2, v88
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v27, -v74, v76, 1.0
	v_dual_mul_f32 v78, v58, v70 :: v_dual_fmac_f32 v73, v67, v73
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v67, v111, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v28, v77, 1.0
	v_fmac_f32_e32 v76, v27, v76
	v_div_scale_f32 v27, s1, v86, v75, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v54, v114, v54 :: v_dual_fmac_f32 v77, v68, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v57, v78, v58
	v_mul_f32_e32 v80, v79, v73
	v_div_scale_f32 v82, s2, v85, v3, v85
	v_dual_mul_f32 v81, v27, v76 :: v_dual_fmac_f32 v78, v24, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v24, -v23, v80, v79
	v_mul_f32_e32 v83, v82, v77
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v110, v26
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v74, v81, v27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v72, v109, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v80, v24, v73
	v_fma_f32 v24, -v28, v83, v82
	v_fma_f32 v20, -v57, v78, v58
	v_fmac_f32_e32 v81, v26, v76
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v63, v113, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v23, -v23, v80, v79
	v_fmac_f32_e32 v83, v24, v77
	v_div_fmas_f32 v20, v20, v70, v78
	v_fma_f32 v24, -v74, v81, v27
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v74, v108, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v28, v83, v82
	v_div_fmas_f32 v23, v23, v73, v80
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v4, v20, v4, v89
	v_div_fmas_f32 v24, v24, v76, v81
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v2, v23, v2, v88
	v_div_fmas_f32 v26, v26, v77, v83
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v21, |v33|, |v29|
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v20, v24, v75, v86
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v23, |v25|, |v37|, |v36|
	v_max3_f32 v24, |v48|, |v40|, |v38|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v3, v26, v3, v85
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, |v32|, |v18|, |v16|
.Ltmp12:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v58, v102, v20
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v20, v21, |v22|, v23
	v_max_f32_e64 v23, |v46|, |v41|
	v_max3_f32 v27, |v60|, |v50|, |v49|
	v_max3_f32 v21, v24, v26, |v17|
	v_max3_f32 v24, |v35|, |v51|, |v47|
	v_max3_f32 v28, |v43|, |v14|, |v13|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v57, v87, v3
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, |v31|, |v30|, |v19|
	v_max3_f32 v26, |v42|, |v39|, |v15|
	v_max_f32_e64 v70, |v56|, |v52|
	v_max3_f32 v73, |v45|, |v69|, |v61|
	v_max3_f32 v75, |v71|, |v64|, |v63|
	v_max3_f32 v76, |v54|, |v10|, |v8|
	v_max3_f32 v23, v23, |v34|, v24
	v_max3_f32 v24, v27, v28, |v12|
	v_max3_f32 v27, |v55|, |v53|, |v11|
	v_max3_f32 v28, v70, |v44|, v73
	v_max3_f32 v75, v75, v76, |v9|
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v70, v101, v2 :: v_dual_mul_f32 v73, v100, v4
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v20, v3, v21
	v_max3_f32 v3, v23, v26, v24
	v_max_f32_e64 v20, |v66|, |v65|
	v_max3_f32 v21, |v59|, |v74|, |v72|
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v4, v28, v27, v75
	v_max3_f32 v24, |v73|, |v70|, |v58|
	v_max3_f32 v26, |v57|, |v0|, |v5|
	v_max3_f32 v20, v20, |v62|, v21
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v21, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v3, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v23, |v68|, |v67|, |v7|
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v28, v4, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v24, v24, v26, |v6|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v26, v27, v27
	v_max_f32_e32 v27, v28, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v20, v20, v23, v24
	v_dual_max_f32 v75, v2, v21 :: v_dual_max_f32 v76, v3, v26
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt vmcnt(4)
	v_and_b32_e32 v21, 4, v104
	s_waitcnt vmcnt(0)
	v_lshl_add_u32 v3, v84, 9, 0
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v77, v4, v27 :: v_dual_lshlrev_b32 v24, 5, v84
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v2, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v27, 0x60, v104
	v_and_b32_e32 v23, 0x80, v104
	v_and_b32_e32 v28, 8, v104
	v_lshl_add_u32 v3, v21, 2, v3
	v_and_or_b32 v1, 0x680, v1, v24
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v26, 1, v23
	v_xor_b32_e32 v4, v24, v27
	v_lshl_add_u32 v3, v28, 4, v3
	v_lshrrev_b32_e32 v79, 3, v23
	v_xor_b32_e32 v1, v1, v27
	v_lshl_add_u32 v80, v21, 6, 0
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v20, v2
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v3, v26, v4
	v_lshlrev_b32_e32 v28, 3, v28
	v_add_nc_u32_e32 v23, 0, v23
	v_add3_u32 v1, v80, v79, v1
	ds_store_b128 v2, v[75:78]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v20, v1
	v_dual_mov_b32 v76, v3 :: v_dual_mov_b32 v75, v2
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
	v_max_f32_e32 v77, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v76, v76 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v75, v75 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v20, v20, v20
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v1, v1, v20
	v_max_f32_e32 v20, v76, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v2, v2, v75
	v_max_f32_e32 v4, v77, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v75, v1
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v20 :: v_dual_mov_b32 v76, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v77, v4
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v20, v3
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v76, v76, v76 :: v_dual_max_f32 v1, v1, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v20, v20, v20 :: v_dual_max_f32 v75, v77, v77
	v_max_f32_e32 v2, v2, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v76, v1 :: v_dual_max_f32 v3, v3, v20
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v75 :: v_dual_mov_b32 v77, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v20, v3 :: v_dual_mov_b32 v75, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v76, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v75, v75 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v77, v77, v77
	v_max_f32_e32 v1, v1, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v20, v20, v20 :: v_dual_max_f32 v75, v75, v75
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v76, 1, v27
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v77 :: v_dual_max_f32 v3, v3, v20
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v20, 5, v21
	v_lshl_add_u32 v21, v84, 4, 0
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v75
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v23, v23, v76, v28
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v20, v21, v20, v28
	ds_store_b128 v23, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[75:78], v20
.Ltmp49:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v23, 4, v106
	v_and_b32_e32 v20, 63, v104
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 48, v23
	v_or_b32_e32 v80, 32, v23
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v75, v75
	v_dual_max_f32 v77, v77, v77 :: v_dual_max_f32 v76, v76, v76
	v_dual_max_f32 v78, v78, v78 :: v_dual_max_f32 v21, 0x2b8cbccc, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v77, 0x2b8cbccc, v77
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s24, v20
	v_add_co_ci_u32_e64 v2, null, s25, 0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v28, null, 0x40e00000, 0x40e00000, v21
	v_div_scale_f32 v81, vcc_lo, v21, 0x40e00000, v21
	v_div_scale_f32 v82, null, 0x40e00000, 0x40e00000, v77
	v_rcp_f32_e32 v75, v28
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s0, s24, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s25, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v84, v82
	v_max_f32_e32 v76, 0x2b8cbccc, v76
	v_max_f32_e32 v78, 0x2b8cbccc, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[28:29], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v79, -v28, v75, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v86, null, 0x40e00000, 0x40e00000, v76
	v_div_scale_f32 v87, null, 0x40e00000, 0x40e00000, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v79, v75
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v79, s0, s24, v80
	v_add_co_ci_u32_e64 v80, null, s25, 0, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v83, v81, v75
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[26:27], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v85, -v82, v84, 1.0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 16, v23
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[26:27], v[79:80]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v28, v83, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v85, v84
	v_div_scale_f32 v85, s6, v77, 0x40e00000, v77
	v_fmac_f32_e32 v83, v3, v75
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s3, s24, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s25, 0, s3
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v28, -v28, v83, v81
	v_rcp_f32_e32 v81, v86
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[28:29], v[79:80]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v80.h, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[26:27], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v28, v28, v75, v83
	v_mul_f32_e32 v75, v85, v84
	v_rcp_f32_e32 v83, v87
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[28:29], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v21, v28, 0x40e00000, v21
	v_fma_f32 v79, -v86, v81, 1.0
	v_fma_f32 v28, -v82, v75, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v79, v81
	v_div_scale_f32 v79, s7, v76, 0x40e00000, v76
	v_fmac_f32_e32 v75, v28, v84
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v28.l, v21.h
	v_mov_b16_e32 v28.h, v80.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v88, -v87, v83, 1.0
	v_mul_f32_e32 v89, v79, v81
	v_fma_f32 v3, -v82, v75, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v83, v88, v83 :: v_dual_and_b32 v4, 1, v28
	v_div_scale_f32 v88, s8, v78, 0x40e00000, v78
	v_fma_f32 v28, -v86, v89, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v21, v21, v4, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v75, v3, v84, v75
	v_mul_f32_e32 v82, v88, v83
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v89, v28, v81
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v84, 0xffff0000, v21
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v75, v75, 0x40e00000, v77
	v_fma_f32 v28, -v87, v82, v88
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s24, v23
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v77, -v86, v89, v79
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v79, null, v84, v84, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v82, v28, v83
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s25, 0, s6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v28, v77, v81, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v81, v79
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v77, -v87, v82, v88
	s_mov_b32 vcc_lo, s8
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v80.l, v75.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v28, v28, 0x40e00000, v76
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[26:27], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v76, v77, v83, v82
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v82, null, v84, v84, v29
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v77, 1, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v79, v81, 1.0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v76, v76, 0x40e00000, v78
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v78.l, v28.h
	v_mov_b16_e32 v78.h, v80.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v85, v82
	v_fmac_f32_e32 v81, v83, v81
	v_div_scale_f32 v83, vcc_lo, v33, v84, v33
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[28:29], v[3:4]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v80.l, v76.h
	v_and_b32_e32 v4, 1, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v78, v83, v81
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v75, v77, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v86, null, v84, v84, v22
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v77, 1, v80
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v79, v78, v83
	v_div_scale_f32 v88, null, v84, v84, v25
	v_fma_f32 v75, -v82, v85, 1.0
	v_rcp_f32_e32 v87, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v80, v81
	v_rcp_f32_e32 v80, v88
	v_div_scale_f32 v89, s8, v29, v84, v29
	v_fmac_f32_e32 v85, v75, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v79, v78, v83
	v_div_scale_f32 v93, null, v84, v84, v37
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v28, v28, v4, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v90, v89, v85
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v91, -v86, v87, 1.0
	v_fma_f32 v92, -v88, v80, 1.0
	v_div_fmas_f32 v78, v79, v81, v78
	v_rcp_f32_e32 v81, v93
	v_fma_f32 v83, -v82, v90, v89
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s9, v22, v84, v22
	v_fmac_f32_e32 v80, v92, v80
	v_div_scale_f32 v92, null, v84, v84, v36
	v_fmac_f32_e32 v90, v83, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v79, v91, v87
	v_div_scale_f32 v83, s10, v25, v84, v25
	v_rcp_f32_e32 v94, v92
	v_div_fixup_f32 v33, v78, v84, v33
	v_fma_f32 v78, -v82, v90, v89
	v_fma_f32 v82, -v86, v79, v91
	v_mul_f32_e32 v89, v83, v80
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v95, -v93, v81, 1.0
	v_div_fmas_f32 v78, v78, v85, v90
	v_fmac_f32_e32 v79, v82, v87
	v_fma_f32 v82, -v88, v89, v83
	v_fma_f32 v90, -v92, v94, 1.0
	v_fmac_f32_e32 v81, v95, v81
	v_div_scale_f32 v85, s8, v37, v84, v37
	v_div_fixup_f32 v29, v78, v84, v29
	v_fma_f32 v78, -v86, v79, v91
	v_fmac_f32_e32 v89, v82, v80
	v_fmac_f32_e32 v94, v90, v94
	v_div_scale_f32 v90, null, v84, v84, v31
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v82, v85, v81
	v_div_scale_f32 v86, s11, v36, v84, v36
	v_div_fmas_f32 v78, v78, v87, v79
	v_fma_f32 v79, -v88, v89, v83
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v91, null, v84, v84, v30
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v83, -v93, v82, v85
	v_mul_f32_e32 v88, v86, v94
	v_div_fmas_f32 v79, v79, v80, v89
	v_rcp_f32_e32 v80, v91
	v_div_fixup_f32 v22, v78, v84, v22
	v_fmac_f32_e32 v82, v83, v81
	v_fma_f32 v83, -v92, v88, v86
	v_fma_f32 v89, -v90, v87, 1.0
	v_div_fixup_f32 v25, v79, v84, v25
	v_div_scale_f32 v79, s9, v31, v84, v31
	v_fma_f32 v78, -v93, v82, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v88, v83, v94 :: v_dual_fmac_f32 v87, v89, v87
	v_fma_f32 v83, -v91, v80, 1.0
	v_div_scale_f32 v85, null, v84, v84, v19
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v89, null, v84, v84, v48
	v_div_fmas_f32 v78, v78, v81, v82
	v_fma_f32 v81, -v92, v88, v86
	v_mul_f32_e32 v82, v79, v87
	v_fmac_f32_e32 v80, v83, v80
	v_rcp_f32_e32 v83, v85
	v_div_scale_f32 v86, s8, v30, v84, v30
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v37, v78, v84, v37
	v_div_fmas_f32 v81, v81, v94, v88
	v_fma_f32 v88, -v90, v82, v79
	v_mul_f32_e32 v92, v86, v80
	v_rcp_f32_e32 v94, v89
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v85, v83, 1.0
	v_fmac_f32_e32 v82, v88, v87
	v_fma_f32 v78, -v91, v92, v86
	v_div_scale_f32 v88, null, v84, v84, v40
	v_div_fixup_f32 v36, v81, v84, v36
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v81, s10, v19, v84, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v89, v94, 1.0
	v_fma_f32 v79, -v90, v82, v79
	v_fmac_f32_e32 v92, v78, v80
	v_rcp_f32_e32 v90, v88
	v_mul_f32_e32 v78, v81, v83
	v_fmac_f32_e32 v94, v93, v94
	v_div_scale_f32 v93, s11, v48, v84, v48
	v_div_fmas_f32 v79, v79, v87, v82
	v_fma_f32 v82, -v91, v92, v86
	v_div_scale_f32 v95, null, v84, v84, v38
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v86, -v85, v78, v81
	v_mul_f32_e32 v87, v93, v94
	v_fma_f32 v91, -v88, v90, 1.0
	v_div_fmas_f32 v80, v82, v80, v92
	v_rcp_f32_e32 v82, v95
	v_fmac_f32_e32 v78, v86, v83
	v_fma_f32 v86, -v89, v87, v93
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, s8, v40, v84, v40
	v_div_fixup_f32 v31, v79, v84, v31
	v_div_fixup_f32 v30, v80, v84, v30
	v_fma_f32 v79, -v85, v78, v81
	v_fmac_f32_e32 v87, v86, v94
	v_mul_f32_e32 v80, v91, v90
	v_fma_f32 v81, -v95, v82, 1.0
	v_div_scale_f32 v85, null, v84, v84, v32
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v86, s9, v38, v84, v38
	v_div_fmas_f32 v78, v79, v83, v78
	v_fma_f32 v79, -v89, v87, v93
	v_fma_f32 v83, -v88, v80, v91
	v_fmac_f32_e32 v82, v81, v82
	v_rcp_f32_e32 v81, v85
	v_div_scale_f32 v89, null, v84, v84, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v83, v90
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v19, v78, v84, v19
	v_rcp_f32_e32 v83, v89
	v_div_fmas_f32 v79, v79, v94, v87
	v_mul_f32_e32 v87, v86, v82
	v_fma_f32 v78, -v88, v80, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v85, v81, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v48, v79, v84, v48
	v_fma_f32 v79, -v95, v87, v86
	v_div_scale_f32 v88, s10, v32, v84, v32
	v_fmac_f32_e32 v81, v92, v81
	v_fma_f32 v91, -v89, v83, 1.0
	v_div_scale_f32 v92, null, v84, v84, v16
	v_div_fmas_f32 v78, v78, v90, v80
	v_fmac_f32_e32 v87, v79, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v91, v83
	v_rcp_f32_e32 v80, v92
	v_div_scale_f32 v91, null, v84, v84, v17
	v_mul_f32_e32 v79, v88, v81
	v_div_scale_f32 v90, s8, v18, v84, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v94, v91
	v_div_fixup_f32 v40, v78, v84, v40
	v_fma_f32 v78, -v95, v87, v86
	v_fma_f32 v86, -v85, v79, v88
	v_mul_f32_e32 v93, v90, v83
	v_fma_f32 v95, -v92, v80, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v76, v77, 0x7fff
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v77, 0xffff0000, v28
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v82, v87
	v_fmac_f32_e32 v79, v86, v81
	v_fma_f32 v82, -v89, v93, v90
	v_fmac_f32_e32 v80, v95, v80
	v_div_scale_f32 v86, s9, v16, v84, v16
	v_fma_f32 v87, -v91, v94, 1.0
	v_div_fixup_f32 v38, v78, v84, v38
	v_fma_f32 v78, -v85, v79, v88
	v_fmac_f32_e32 v93, v82, v83
	v_mul_f32_e32 v82, v86, v80
	v_fmac_f32_e32 v94, v87, v94
	v_div_scale_f32 v87, null, v77, v77, v46
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v85, s11, v17, v84, v17
	v_div_fmas_f32 v78, v78, v81, v79
	v_fma_f32 v79, -v89, v93, v90
	v_fma_f32 v81, -v92, v82, v86
	v_rcp_f32_e32 v88, v87
	v_div_scale_f32 v90, null, v77, v77, v41
	v_mul_f32_e32 v89, v85, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v81, v80
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v81, v90
	v_div_fmas_f32 v79, v79, v83, v93
	v_fma_f32 v83, -v91, v89, v85
	v_div_fixup_f32 v32, v78, v84, v32
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v87, v88, 1.0
	v_fma_f32 v78, -v92, v82, v86
	v_div_fixup_f32 v18, v79, v84, v18
	v_fmac_f32_e32 v89, v83, v94
	v_div_scale_f32 v79, s8, v46, v77, v46
	v_fmac_f32_e32 v88, v93, v88
	v_fma_f32 v83, -v90, v81, 1.0
	v_div_scale_f32 v86, null, v77, v77, v34
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v75, 0xffff0000, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v80, v82
	v_fma_f32 v80, -v91, v89, v85
	v_mul_f32_e32 v82, v79, v88
	v_fmac_f32_e32 v81, v83, v81
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v85, s9, v41, v77, v41
	v_div_scale_f32 v91, null, v77, v77, v35
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v92, v85, v81
	v_div_fmas_f32 v80, v80, v94, v89
	v_fma_f32 v89, -v87, v82, v79
	v_rcp_f32_e32 v94, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v86, v83, 1.0
	v_div_fixup_f32 v16, v78, v84, v16
	v_fma_f32 v78, -v90, v92, v85
	v_fmac_f32_e32 v82, v89, v88
	v_div_fixup_f32 v17, v80, v84, v17
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v80, s10, v34, v77, v34
	v_div_scale_f32 v84, null, v77, v77, v51
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v91, v94, 1.0
	v_fma_f32 v79, -v87, v82, v79
	v_fmac_f32_e32 v92, v78, v81
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v78, v80, v83
	v_rcp_f32_e32 v87, v84
	v_fmac_f32_e32 v94, v89, v94
	v_div_scale_f32 v89, s11, v35, v77, v35
	v_div_fmas_f32 v79, v79, v88, v82
	v_fma_f32 v82, -v90, v92, v85
	v_div_scale_f32 v93, null, v77, v77, v47
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v85, -v86, v78, v80
	v_mul_f32_e32 v88, v89, v94
	v_div_fmas_f32 v81, v82, v81, v92
	v_rcp_f32_e32 v82, v93
	v_fma_f32 v90, -v84, v87, 1.0
	v_fmac_f32_e32 v78, v85, v83
	v_fma_f32 v85, -v91, v88, v89
	v_div_fixup_f32 v41, v81, v77, v41
	v_div_fixup_f32 v46, v79, v77, v46
	v_fmac_f32_e32 v87, v90, v87
	v_div_scale_f32 v90, s8, v51, v77, v51
	v_fmac_f32_e32 v88, v85, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v93, v82, 1.0
	v_div_scale_f32 v85, null, v77, v77, v42
	v_fma_f32 v79, -v86, v78, v80
	v_mul_f32_e32 v80, v90, v87
	v_fmac_f32_e32 v82, v81, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v81, v85
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v86, s9, v47, v77, v47
	v_div_fmas_f32 v78, v79, v83, v78
	v_fma_f32 v79, -v91, v88, v89
	v_fma_f32 v83, -v84, v80, v90
	v_div_scale_f32 v89, null, v77, v77, v39
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v85, v81, 1.0
	v_fmac_f32_e32 v80, v83, v87
	v_rcp_f32_e32 v83, v89
	v_div_fmas_f32 v79, v79, v94, v88
	v_mul_f32_e32 v88, v86, v82
	v_div_fixup_f32 v34, v78, v77, v34
	v_fma_f32 v78, -v84, v80, v90
	v_fmac_f32_e32 v81, v91, v81
	v_div_scale_f32 v91, null, v77, v77, v15
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v35, v79, v77, v35
	v_fma_f32 v79, -v93, v88, v86
	v_div_scale_f32 v84, s10, v42, v77, v42
	v_fma_f32 v90, -v89, v83, 1.0
	v_div_fmas_f32 v78, v78, v87, v80
	v_rcp_f32_e32 v80, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v88, v79, v82 :: v_dual_mul_f32 v79, v84, v81
	v_fmac_f32_e32 v83, v90, v83
	v_div_scale_f32 v87, s8, v39, v77, v39
	v_div_scale_f32 v90, null, v77, v77, v60
	v_div_fixup_f32 v51, v78, v77, v51
	v_fma_f32 v78, -v93, v88, v86
	v_fma_f32 v86, -v85, v79, v84
	v_mul_f32_e32 v92, v87, v83
	v_rcp_f32_e32 v93, v90
	v_fma_f32 v94, -v91, v80, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v79, v86, v81
	v_div_fmas_f32 v78, v78, v82, v88
	v_fma_f32 v82, -v89, v92, v87
	v_fmac_f32_e32 v80, v94, v80
	v_div_scale_f32 v86, s9, v15, v77, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v47, v78, v77, v47
	v_fma_f32 v88, -v90, v93, 1.0
	v_fma_f32 v78, -v85, v79, v84
	v_fmac_f32_e32 v92, v82, v83
	v_mul_f32_e32 v82, v86, v80
	v_div_scale_f32 v85, null, v77, v77, v50
	s_mov_b32 vcc_lo, s10
	v_dual_fmac_f32 v93, v88, v93 :: v_dual_and_b32 v76, 0xffff0000, v3
	v_div_scale_f32 v84, s11, v60, v77, v60
	v_div_fmas_f32 v78, v78, v81, v79
	v_fma_f32 v79, -v89, v92, v87
	v_fma_f32 v81, -v91, v82, v86
	v_rcp_f32_e32 v87, v85
	v_div_scale_f32 v89, null, v77, v77, v49
	v_mul_f32_e32 v88, v84, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v81, v80
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v81, v89
	v_div_fmas_f32 v79, v79, v83, v92
	v_fma_f32 v83, -v90, v88, v84
	v_div_fixup_f32 v42, v78, v77, v42
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v85, v87, 1.0
	v_fma_f32 v78, -v91, v82, v86
	v_div_fixup_f32 v39, v79, v77, v39
	v_fmac_f32_e32 v88, v83, v93
	v_div_scale_f32 v79, s8, v50, v77, v50
	v_fmac_f32_e32 v87, v92, v87
	v_fma_f32 v83, -v89, v81, 1.0
	v_div_scale_f32 v86, null, v77, v77, v43
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v94, null, v77, v77, v12
	v_div_fmas_f32 v78, v78, v80, v82
	v_fma_f32 v80, -v90, v88, v84
	v_mul_f32_e32 v82, v79, v87
	v_fmac_f32_e32 v81, v83, v81
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v84, s9, v49, v77, v49
	v_div_scale_f32 v90, null, v77, v77, v14
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v91, v84, v81
	v_div_fmas_f32 v80, v80, v93, v88
	v_fma_f32 v88, -v85, v82, v79
	v_rcp_f32_e32 v93, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v86, v83, 1.0
	v_div_fixup_f32 v15, v78, v77, v15
	v_fma_f32 v78, -v89, v91, v84
	v_fmac_f32_e32 v82, v88, v87
	v_div_fixup_f32 v60, v80, v77, v60
	v_fmac_f32_e32 v83, v92, v83
	v_div_scale_f32 v80, s10, v43, v77, v43
	v_div_scale_f32 v88, null, v77, v77, v13
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v90, v93, 1.0
	v_fma_f32 v79, -v85, v82, v79
	v_fmac_f32_e32 v91, v78, v81
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v78, v80, v83
	v_rcp_f32_e32 v85, v88
	v_fmac_f32_e32 v93, v92, v93
	v_div_scale_f32 v92, s11, v14, v77, v14
	v_div_fmas_f32 v79, v79, v87, v82
	v_fma_f32 v82, -v89, v91, v84
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v84, -v86, v78, v80
	v_mul_f32_e32 v87, v92, v93
	v_div_fixup_f32 v50, v79, v77, v50
	v_div_fmas_f32 v81, v82, v81, v91
	v_rcp_f32_e32 v82, v94
	v_fma_f32 v89, -v88, v85, 1.0
	v_fmac_f32_e32 v78, v84, v83
	v_fma_f32 v84, -v90, v87, v92
	v_div_fixup_f32 v49, v81, v77, v49
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v89, s8, v13, v77, v13
	v_fmac_f32_e32 v87, v84, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v94, v82, 1.0
	v_div_scale_f32 v84, null, v76, v76, v56
	v_fma_f32 v79, -v86, v78, v80
	v_mul_f32_e32 v80, v89, v85
	v_fmac_f32_e32 v82, v81, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v86, s9, v12, v77, v12
	v_div_fmas_f32 v78, v79, v83, v78
	v_fma_f32 v79, -v90, v87, v92
	v_fma_f32 v83, -v88, v80, v89
	v_div_scale_f32 v90, null, v76, v76, v52
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v43, v78, v77, v43
	v_fmac_f32_e32 v80, v83, v85
	v_rcp_f32_e32 v83, v90
	v_fma_f32 v91, -v84, v81, 1.0
	v_div_fmas_f32 v79, v79, v93, v87
	v_mul_f32_e32 v87, v86, v82
	v_fma_f32 v78, -v88, v80, v89
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v81, v91, v81
	v_div_scale_f32 v91, null, v76, v76, v44
	v_div_fixup_f32 v14, v79, v77, v14
	v_fma_f32 v79, -v94, v87, v86
	v_div_scale_f32 v88, s10, v56, v76, v56
	v_fma_f32 v89, -v90, v83, 1.0
	v_div_fmas_f32 v78, v78, v85, v80
	v_rcp_f32_e32 v80, v91
	v_fmac_f32_e32 v87, v79, v82
	v_mul_f32_e32 v79, v88, v81
	v_fmac_f32_e32 v83, v89, v83
	v_div_scale_f32 v85, s8, v52, v76, v52
	v_div_scale_f32 v89, null, v76, v76, v45
	v_div_fixup_f32 v13, v78, v77, v13
	v_fma_f32 v78, -v94, v87, v86
	v_fma_f32 v86, -v84, v79, v88
	v_mul_f32_e32 v92, v85, v83
	v_rcp_f32_e32 v93, v89
	v_fma_f32 v94, -v91, v80, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v79, v86, v81
	v_div_fmas_f32 v78, v78, v82, v87
	v_fma_f32 v82, -v90, v92, v85
	v_fmac_f32_e32 v80, v94, v80
	v_div_scale_f32 v86, s9, v44, v76, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v12, v78, v77, v12
	v_fma_f32 v87, -v89, v93, 1.0
	v_fma_f32 v77, -v84, v79, v88
	v_fmac_f32_e32 v92, v82, v83
	v_mul_f32_e32 v78, v86, v80
	v_div_scale_f32 v84, null, v76, v76, v69
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v93, v87, v93
	v_div_scale_f32 v82, s11, v45, v76, v45
	v_div_fmas_f32 v77, v77, v81, v79
	v_fma_f32 v79, -v90, v92, v85
	v_fma_f32 v81, -v91, v78, v86
	v_rcp_f32_e32 v85, v84
	v_div_scale_f32 v88, null, v76, v76, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v87, v82, v93 :: v_dual_fmac_f32 v78, v81, v80
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v81, v88
	v_div_fmas_f32 v79, v79, v83, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v83, -v89, v87, v82
	v_div_fixup_f32 v56, v77, v76, v56
	v_fma_f32 v90, -v84, v85, 1.0
	v_fma_f32 v77, -v91, v78, v86
	v_div_fixup_f32 v52, v79, v76, v52
	v_fmac_f32_e32 v87, v83, v93
	v_div_scale_f32 v79, s8, v69, v76, v69
	v_fmac_f32_e32 v85, v90, v85
	v_fma_f32 v83, -v88, v81, 1.0
	v_div_scale_f32 v86, null, v76, v76, v55
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v80, v78
	v_fma_f32 v78, -v89, v87, v82
	v_mul_f32_e32 v80, v79, v85
	v_fmac_f32_e32 v81, v83, v81
	v_rcp_f32_e32 v82, v86
	v_div_scale_f32 v83, s9, v61, v76, v61
	v_div_scale_f32 v89, null, v76, v76, v53
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v90, v83, v81
	v_div_fmas_f32 v78, v78, v93, v87
	v_fma_f32 v87, -v84, v80, v79
	v_rcp_f32_e32 v92, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v86, v82, 1.0
	v_div_fixup_f32 v44, v77, v76, v44
	v_fma_f32 v77, -v88, v90, v83
	v_fmac_f32_e32 v80, v87, v85
	v_div_scale_f32 v87, null, v76, v76, v11
	v_div_fixup_f32 v45, v78, v76, v45
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v78, s10, v55, v76, v55
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v89, v92, 1.0
	v_fma_f32 v79, -v84, v80, v79
	v_fmac_f32_e32 v90, v77, v81
	v_rcp_f32_e32 v84, v87
	s_mov_b32 vcc_lo, s8
	v_dual_mul_f32 v77, v78, v82 :: v_dual_fmac_f32 v92, v91, v92
	v_div_scale_f32 v91, s11, v53, v76, v53
	v_div_fmas_f32 v79, v79, v85, v80
	v_fma_f32 v80, -v88, v90, v83
	v_div_scale_f32 v93, null, v76, v76, v71
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v83, -v86, v77, v78
	v_mul_f32_e32 v85, v91, v92
	v_fma_f32 v88, -v87, v84, 1.0
	v_div_fmas_f32 v80, v80, v81, v90
	v_rcp_f32_e32 v81, v93
	v_fmac_f32_e32 v77, v83, v82
	v_fma_f32 v83, -v89, v85, v91
	v_fmac_f32_e32 v84, v88, v84
	v_div_scale_f32 v88, s8, v11, v76, v11
	v_div_fixup_f32 v69, v79, v76, v69
	v_div_fixup_f32 v61, v80, v76, v61
	v_fma_f32 v78, -v86, v77, v78
	v_fmac_f32_e32 v85, v83, v92
	v_mul_f32_e32 v79, v88, v84
	v_fma_f32 v80, -v93, v81, 1.0
	v_div_scale_f32 v83, null, v76, v76, v64
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v86, s9, v71, v76, v71
	v_div_fmas_f32 v77, v78, v82, v77
	v_fma_f32 v78, -v89, v85, v91
	v_fma_f32 v82, -v87, v79, v88
	v_fmac_f32_e32 v81, v80, v81
	v_rcp_f32_e32 v80, v83
	v_div_scale_f32 v89, null, v76, v76, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v82, v84
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v55, v77, v76, v55
	v_rcp_f32_e32 v82, v89
	v_div_fmas_f32 v78, v78, v92, v85
	v_mul_f32_e32 v85, v86, v81
	v_fma_f32 v77, -v87, v79, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v83, v80, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v53, v78, v76, v53
	v_fma_f32 v78, -v93, v85, v86
	v_div_scale_f32 v87, s10, v64, v76, v64
	v_fmac_f32_e32 v80, v90, v80
	v_fma_f32 v88, -v89, v82, 1.0
	v_div_scale_f32 v90, null, v76, v76, v54
	v_div_fmas_f32 v77, v77, v84, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v85, v78, v81 :: v_dual_fmac_f32 v82, v88, v82
	v_rcp_f32_e32 v79, v90
	v_div_scale_f32 v88, null, v76, v76, v10
	v_mul_f32_e32 v78, v87, v80
	v_div_scale_f32 v84, s8, v63, v76, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v92, v88
	v_div_fixup_f32 v11, v77, v76, v11
	v_fma_f32 v77, -v93, v85, v86
	v_fma_f32 v86, -v83, v78, v87
	v_mul_f32_e32 v91, v84, v82
	v_fma_f32 v93, -v90, v79, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v81, v85
	v_fmac_f32_e32 v78, v86, v80
	v_fma_f32 v81, -v89, v91, v84
	v_fmac_f32_e32 v79, v93, v79
	v_div_scale_f32 v85, s9, v54, v76, v54
	v_fma_f32 v86, -v88, v92, 1.0
	v_div_fixup_f32 v71, v77, v76, v71
	v_fma_f32 v77, -v83, v78, v87
	v_fmac_f32_e32 v91, v81, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v81, v85, v79 :: v_dual_fmac_f32 v92, v86, v92
	v_div_scale_f32 v86, null, v76, v76, v8
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v83, s11, v10, v76, v10
	v_div_fmas_f32 v77, v77, v80, v78
	v_fma_f32 v78, -v89, v91, v84
	v_fma_f32 v80, -v90, v81, v85
	v_rcp_f32_e32 v84, v86
	v_div_scale_f32 v89, null, v76, v76, v9
	v_mul_f32_e32 v87, v83, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v80, v79
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v80, v89
	v_div_fmas_f32 v78, v78, v82, v91
	v_fma_f32 v82, -v88, v87, v83
	v_div_fixup_f32 v64, v77, v76, v64
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v86, v84, 1.0
	v_fma_f32 v77, -v90, v81, v85
	v_div_fixup_f32 v63, v78, v76, v63
	v_fmac_f32_e32 v87, v82, v92
	v_div_scale_f32 v78, s8, v8, v76, v8
	v_fmac_f32_e32 v84, v91, v84
	v_fma_f32 v82, -v89, v80, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v90, null, v75, v75, v65
	v_div_fmas_f32 v77, v77, v79, v81
	v_fma_f32 v79, -v88, v87, v83
	v_mul_f32_e32 v81, v78, v84
	v_fmac_f32_e32 v80, v82, v80
	v_div_scale_f32 v82, null, v75, v75, v66
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v83, s9, v9, v76, v9
	v_div_fmas_f32 v79, v79, v92, v87
	v_rcp_f32_e32 v85, v82
	v_fma_f32 v87, -v86, v81, v78
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v88, v83, v80
	v_div_fixup_f32 v54, v77, v76, v54
	v_div_fixup_f32 v10, v79, v76, v10
	v_rcp_f32_e32 v79, v90
	v_fmac_f32_e32 v81, v87, v84
	v_fma_f32 v77, -v89, v88, v83
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v92, null, v75, v75, v59
	v_fma_f32 v87, -v82, v85, 1.0
	v_fma_f32 v78, -v86, v81, v78
	v_div_scale_f32 v86, null, v75, v75, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v88, v77, v80 :: v_dual_fmac_f32 v85, v87, v85
	v_div_scale_f32 v77, s10, v66, v75, v66
	v_rcp_f32_e32 v87, v86
	v_fma_f32 v91, -v90, v79, 1.0
	v_div_fmas_f32 v78, v78, v84, v81
	v_fma_f32 v81, -v89, v88, v83
	v_mul_f32_e32 v83, v77, v85
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v79, v91, v79
	v_div_scale_f32 v84, s8, v65, v75, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v91, -v82, v83, v77
	v_fma_f32 v89, -v86, v87, 1.0
	v_rcp_f32_e32 v94, v92
	v_div_fmas_f32 v80, v81, v80, v88
	v_mul_f32_e32 v93, v84, v79
	v_fmac_f32_e32 v83, v91, v85
	v_fmac_f32_e32 v87, v89, v87
	v_div_scale_f32 v89, s11, v62, v75, v62
	v_div_fixup_f32 v8, v78, v76, v8
	v_div_fixup_f32 v9, v80, v76, v9
	v_fma_f32 v76, -v82, v83, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v88, v89, v87
	v_div_scale_f32 v80, null, v75, v75, v74
	v_fma_f32 v81, -v90, v93, v84
	v_fma_f32 v78, -v92, v94, 1.0
	v_fma_f32 v77, -v86, v88, v89
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v93, v81, v79 :: v_dual_fmac_f32 v94, v78, v94
	v_fmac_f32_e32 v88, v77, v87
	v_rcp_f32_e32 v77, v80
	v_div_scale_f32 v78, s9, v59, v75, v59
	v_div_fmas_f32 v76, v76, v85, v83
	v_fma_f32 v81, -v90, v93, v84
	v_div_scale_f32 v83, null, v75, v75, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v82, v78, v94
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v66, v76, v75, v66
	v_fma_f32 v84, -v80, v77, 1.0
	v_div_fmas_f32 v79, v81, v79, v93
	v_fma_f32 v81, -v86, v88, v89
	v_rcp_f32_e32 v85, v83
	v_fma_f32 v86, -v92, v82, v78
	v_fmac_f32_e32 v77, v84, v77
	v_div_scale_f32 v84, s8, v74, v75, v74
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v82, v86, v94
	v_div_fmas_f32 v81, v81, v87, v88
	v_mul_f32_e32 v76, v84, v77
	v_div_fixup_f32 v65, v79, v75, v65
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v79, -v83, v85, 1.0
	v_fma_f32 v78, -v92, v82, v78
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v86, -v80, v76, v84
	v_div_fixup_f32 v62, v81, v75, v62
	v_div_scale_f32 v81, null, v75, v75, v68
	v_fmac_f32_e32 v85, v79, v85
	v_div_scale_f32 v79, s10, v72, v75, v72
	v_div_fmas_f32 v78, v78, v94, v82
	v_fmac_f32_e32 v76, v86, v77
	v_rcp_f32_e32 v87, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v82, v79, v85
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v59, v78, v75, v59
	v_fma_f32 v78, -v80, v76, v84
	v_div_scale_f32 v86, null, v75, v75, v67
	v_fma_f32 v80, -v83, v82, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v78, v77, v76
	v_div_scale_f32 v77, null, v75, v75, v7
	v_fma_f32 v84, -v81, v87, 1.0
	v_rcp_f32_e32 v88, v86
	v_fmac_f32_e32 v82, v80, v85
	v_rcp_f32_e32 v80, v77
	v_div_scale_f32 v78, s8, v68, v75, v68
	v_fmac_f32_e32 v87, v84, v87
	v_div_scale_f32 v84, null, v75, v75, v73
	v_div_fixup_f32 v74, v76, v75, v74
	v_fma_f32 v79, -v83, v82, v79
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v86, v88, 1.0
	v_rcp_f32_e32 v90, v84
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v77, v80, 1.0
	v_mul_f32_e32 v83, v78, v87
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v88, v76, v88
	v_div_scale_f32 v76, s9, v67, v75, v67
	v_fmac_f32_e32 v80, v89, v80
	v_div_scale_f32 v89, null, v75, v75, v70
	v_div_fmas_f32 v79, v79, v85, v82
	v_fma_f32 v82, -v81, v83, v78
	v_mul_f32_e32 v85, v76, v88
	v_div_scale_f32 v91, s10, v7, v75, v7
	v_fma_f32 v92, -v84, v90, 1.0
	v_rcp_f32_e32 v93, v89
	v_fmac_f32_e32 v83, v82, v87
	v_fma_f32 v82, -v86, v85, v76
	v_mul_f32_e32 v94, v91, v80
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s11, v73, v75, v73
	v_div_fixup_f32 v72, v79, v75, v72
	v_fma_f32 v78, -v81, v83, v78
	v_fmac_f32_e32 v85, v82, v88
	v_fma_f32 v79, -v77, v94, v91
	v_mul_f32_e32 v81, v92, v90
	v_fma_f32 v82, -v89, v93, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v76, -v86, v85, v76
	v_fmac_f32_e32 v94, v79, v80
	v_fma_f32 v79, -v84, v81, v92
	v_fmac_f32_e32 v93, v82, v93
	v_div_scale_f32 v82, s8, v70, v75, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v77, -v77, v94, v91
	v_fmac_f32_e32 v81, v79, v90
	v_div_fmas_f32 v78, v78, v87, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v79, v82, v93
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v83, null, v75, v75, v58
	v_div_fmas_f32 v76, v76, v88, v85
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v68, v78, v75, v68
	v_div_fmas_f32 v77, v77, v80, v94
	v_fma_f32 v80, -v84, v81, v92
	v_fma_f32 v84, -v89, v79, v82
	v_rcp_f32_e32 v85, v83
	v_div_fixup_f32 v67, v76, v75, v67
	v_div_fixup_f32 v7, v77, v75, v7
	v_div_scale_f32 v77, null, v75, v75, v57
	v_fmac_f32_e32 v79, v84, v93
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v87, null, v75, v75, v6
	v_div_fmas_f32 v80, v80, v90, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v76, -v89, v79, v82
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v78, -v83, v85, 1.0
	v_rcp_f32_e32 v89, v87
	v_div_fixup_f32 v73, v80, v75, v73
	v_div_fmas_f32 v76, v76, v93, v79
	v_rcp_f32_e32 v79, v77
	v_fmac_f32_e32 v85, v78, v85
	v_div_scale_f32 v81, vcc_lo, v58, v75, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v70, v76, v75, v70
	v_div_scale_f32 v78, null, v75, v75, v0
	v_mul_f32_e32 v86, v81, v85
	v_div_scale_f32 v80, null, v75, v75, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v77, v79, 1.0
	v_rcp_f32_e32 v82, v78
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v90, -v83, v86, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v84, v80
	v_fmac_f32_e32 v79, v76, v79
	v_div_scale_f32 v76, s8, v57, v75, v57
	v_fmac_f32_e32 v86, v90, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v87, v89, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v92, v76, v79
	v_fma_f32 v88, -v78, v82, 1.0
	v_fma_f32 v81, -v83, v86, v81
	v_fma_f32 v91, -v80, v84, 1.0
	v_fmac_f32_e32 v89, v93, v89
	v_fma_f32 v90, -v77, v92, v76
	v_div_scale_f32 v93, s11, v6, v75, v6
	v_div_fmas_f32 v81, v81, v85, v86
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v92, v90, v79
	s_mov_b32 s8, 0xc1000000
	v_mul_f32_e32 v96, v93, v89
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v77, v92, v76
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_cvt_i32_f32_e32 v99, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v88, v82
	v_div_fmas_f32 v76, v76, v79, v92
	v_div_scale_f32 v88, s9, v0, v75, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_cvt_i32_f32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v57, v76, v75, v57
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v18, v18
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_cvt_i32_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v87, v96, v93
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v17, v17
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v57, v57, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v77, v89
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_cvt_i32_f32_e32 v101, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v88, v82
	v_fma_f32 v79, -v87, v96, v93
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v17, v17, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v40, v40
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v83, -v78, v94, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_cvt_i32_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v83, v82
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v83, v12
	v_and_b32_e32 v12, 15, v30
	v_and_b32_e32 v30, 15, v18
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v18, 16, v104
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v91, s10, v5, v75, v5
	v_fma_f32 v78, -v78, v94, v88
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v58, v81, v75, v58
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v82, v94
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v82, v13
	v_and_b32_e32 v13, 15, v19
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v19, 6, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v95, v91, v84
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v0, v78, v75, v0
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v36, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v80, v95, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v0, v0
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v46, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v90, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v51, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v80, v95, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v50, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v84, v95
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v89, v96
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v5, v77, v75, v5
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v6, v79, v75, v6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v6, v6
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v6, v6, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_med3_f32 v0, v0, s8, 0x40e00000
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v103, v6
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v6, 15, v29
	v_and_b32_e32 v29, 15, v32
	v_and_b32_e32 v32, 15, v17
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v17, 10, v104
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v74, v74
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v5, v5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v78, v39
	v_cvt_i32_f32_e32 v90, v8
	v_cvt_i32_f32_e32 v0, v0
	v_and_b32_e32 v8, 15, v25
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v17, 0x1800, v17
	v_lshlrev_b32_e32 v25, 6, v104
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v11, v11, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_med3_f32 v9, v9, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v5, v5, s8, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v76, v34
	v_cvt_i32_f32_e32 v77, v35
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v79, v15
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v84, v44
	v_cvt_i32_f32_e32 v85, v45
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v92, v65
	v_cvt_i32_f32_e32 v93, v62
	v_cvt_i32_f32_e32 v94, v59
	v_cvt_i32_f32_e32 v97, v7
	v_and_b32_e32 v7, 15, v22
	v_and_b32_e32 v15, 15, v40
	v_and_b32_e32 v40, 15, v78
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v22, v107, v27
	v_add3_u32 v17, 0, v17, v19
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v78, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v0, 0x1b00, v25, v24
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v75, v16
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v80, v43
	v_cvt_i32_f32_e32 v81, v14
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v87, v11
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v98, v73
	v_cvt_i32_f32_e32 v100, v58
	v_cvt_i32_f32_e32 v89, v10
	v_cvt_i32_f32_e32 v91, v9
	v_cvt_i32_f32_e32 v95, v68
	v_cvt_i32_f32_e32 v96, v67
	v_cvt_i32_f32_e32 v102, v5
	v_and_b32_e32 v5, 15, v33
	v_and_b32_e32 v9, 15, v37
	v_and_b32_e32 v10, 15, v36
	v_and_b32_e32 v11, 15, v31
	v_and_b32_e32 v16, 15, v38
	v_and_b32_e32 v33, 15, v46
	v_and_b32_e32 v34, 15, v41
	v_and_b32_e32 v35, 15, v76
	v_and_b32_e32 v36, 15, v77
	v_and_b32_e32 v37, 15, v51
	v_and_b32_e32 v38, 15, v47
	v_and_b32_e32 v39, 15, v42
	v_and_b32_e32 v43, 15, v50
	v_and_b32_e32 v44, 15, v49
	v_and_b32_e32 v49, 15, v56
	v_and_b32_e32 v50, 15, v52
	v_and_b32_e32 v51, 15, v84
	v_and_b32_e32 v52, 15, v85
	v_and_b32_e32 v65, 15, v66
	v_and_b32_e32 v66, 15, v92
	v_and_b32_e32 v67, 15, v93
	v_and_b32_e32 v68, 15, v94
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v17, v17, v22, v26
	v_xad_u32 v0, v0, v106, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v86, v53
	v_and_b32_e32 v14, 15, v48
	v_and_b32_e32 v31, 15, v75
	v_and_b32_e32 v41, 15, v79
	v_and_b32_e32 v42, 15, v60
	v_and_b32_e32 v45, 15, v80
	v_and_b32_e32 v46, 15, v81
	v_and_b32_e32 v47, 15, v82
	v_and_b32_e32 v48, 15, v83
	v_and_b32_e32 v53, 15, v69
	v_and_b32_e32 v57, 15, v87
	v_and_b32_e32 v58, 15, v71
	v_and_b32_e32 v59, 15, v64
	v_and_b32_e32 v60, 15, v63
	v_and_b32_e32 v69, 15, v74
	v_and_b32_e32 v73, 15, v97
	v_and_b32_e32 v74, 15, v98
	v_and_b32_e32 v75, 15, v99
	v_and_b32_e32 v76, 15, v100
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v54, v54
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v17, v[5:8]
	ds_store_b128 v17, v[13:16] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v0
	ds_load_b128 v[13:16], v0 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v17, v[33:36]
	ds_store_b128 v17, v[41:44] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[24:27], v0
	ds_load_b128 v[33:36], v0 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v17, v[49:52]
	ds_store_b128 v17, v[57:60] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v0
	ds_load_b128 v[49:52], v0 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v17, v[65:68]
	ds_store_b128 v17, v[73:76] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[57:60], v0
	ds_load_b128 v[65:68], v0 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v17, v[9:12]
	ds_store_b128 v17, v[29:32] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v0
	ds_load_b128 v[29:32], v0 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v17, v[37:40]
	ds_store_b128 v17, v[45:48] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[37:40], v0
	ds_load_b128 v[45:48], v0 offset:1024
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_and_b32_e32 v56, 15, v86
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v88, v54
	v_and_b32_e32 v62, 15, v89
	v_cvt_i32_f32_e32 v72, v72
	v_and_b32_e32 v54, 15, v61
	v_and_b32_e32 v55, 15, v55
	v_and_b32_e32 v61, 15, v88
	v_and_b32_e32 v63, 15, v90
	v_and_b32_e32 v64, 15, v91
	v_and_b32_e32 v70, 15, v72
	v_and_b32_e32 v71, 15, v95
	v_and_b32_e32 v72, 15, v96
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v17, v[53:56]
	ds_store_b128 v17, v[61:64] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[53:56], v0
	ds_load_b128 v[61:64], v0 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v77, 15, v101
	v_and_b32_e32 v79, 15, v102
	v_and_b32_e32 v80, 15, v103
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v22, v34, 4, v25
	v_lshl_or_b32 v25, v36, 4, v27
	v_lshl_or_b32 v27, v46, 4, v38
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v46, 3, v105
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v5, v13, 4, v5
	v_lshl_or_b32 v13, v15, 4, v7
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v7, s24, v23
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v17, v[69:72]
	ds_store_b128 v17, v[77:80] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v0
	ds_load_b128 v[73:76], v0 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s31, 7, v46
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v15, v29, 4, v9
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 16, v7
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v6, v14, 4, v6
	v_lshl_or_b32 v14, v16, 4, v8
	v_lshl_or_b32 v16, v30, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 32, v7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v17, v31, 4, v11
	v_lshl_or_b32 v12, v32, 4, v12
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 48, v7
	v_mad_u64_u32 v[7:8], null, v7, s8, v[0:1]
	v_mad_u64_u32 v[8:9], null, v9, s8, v[0:1]
	v_mad_u64_u32 v[9:10], null, v10, s8, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v19, v33, 4, v24
	v_lshl_or_b32 v24, v35, 4, v26
	v_lshl_or_b32 v26, v45, 4, v37
	v_lshl_or_b32 v29, v47, 4, v39
	v_lshl_or_b32 v30, v48, 4, v40
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v11, s8, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v14.l
	v_and_b16 v0.h, 0xff, v13.l
	v_lshlrev_b16 v3.l, 8, v6.l
	v_and_b16 v4.l, 0xff, v5.l
	v_lshlrev_b16 v5.l, 8, v12.l
	v_and_b16 v5.h, 0xff, v17.l
	v_lshlrev_b16 v6.l, 8, v16.l
	v_and_b16 v6.h, 0xff, v15.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v35, v61, 4, v53
	v_lshl_or_b32 v36, v62, 4, v54
	v_lshl_or_b32 v37, v63, 4, v55
	v_lshl_or_b32 v38, v64, 4, v56
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v4.l, v3.l
	v_or_b16 v12.h, v5.h, v5.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v5.l, 8, v30.l
	v_and_b16 v5.h, 0xff, v29.l
	v_lshlrev_b16 v6.l, 8, v27.l
	v_and_b16 v6.h, 0xff, v26.l
	s_and_b32 s9, s21, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s20
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v31, v49, 4, v41
	v_lshl_or_b32 v32, v50, 4, v42
	v_lshl_or_b32 v33, v51, 4, v43
	v_lshl_or_b32 v34, v52, 4, v44
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v43, v73, 4, v69
	v_lshl_or_b32 v44, v74, 4, v70
	v_lshl_or_b32 v45, v75, 4, v71
	v_lshl_or_b32 v23, v76, 4, v72
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v25.l
	v_and_b16 v0.h, 0xff, v24.l
	v_lshlrev_b16 v3.l, 8, v22.l
	v_and_b16 v4.l, 0xff, v19.l
	buffer_store_b64 v[11:12], v7, s[8:11], 0 offen
	v_or_b16 v12.h, v5.h, v5.l
	v_or_b16 v12.l, v6.h, v6.l
	v_lshlrev_b16 v5.l, 8, v38.l
	v_and_b16 v5.h, 0xff, v37.l
	v_lshlrev_b16 v6.l, 8, v36.l
	v_and_b16 v6.h, 0xff, v35.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v39, v65, 4, v57
	v_lshl_or_b32 v40, v66, 4, v58
	v_lshl_or_b32 v41, v67, 4, v59
	v_lshl_or_b32 v42, v68, 4, v60
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v4.l, v3.l
	v_cndmask_b32_e32 v7, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v0.l, 8, v34.l
	v_and_b16 v0.h, 0xff, v33.l
	v_lshlrev_b16 v3.l, 8, v32.l
	v_and_b16 v4.l, 0xff, v31.l
	v_or_b16 v8.h, v5.h, v5.l
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v5.l, 8, v23.l
	v_and_b16 v5.h, 0xff, v45.l
	v_lshlrev_b16 v6.l, 8, v44.l
	v_and_b16 v6.h, 0xff, v43.l
	buffer_store_b64 v[11:12], v7, s[8:11], 0 offen
	v_or_b16 v7.h, v0.h, v0.l
	v_or_b16 v7.l, v4.l, v3.l
	v_lshlrev_b16 v0.l, 8, v42.l
	v_and_b16 v0.h, 0xff, v41.l
	v_lshlrev_b16 v3.l, 8, v40.l
	v_and_b16 v4.l, 0xff, v39.l
	v_or_b16 v12.h, v5.h, v5.l
	v_or_b16 v12.l, v6.h, v6.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v5, 4, v104
	v_lshrrev_b32_e32 v6, 2, v18
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.l, v4.l, v3.l
	v_dual_cndmask_b32 v0, 0x80000000, v10 :: v_dual_and_b32 v5, 2, v5
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[7:8], v9, s[8:11], 0 offen
	buffer_store_b64 v[11:12], v0, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v46
	v_mov_b16_e32 v4.l, v28.h
	v_mov_b16_e32 v3.l, v21.h
	v_add3_u32 v5, v6, v5, v46
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1254 13 is_stmt 0             ; ragged.py:1254:13
	v_add_nc_u32_e32 v7, s24, v20
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	ds_store_b64 v0, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v3, v7, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 0xc0, v104
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[26:27], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[28:29], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	v_cmp_eq_u32_e64 s1, 0, v4
	v_add_lshl_u32 v1, v3, s31, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp50:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 348
		.amdhsa_kernarg_size 120
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 42
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 348
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 28524
; TotalNumSgprs: 44
; NumVgprs: 256
; ScratchSize: 348
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 44
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x63:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
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
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 348
    .sgpr_count:     44
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 86
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
