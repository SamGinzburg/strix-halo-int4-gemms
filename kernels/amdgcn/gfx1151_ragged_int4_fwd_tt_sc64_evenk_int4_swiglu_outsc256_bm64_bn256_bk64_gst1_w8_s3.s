	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[40:41], s[0:1], 0x5c
	v_mov_b32_e32 v96, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v88, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s5
	v_readfirstlane_b32 s5, v0
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s41, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s12, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_abs_i32 s3, s12
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s7
	v_readfirstlane_b32 s7, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v0, 63, v96
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s7, s8
	s_add_i32 s7, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s3, s7
	s_xor_b32 s7, s12, s5
	s_mul_i32 s8, s2, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s3, s3, s8
	s_add_i32 s13, s2, 1
	s_sub_i32 s14, s3, s6
	s_cmp_ge_u32 s3, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s2, s13, s2
	s_cselect_b32 s3, s14, s3
	s_add_i32 s13, s2, 1
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s13, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s2, s7
	s_load_b64 s[2:3], s[0:1], 0x38
	s_sub_i32 s41, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s41, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s12, s5
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[4:5], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s8, s4
	s_addc_u32 s7, s9, s5
	s_load_b64 s[34:35], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[38:39], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[36:37], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s34, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s2
	v_add_nc_u32_e32 v25, s34, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[38:39], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[36:37], v[1:2]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s40, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 0x80, v96
.Ltmp4:
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s34, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow725
	s_load_b128 s[16:19], s[0:1], 0x40
	v_dual_mov_b32 v104, 0 :: v_dual_and_b32 v97, 15, v96
	v_dual_mov_b32 v99, 0 :: v_dual_and_b32 v98, 0xf0, v96
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v202, 0
	v_mov_b32_e32 v201, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s3, s34, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s35, 0, s3
	s_clause 0x1
	s_load_b32 s27, s[0:1], 0x58
	s_load_b32 s42, s[0:1], 0x50
	v_add_co_u32 v2, vcc_lo, v0, 16
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 48
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[38:39], v[0:1]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s20, s6, s4
	s_addc_u32 s21, s7, s5
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[36:37], v[0:1]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s20, s[20:21], 0x0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[38:39], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[36:37], v[6:7]
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_lshrrev_b32_e32 v0, 6, v96
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v81, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[2:3]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[36:37], v[2:3]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s3, s5, s7
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	s_lshl_b32 s5, s41, 8
	.loc	1 1045 36 is_stmt 0             ; ragged.py:1045:36
	v_lshrrev_b32_e32 v1, 5, v96
	v_or_b32_e32 v76, s5, v96
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:212
	scratch_store_b32 off, v97, off offset:792
	v_add_nc_u32_e32 v0, s34, v97
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[38:39], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[36:37], v[4:5]
	.loc	1 1049 17 is_stmt 1             ; ragged.py:1049:17
	s_lshl_b32 s43, s33, 1
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_or_b32_e32 v1, s5, v1
	v_dual_mov_b32 v211, 0 :: v_dual_add_nc_u32 v2, 16, v0
	v_dual_mov_b32 v210, 0 :: v_dual_add_nc_u32 v3, 32, v0
	v_dual_mov_b32 v209, 0 :: v_dual_add_nc_u32 v4, 48, v0
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v0, v0, s40
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s4, s27, s43
	v_dual_mov_b32 v94, 0 :: v_dual_lshlrev_b32 v67, 1, v96
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s26, s4, s20
	scratch_store_b32 off, v76, off offset:240 ; 4-byte Folded Spill
	v_mad_u64_u32 v[76:77], null, v1, s27, s[26:27]
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:216
	scratch_store_b32 off, v98, off offset:796
	v_mul_lo_u32 v0, v2, s40
	v_dual_mov_b32 v205, 0 :: v_dual_and_b32 v2, 0xe0, v96
	v_dual_mov_b32 v92, 0 :: v_dual_lshlrev_b32 v69, 5, v97
	v_dual_mov_b32 v147, 0 :: v_dual_and_b32 v70, 24, v67
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v129, 0 :: v_dual_lshlrev_b32 v2, 4, v2
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v59, 8, v1
	scratch_store_b64 off, v[76:77], off offset:244 ; 8-byte Folded Spill
	v_or_b32_e32 v58, 16, v1
	v_or3_b32 v74, v69, v70, v2
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s40
	v_mad_u64_u32 v[76:77], null, s27, v59, s[26:27]
	v_dual_mov_b32 v186, 0 :: v_dual_add_nc_u32 v63, s33, v58
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v64, s33, v59
	v_mad_u64_u32 v[58:59], null, s27, v58, s[26:27]
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s40
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v4, 0xf0, v1
	v_or_b32_e32 v5, 0xe8, v1
	v_or_b32_e32 v6, 0xe0, v1
	v_or_b32_e32 v7, 0xd8, v1
	v_or_b32_e32 v8, 0xd0, v1
	v_or_b32_e32 v14, 0xc8, v1
	v_or_b32_e32 v15, 0xc0, v1
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf8, v1
	v_or_b32_e32 v16, 0xb8, v1
	v_or_b32_e32 v17, 0xb0, v1
	v_or_b32_e32 v18, 0xa8, v1
	v_or_b32_e32 v24, 0xa0, v1
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v3, s33, v0
	v_or_b32_e32 v26, 0x98, v1
	v_or_b32_e32 v27, 0x90, v1
	v_or_b32_e32 v28, 0x88, v1
	v_or_b32_e32 v29, 0x80, v1
	v_or_b32_e32 v35, 0x78, v1
	v_or_b32_e32 v36, 0x70, v1
	v_or_b32_e32 v37, 0x68, v1
	v_or_b32_e32 v38, 0x60, v1
	v_or_b32_e32 v39, 0x58, v1
	v_or_b32_e32 v45, 0x50, v1
	v_or_b32_e32 v46, 0x48, v1
	v_or_b32_e32 v47, 64, v1
	v_or_b32_e32 v48, 56, v1
	v_or_b32_e32 v49, 48, v1
	v_or_b32_e32 v55, 40, v1
	v_or_b32_e32 v56, 32, v1
	v_or_b32_e32 v57, 24, v1
	v_dual_mov_b32 v184, 0 :: v_dual_add_nc_u32 v65, s33, v1
	v_mad_u64_u32 v[0:1], null, s27, v0, s[26:27]
	scratch_store_b32 off, v74, off offset:236 ; 4-byte Folded Spill
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v62, s33, v57
	v_dual_mov_b32 v222, 0 :: v_dual_add_nc_u32 v61, s33, v56
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v60, s33, v55
	scratch_store_b64 off, v[0:1], off offset:492 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v65, s27, s[26:27]
	scratch_store_b64 off, v[58:59], off offset:260 ; 8-byte Folded Spill
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v54, s33, v49
	v_dual_mov_b32 v224, 0 :: v_dual_add_nc_u32 v53, s33, v48
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v52, s33, v47
	scratch_store_b64 off, v[0:1], off offset:500 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v64, s27, s[26:27]
	v_dual_mov_b32 v190, 0 :: v_dual_add_nc_u32 v51, s33, v46
	v_dual_mov_b32 v145, 0 :: v_dual_lshlrev_b32 v70, 5, v96
	v_dual_mov_b32 v185, 0 :: v_dual_add_nc_u32 v50, s33, v45
	scratch_store_b64 off, v[0:1], off offset:508 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v63, s27, s[26:27]
	v_dual_mov_b32 v112, 0 :: v_dual_lshlrev_b32 v75, 2, v98
	v_dual_mov_b32 v149, 0 :: v_dual_and_b32 v70, 32, v70
	v_dual_mov_b32 v124, 0 :: v_dual_and_b32 v67, 28, v67
	scratch_store_b64 off, v[0:1], off offset:516 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v62, s27, s[26:27]
	v_add3_u32 v70, 0, v75, v70
	v_dual_mov_b32 v223, 0 :: v_dual_add_nc_u32 v44, s33, v39
	v_or_b32_e32 v71, 0x300, v96
	v_bfe_i32 v66, v96, 7, 1
	v_or_b32_e32 v72, 0x700, v96
	scratch_store_b64 off, v[0:1], off offset:524 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v61, s27, s[26:27]
	v_dual_mov_b32 v123, 0 :: v_dual_and_b32 v68, 0x7f, v96
	v_dual_mov_b32 v127, 0 :: v_dual_and_b32 v66, 0x88, v66
	v_or_b32_e32 v2, 0x3f0, v96
	v_mov_b32_e32 v151, 0
	scratch_store_b64 off, v[0:1], off offset:532 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v60, s27, s[26:27]
	v_xor_b32_e32 v68, v66, v68
	v_or_b32_e32 v66, 0x7f0, v96
	v_xor_b32_e32 v69, 8, v74
	v_xor_b32_e32 v73, 16, v74
	v_xor_b32_e32 v74, 24, v74
	v_dual_mov_b32 v192, 0 :: v_dual_add_nc_u32 v43, s33, v38
	scratch_store_b64 off, v[0:1], off offset:540 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v54, s27, s[26:27]
	v_dual_mov_b32 v175, 0 :: v_dual_add_nc_u32 v42, s33, v37
	v_mov_b32_e32 v191, 0
	v_dual_mov_b32 v194, 0 :: v_dual_add_nc_u32 v41, s33, v36
	v_mov_b32_e32 v171, 0
	scratch_store_b64 off, v[0:1], off offset:548 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v53, s27, s[26:27]
	v_dual_mov_b32 v169, 0 :: v_dual_add_nc_u32 v40, s33, v35
	v_dual_mov_b32 v193, 0 :: v_dual_add_nc_u32 v34, s33, v29
	v_mov_b32_e32 v225, 0
	v_mov_b32_e32 v173, 0
	scratch_store_b64 off, v[0:1], off offset:556 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v52, s27, s[26:27]
	v_dual_mov_b32 v200, 0 :: v_dual_add_nc_u32 v33, s33, v28
	v_dual_mov_b32 v181, 0 :: v_dual_add_nc_u32 v32, s33, v27
	v_mov_b32_e32 v197, 0
	v_dual_mov_b32 v202, 0 :: v_dual_add_nc_u32 v31, s33, v26
	scratch_store_b64 off, v[0:1], off offset:564 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v51, s27, s[26:27]
	v_mov_b32_e32 v177, 0
	v_dual_mov_b32 v219, 0 :: v_dual_add_nc_u32 v30, s33, v24
	v_mov_b32_e32 v201, 0
	v_dual_mov_b32 v198, 0 :: v_dual_add_nc_u32 v23, s33, v18
	scratch_store_b64 off, v[0:1], off offset:572 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v50, s27, s[26:27]
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v22, s33, v17
	v_dual_mov_b32 v204, 0 :: v_dual_add_nc_u32 v21, s33, v16
	v_dual_mov_b32 v199, 0 :: v_dual_add_nc_u32 v20, s33, v15
	scratch_store_b64 off, v[0:1], off offset:580 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, v70, v67
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v19, s33, v14
	v_dual_mov_b32 v220, 0 :: v_dual_add_nc_u32 v13, s33, v8
	scratch_store_b32 off, v0, off offset:588 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v44, s27, s[26:27]
	v_dual_mov_b32 v215, 0 :: v_dual_add_nc_u32 v12, s33, v7
	v_dual_mov_b32 v246, 0 :: v_dual_add_nc_u32 v11, s33, v6
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v10, s33, v5
	scratch_store_b64 off, v[0:1], off offset:592 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v71
	v_dual_mov_b32 v208, 0 :: v_dual_add_nc_u32 v9, s33, v4
	v_mad_u64_u32 v[57:58], null, s27, v57, s[26:27]
	scratch_store_b32 off, v0, off offset:600 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v72
	v_dual_mov_b32 v122, 0 :: v_dual_lshlrev_b32 v75, 1, v98
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v235, 0, v97
	scratch_store_b32 off, v0, off offset:604 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v221, 0, v75
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v165, 0
	scratch_store_b32 off, v0, off offset:608 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v66
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v163, 0
	scratch_store_b32 off, v0, off offset:612 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v69
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v153, 0
	scratch_store_b32 off, v0, off offset:616 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v73
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v161, 0
	scratch_store_b32 off, v0, off offset:620 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v74
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v105, 0
	scratch_store_b32 off, v0, off offset:624 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v43, s27, s[26:27]
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v137, 0
	scratch_store_b64 off, v[0:1], off offset:628 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v42, s27, s[26:27]
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v133, 0
	scratch_store_b64 off, v[0:1], off offset:636 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v41, s27, s[26:27]
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v119, 0
	scratch_store_b64 off, v[0:1], off offset:644 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v40, s27, s[26:27]
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v101, 0
	scratch_store_b64 off, v[0:1], off offset:652 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v34, s27, s[26:27]
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v115, 0
	scratch_store_b64 off, v[0:1], off offset:660 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v33, s27, s[26:27]
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v99, 0
	scratch_store_b64 off, v[0:1], off offset:668 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v32, s27, s[26:27]
	v_mov_b32_e32 v132, 0
	v_mov_b32_e32 v116, 0
	v_mov_b32_e32 v110, 0
	v_mov_b32_e32 v120, 0
	v_mov_b32_e32 v102, 0
	v_mov_b32_e32 v100, 0
	scratch_store_b64 off, v[0:1], off offset:676 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v31, s27, s[26:27]
	v_mov_b32_e32 v114, 0
	v_mov_b32_e32 v118, 0
	v_mov_b32_e32 v90, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v104, 0
	v_mov_b32_e32 v88, 0
	scratch_store_b64 off, v[0:1], off offset:684 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v30, s27, s[26:27]
	s_mov_b32 s4, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s6
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s44, s40, s20
	s_and_b32 s21, s9, 0xffff
	s_mov_b32 s20, s8
	s_mov_b32 s23, 0x31027000
	scratch_store_b64 off, v[0:1], off offset:692 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v23, s27, s[26:27]
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s25, s11, 0xffff
	s_mov_b32 s24, s10
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	scratch_store_b64 off, v[0:1], off offset:700 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v22, s27, s[26:27]
	s_mov_b32 s5, s4
	v_mov_b32_e32 v167, 0
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	scratch_store_b64 off, v[0:1], off offset:708 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v21, s27, s[26:27]
	scratch_store_b64 off, v[57:58], off offset:268 ; 8-byte Folded Spill
	v_mad_u64_u32 v[56:57], null, s27, v56, s[26:27]
	v_mov_b32_e32 v89, 0
	scratch_store_b64 off, v[76:77], off offset:252 ; 8-byte Folded Spill
	v_mov_b32_e32 v183, 0
	scratch_store_b64 off, v[0:1], off offset:716 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v20, s27, s[26:27]
	scratch_store_b64 off, v[56:57], off offset:276 ; 8-byte Folded Spill
	v_mad_u64_u32 v[55:56], null, s27, v55, s[26:27]
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_mov_b32 s45, s4
	scratch_store_b64 off, v[0:1], off offset:724 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v19, s27, s[26:27]
	scratch_store_b64 off, v[55:56], off offset:284 ; 8-byte Folded Spill
	v_mad_u64_u32 v[55:56], null, s27, v49, s[26:27]
	v_mad_u64_u32 v[48:49], null, s27, v48, s[26:27]
	scratch_store_b64 off, v[0:1], off offset:732 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v13, s27, s[26:27]
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[55:56], off offset:292
	scratch_store_b64 off, v[48:49], off offset:300
	v_mad_u64_u32 v[47:48], null, s27, v47, s[26:27]
	scratch_store_b64 off, v[0:1], off offset:740 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v12, s27, s[26:27]
	scratch_store_b64 off, v[47:48], off offset:308 ; 8-byte Folded Spill
	v_mad_u64_u32 v[46:47], null, s27, v46, s[26:27]
	scratch_store_b64 off, v[0:1], off offset:748 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v11, s27, s[26:27]
	scratch_store_b64 off, v[46:47], off offset:316 ; 8-byte Folded Spill
	v_mad_u64_u32 v[45:46], null, s27, v45, s[26:27]
	scratch_store_b64 off, v[0:1], off offset:756 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v10, s27, s[26:27]
	scratch_store_b64 off, v[45:46], off offset:324 ; 8-byte Folded Spill
	v_mad_u64_u32 v[45:46], null, s27, v39, s[26:27]
	v_mad_u64_u32 v[38:39], null, s27, v38, s[26:27]
	scratch_store_b64 off, v[0:1], off offset:764 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v9, s27, s[26:27]
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[45:46], off offset:332
	scratch_store_b64 off, v[38:39], off offset:340
	v_mad_u64_u32 v[37:38], null, s27, v37, s[26:27]
	scratch_store_b64 off, v[0:1], off offset:772 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v3, s27, s[26:27]
	scratch_store_b64 off, v[37:38], off offset:348 ; 8-byte Folded Spill
	v_mad_u64_u32 v[36:37], null, s27, v36, s[26:27]
	scratch_store_b64 off, v[0:1], off offset:780 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v96
	scratch_store_b32 off, v0, off offset:788 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v68, off offset:232
	scratch_store_b64 off, v[36:37], off offset:356
	v_mad_u64_u32 v[35:36], null, s27, v35, s[26:27]
	v_xor_b32_e32 v68, 0x110, v68
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_add_nc_u32_e32 v242, 0, v68
	scratch_store_b64 off, v[35:36], off offset:364 ; 8-byte Folded Spill
	v_mad_u64_u32 v[35:36], null, s27, v29, s[26:27]
	v_mad_u64_u32 v[28:29], null, s27, v28, s[26:27]
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[35:36], off offset:372
	scratch_store_b64 off, v[28:29], off offset:380
	v_mad_u64_u32 v[27:28], null, s27, v27, s[26:27]
	scratch_store_b64 off, v[27:28], off offset:388 ; 8-byte Folded Spill
	v_mad_u64_u32 v[26:27], null, s27, v26, s[26:27]
	scratch_store_b64 off, v[26:27], off offset:396 ; 8-byte Folded Spill
	v_mad_u64_u32 v[26:27], null, s27, v24, s[26:27]
	scratch_store_b64 off, v[26:27], off offset:404 ; 8-byte Folded Spill
	v_mad_u64_u32 v[26:27], null, s27, v18, s[26:27]
	v_mad_u64_u32 v[17:18], null, s27, v17, s[26:27]
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_clause 0x3                            ; 28-byte Folded Spill
	scratch_store_b32 off, v96, off offset:200
	scratch_store_b64 off, v[25:26], off offset:204
	scratch_store_b64 off, v[26:27], off offset:412
	scratch_store_b64 off, v[17:18], off offset:420
	v_mad_u64_u32 v[16:17], null, s27, v16, s[26:27]
	scratch_store_b64 off, v[16:17], off offset:428 ; 8-byte Folded Spill
	v_mad_u64_u32 v[15:16], null, s27, v15, s[26:27]
	scratch_store_b64 off, v[15:16], off offset:436 ; 8-byte Folded Spill
	v_mad_u64_u32 v[14:15], null, s27, v14, s[26:27]
	scratch_store_b64 off, v[14:15], off offset:444 ; 8-byte Folded Spill
	v_mad_u64_u32 v[14:15], null, s27, v8, s[26:27]
	v_mad_u64_u32 v[7:8], null, s27, v7, s[26:27]
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[14:15], off offset:452
	scratch_store_b64 off, v[7:8], off offset:460
	v_mad_u64_u32 v[6:7], null, s27, v6, s[26:27]
	scratch_store_b64 off, v[6:7], off offset:468 ; 8-byte Folded Spill
	v_mad_u64_u32 v[5:6], null, s27, v5, s[26:27]
	scratch_store_b64 off, v[5:6], off offset:476 ; 8-byte Folded Spill
	v_mad_u64_u32 v[4:5], null, s27, v4, s[26:27]
	scratch_store_b64 off, v[4:5], off offset:484 ; 8-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v2, off, off offset:212
	scratch_load_b64 v[13:14], off, off offset:308
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s14, s45, 5
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v109, off offset:196
	scratch_store_b32 off, v118, off offset:192
	scratch_store_b32 off, v82, off offset:188
	scratch_store_b32 off, v121, off offset:184
	scratch_store_b32 off, v155, off offset:180
	scratch_store_b32 off, v164, off offset:176
	scratch_store_b32 off, v83, off offset:172
	scratch_store_b32 off, v84, off offset:168
	scratch_store_b32 off, v173, off offset:164
	scratch_store_b32 off, v108, off offset:160
	scratch_store_b32 off, v167, off offset:156
	scratch_store_b32 off, v194, off offset:152
	scratch_store_b32 off, v153, off offset:148
	scratch_store_b32 off, v122, off offset:144
	scratch_store_b32 off, v119, off offset:140
	scratch_store_b32 off, v123, off offset:136
	scratch_store_b32 off, v124, off offset:132
	scratch_store_b32 off, v125, off offset:128
	scratch_store_b32 off, v81, off offset:124
	scratch_store_b32 off, v162, off offset:120
	scratch_store_b32 off, v163, off offset:116
	scratch_store_b32 off, v114, off offset:112
	scratch_store_b32 off, v165, off offset:108
	scratch_store_b32 off, v107, off offset:104
	scratch_store_b32 off, v152, off offset:100
	scratch_store_b32 off, v104, off offset:96
	scratch_store_b32 off, v159, off offset:92
	scratch_store_b32 off, v106, off offset:88
	scratch_store_b32 off, v116, off offset:84
	scratch_store_b32 off, v117, off offset:80
	scratch_store_b32 off, v111, off offset:76
	scratch_store_b32 off, v89, off offset:72
	s_clause 0x10                           ; 68-byte Folded Spill
	scratch_store_b32 off, v105, off offset:68
	scratch_store_b32 off, v103, off offset:64
	scratch_store_b32 off, v102, off offset:60
	scratch_store_b32 off, v110, off offset:56
	scratch_store_b32 off, v101, off offset:52
	scratch_store_b32 off, v100, off offset:48
	scratch_store_b32 off, v95, off offset:44
	scratch_store_b32 off, v94, off offset:40
	scratch_store_b32 off, v93, off offset:36
	scratch_store_b32 off, v92, off offset:32
	scratch_store_b32 off, v91, off offset:28
	scratch_store_b32 off, v99, off offset:24
	scratch_store_b32 off, v90, off offset:20
	scratch_store_b32 off, v87, off offset:16
	scratch_store_b32 off, v86, off offset:12
	scratch_store_b32 off, v85, off offset:8
	scratch_store_b32 off, v88, off offset:4
	v_mov_b32_e32 v173, v166
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	v_mov_b32_e32 v163, v182
	v_dual_mov_b32 v165, v132 :: v_dual_mov_b32 v188, v137
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s15, s23
	v_mov_b32_e32 v166, v115
	scratch_load_b64 v[15:16], off, off offset:316 ; 8-byte Folded Reload
	v_mov_b32_e32 v162, v168
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[17:18], off, off offset:332
	scratch_load_b64 v[19:20], off, off offset:348
	v_dual_mov_b32 v168, v128 :: v_dual_mov_b32 v159, v169
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[21:22], off, off offset:364
	scratch_load_b64 v[23:24], off, off offset:380
	v_dual_mov_b32 v169, v129 :: v_dual_mov_b32 v182, v130
	scratch_load_b64 v[33:34], off, off offset:396 ; 8-byte Folded Reload
	v_dual_mov_b32 v164, v133 :: v_dual_mov_b32 v167, v210
	v_mov_b32_e32 v155, v183
	v_mov_b32_e32 v183, v131
	v_mov_b32_e32 v194, v195
	v_mov_b32_e32 v152, v161
	v_mov_b32_e32 v174, v154
	v_mov_b32_e32 v158, v112
	v_mov_b32_e32 v154, v113
	v_mov_b32_e32 v206, v186
	v_mov_b32_e32 v186, v148
	v_mov_b32_e32 v196, v149
	s_waitcnt vmcnt(7)
	v_or_b32_e32 v0, s14, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[0:1], null, v0, s42, v[25:26]
	v_cndmask_b32_e64 v26, 0x80000000, v0, s2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v0, 4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, s14, v0
	v_mad_u64_u32 v[0:1], null, v0, s42, v[25:26]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v27, 0x80000000, v0, s2
	v_or_b32_e32 v0, 8, v2
	v_or_b32_e32 v0, s14, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[0:1], null, v0, s42, v[25:26]
	v_cndmask_b32_e64 v28, 0x80000000, v0, s2
	v_or_b32_e32 v0, 12, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, s14, v0
	v_mad_u64_u32 v[0:1], null, v0, s42, v[25:26]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v29, 0x80000000, v0, s2
	v_or_b32_e32 v0, 16, v2
	v_or_b32_e32 v0, s14, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[0:1], null, v0, s42, v[25:26]
	v_cndmask_b32_e64 v30, 0x80000000, v0, s2
	v_or_b32_e32 v0, 20, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, s14, v0
	v_mad_u64_u32 v[0:1], null, v0, s42, v[25:26]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v31, 0x80000000, v0, s2
	v_or_b32_e32 v0, 24, v2
	v_or_b32_e32 v0, s14, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[0:1], null, v0, s42, v[25:26]
	v_cndmask_b32_e64 v32, 0x80000000, v0, s2
	v_or_b32_e32 v0, 28, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, s14, v0
	v_mad_u64_u32 v[0:1], null, v0, s42, v[25:26]
	v_and_b32_e32 v1, 31, v96
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v248, s14, v1
	scratch_load_b64 v[1:2], off, off offset:244 ; 8-byte Folded Reload
	v_mov_b32_e32 v195, v172
	v_dual_mov_b32 v172, v120 :: v_dual_mov_b32 v203, v190
	v_mov_b32_e32 v190, v139
	v_mov_b32_e32 v153, v175
	v_mov_b32_e32 v175, v126
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	v_mov_b32_e32 v161, v127
	v_mov_b32_e32 v213, v191
	v_mov_b32_e32 v191, v140
	v_mov_b32_e32 v179, v136
	v_mov_b32_e32 v187, v150
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s14, s22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, v1, v248
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v6, v1, s[24:27], 0 offen
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[1:2], off, off offset:252
	scratch_load_b64 v[2:3], off, off offset:260
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v1, v1, v248
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, v2, v248
	s_clause 0x1
	buffer_load_u8 v1, v1, s[24:27], 0 offen
	buffer_load_u8 v8, v2, s[24:27], 0 offen
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[2:3], off, off offset:268
	scratch_load_b64 v[3:4], off, off offset:276
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, v2, v248
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, v3, v248
	s_clause 0x1
	buffer_load_u8 v2, v2, s[24:27], 0 offen
	buffer_load_u8 v10, v3, s[24:27], 0 offen
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[3:4], off, off offset:284
	scratch_load_b64 v[4:5], off, off offset:292
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, v3, v248
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v4, v4, v248
	s_clause 0x1
	buffer_load_u8 v3, v3, s[24:27], 0 offen
	buffer_load_u8 v12, v4, s[24:27], 0 offen
	scratch_load_b64 v[4:5], off, off offset:300 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, v13, v248
	buffer_load_u8 v14, v5, s[24:27], 0 offen
	v_add_nc_u32_e32 v5, v15, v248
	scratch_load_b64 v[15:16], off, off offset:324 ; 8-byte Folded Reload
	buffer_load_u8 v5, v5, s[24:27], 0 offen
	v_add_nc_u32_e32 v4, v4, v248
	buffer_load_u8 v4, v4, s[24:27], 0 offen
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v7, v15, v248
	buffer_load_u8 v16, v7, s[24:27], 0 offen
	v_add_nc_u32_e32 v7, v17, v248
	scratch_load_b64 v[17:18], off, off offset:340 ; 8-byte Folded Reload
	buffer_load_u8 v7, v7, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v9, v17, v248
	buffer_load_u8 v18, v9, s[24:27], 0 offen
	v_add_nc_u32_e32 v9, v19, v248
	scratch_load_b64 v[19:20], off, off offset:356 ; 8-byte Folded Reload
	buffer_load_u8 v9, v9, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v11, v19, v248
	buffer_load_u8 v20, v11, s[24:27], 0 offen
	v_add_nc_u32_e32 v11, v21, v248
	scratch_load_b64 v[21:22], off, off offset:372 ; 8-byte Folded Reload
	buffer_load_u8 v11, v11, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v13, v21, v248
	buffer_load_u8 v22, v13, s[24:27], 0 offen
	v_add_nc_u32_e32 v13, v23, v248
	scratch_load_b64 v[23:24], off, off offset:388 ; 8-byte Folded Reload
	buffer_load_u8 v13, v13, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v15, v23, v248
	buffer_load_u8 v24, v15, s[24:27], 0 offen
	v_add_nc_u32_e32 v15, v33, v248
	scratch_load_b64 v[33:34], off, off offset:404 ; 8-byte Folded Reload
	buffer_load_u8 v15, v15, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v17, v33, v248
	scratch_load_b64 v[33:34], off, off offset:412 ; 8-byte Folded Reload
	buffer_load_u8 v59, v17, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v17, v33, v248
	scratch_load_b64 v[33:34], off, off offset:420 ; 8-byte Folded Reload
	buffer_load_u8 v17, v17, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v19, v33, v248
	scratch_load_b64 v[33:34], off, off offset:428 ; 8-byte Folded Reload
	buffer_load_u8 v62, v19, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v19, v33, v248
	scratch_load_b64 v[33:34], off, off offset:436 ; 8-byte Folded Reload
	buffer_load_u8 v19, v19, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v21, v33, v248
	scratch_load_b64 v[33:34], off, off offset:444 ; 8-byte Folded Reload
	buffer_load_u8 v66, v21, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v21, v33, v248
	scratch_load_b64 v[33:34], off, off offset:452 ; 8-byte Folded Reload
	buffer_load_u8 v21, v21, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v23, v33, v248
	scratch_load_b64 v[33:34], off, off offset:460 ; 8-byte Folded Reload
	buffer_load_u8 v70, v23, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v23, v33, v248
	scratch_load_b64 v[33:34], off, off offset:468 ; 8-byte Folded Reload
	buffer_load_u8 v23, v23, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v33, v33, v248
	buffer_load_u8 v81, v33, s[24:27], 0 offen
	scratch_load_b64 v[33:34], off, off offset:476 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, v33, v248
	buffer_load_u8 v51, v33, s[24:27], 0 offen
	scratch_load_b64 v[33:34], off, off offset:484 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, v33, v248
	buffer_load_u8 v88, v33, s[24:27], 0 offen
	scratch_load_b64 v[33:34], off, off offset:492 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, v33, v248
	buffer_load_u8 v60, v33, s[24:27], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v26, v26, s[20:23], 0 offen
	buffer_load_u8 v27, v27, s[20:23], 0 offen
	buffer_load_u8 v28, v28, s[20:23], 0 offen
	buffer_load_u8 v30, v30, s[20:23], 0 offen
	buffer_load_u8 v31, v31, s[20:23], 0 offen
	buffer_load_u8 v32, v32, s[20:23], 0 offen
	buffer_load_u8 v0, v0, s[20:23], 0 offen
	buffer_load_u8 v29, v29, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:788
	scratch_load_b32 v25, off, off offset:600
	s_waitcnt vmcnt(0)
	ds_store_b8 v25, v29
	ds_store_b8 v33, v32 offset:1536
	scratch_load_b32 v25, off, off offset:604 ; 4-byte Folded Reload
	ds_store_b8 v33, v26
	ds_store_b8 v33, v27 offset:256
	ds_store_b8 v33, v28 offset:512
	ds_store_b8 v33, v30 offset:1024
	ds_store_b8 v33, v31 offset:1280
	s_waitcnt vmcnt(0)
	ds_store_b8 v25, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_load_b32 v25, off, off offset:608 ; 4-byte Folded Reload
	ds_load_u8 v0, v235 offset:320
	ds_load_u8 v26, v235 offset:256
	ds_load_u8 v64, v235 offset:336
	ds_load_u8 v65, v235 offset:272
	ds_load_u8 v32, v235 offset:352
	ds_load_u8 v33, v235 offset:288
	ds_load_u8 v249, v235 offset:368
	ds_load_u8 v250, v235 offset:304
	ds_load_u8 v96, v235 offset:1536
	ds_load_u8 v97, v235 offset:1600
	ds_load_u8 v106, v235 offset:1616
	ds_load_u8 v103, v235 offset:1632
	ds_load_u8 v86, v235 offset:1920
	ds_load_u8 v87, v235 offset:1984
	ds_load_u8 v102, v235 offset:2000
	ds_load_u8 v80, v235 offset:2016
	ds_load_u8 v114, v235 offset:1168
	ds_load_u8 v109, v235 offset:1184
	ds_load_u8 v115, v235 offset:1040
	ds_load_u8 v111, v235 offset:1056
	ds_load_u8 v128, v235 offset:1424
	ds_load_u8 v117, v235 offset:1440
	ds_load_u8 v129, v235 offset:1296
	ds_load_u8 v119, v235 offset:1312
	ds_load_u8 v130, v235 offset:1680
	ds_load_u8 v110, v235 offset:1696
	ds_load_u8 v131, v235 offset:1552
	ds_load_u8 v116, v235 offset:1568
	ds_load_u8 v132, v235 offset:1936
	ds_load_u8 v118, v235 offset:1952
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v0, v26, v0, 0xc0c0004
	ds_load_u8 v26, v235 offset:448
	ds_load_u8 v27, v235 offset:384
	ds_load_u8 v67, v235 offset:464
	ds_load_u8 v68, v235 offset:400
	ds_load_u8 v34, v235 offset:480
	ds_load_u8 v35, v235 offset:416
	ds_load_u8 v251, v235 offset:496
	ds_load_u8 v252, v235 offset:432
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v96, v96, v97, 0xc0c0004
	ds_load_u8 v97, v235 offset:1664
	ds_load_u8 v104, v235 offset:1728
	ds_load_u8 v107, v235 offset:1744
	ds_load_u8 v108, v235 offset:1760
	ds_load_u8 v236, v235 offset:1712
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v89, v86, v87, 0xc0c0004
	ds_load_u8 v210, v235 offset:1648
	ds_load_u8 v87, v235 offset:1584
	v_dual_mov_b32 v86, v209 :: v_dual_mov_b32 v209, v184
	v_mov_b32_e32 v184, v143
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v235 offset:64
	ds_load_u8 v28, v235
	ds_load_u8 v233, v235 offset:80
	ds_load_u8 v36, v235 offset:96
	ds_load_u8 v253, v235 offset:112
	ds_load_u8 v69, v235 offset:16
	ds_load_u8 v37, v235 offset:32
	ds_load_u8 v254, v235 offset:48
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v65, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v33, v35, v34, 0xc0c0004
	v_lshl_or_b32 v91, v26, 16, v0
	ds_load_u8 v0, v235 offset:832
	ds_load_u8 v26, v235 offset:768
	ds_load_u8 v72, v235 offset:848
	ds_load_u8 v73, v235 offset:784
	ds_load_u8 v43, v235 offset:864
	ds_load_u8 v44, v235 offset:800
	ds_load_u8 v98, v235 offset:880
	ds_load_u8 v229, v235 offset:816
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v104, v97, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v104, 16, v96
	ds_load_u8 v133, v235 offset:1808
	ds_load_u8 v104, v235 offset:1824
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v235 offset:192
	ds_load_u8 v29, v235 offset:128
	ds_load_u8 v238, v235 offset:208
	ds_load_u8 v239, v235 offset:144
	ds_load_u8 v38, v235 offset:224
	ds_load_u8 v39, v235 offset:160
	ds_load_u8 v255, v235 offset:240
	ds_load_u8 v99, v235 offset:176
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v67, v69, v233, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v34, v37, v36, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v68, v239, v238, 0xc0c0004
	v_lshl_or_b32 v239, v65, 16, v64
	v_perm_b32 v64, v73, v72, 0xc0c0004
	v_lshl_or_b32 v90, v28, 16, v27
	v_perm_b32 v28, v26, v0, 0xc0c0004
	ds_load_u8 v26, v235 offset:960
	ds_load_u8 v27, v235 offset:896
	ds_load_u8 v75, v235 offset:976
	ds_load_u8 v76, v235 offset:912
	ds_load_u8 v48, v235 offset:992
	ds_load_u8 v49, v235 offset:928
	ds_load_u8 v0, v235 offset:944
	v_lshl_or_b32 v238, v68, 16, v67
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v35, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v29, v27, v26, 0xc0c0004
	ds_load_u8 v26, v235 offset:576
	ds_load_u8 v27, v235 offset:512
	ds_load_u8 v78, v235 offset:592
	ds_load_u8 v79, v235 offset:528
	ds_load_u8 v53, v235 offset:608
	ds_load_u8 v55, v235 offset:544
	ds_load_u8 v230, v235 offset:624
	ds_load_u8 v231, v235 offset:560
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v65, v76, v75, 0xc0c0004
	v_lshl_or_b32 v93, v29, 16, v28
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v113, v65, 16, v64
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v30, v27, v26, 0xc0c0004
	ds_load_u8 v31, v235 offset:704
	ds_load_u8 v40, v235 offset:640
	ds_load_u8 v82, v235 offset:720
	ds_load_u8 v83, v235 offset:656
	ds_load_u8 v56, v235 offset:736
	ds_load_u8 v57, v235 offset:672
	ds_load_u8 v26, v235 offset:752
	ds_load_u8 v27, v235 offset:688
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v67, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v31, v40, v31, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v68, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v92, v31, 16, v30
	ds_load_u8 v30, v235 offset:1344
	ds_load_u8 v31, v235 offset:1280
	ds_load_u8 v232, v235 offset:1264
	ds_load_u8 v84, v235 offset:1360
	ds_load_u8 v61, v235 offset:1376
	ds_load_u8 v28, v235 offset:1392
	ds_load_u8 v29, v235 offset:1328
	v_lshl_or_b32 v112, v68, 16, v67
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_perm_b32 v27, v229, v98, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v40, v31, v30, 0xc0c0004
	ds_load_u8 v41, v235 offset:1408
	ds_load_u8 v42, v235 offset:1472
	ds_load_u8 v85, v235 offset:1488
	ds_load_u8 v63, v235 offset:1504
	ds_load_u8 v30, v235 offset:1520
	ds_load_u8 v31, v235 offset:1456
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v64, v129, v84, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v46, v41, v42, 0xc0c0004
	ds_load_u8 v45, v235 offset:1024
	ds_load_u8 v47, v235 offset:1088
	ds_load_u8 v247, v235 offset:1104
	ds_load_u8 v71, v235 offset:1120
	ds_load_u8 v41, v235 offset:1136
	ds_load_u8 v42, v235 offset:1072
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v65, v128, v85, 0xc0c0004
	v_lshl_or_b32 v95, v46, 16, v40
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v47, v45, v47, 0xc0c0004
	ds_load_u8 v50, v235 offset:1152
	ds_load_u8 v52, v235 offset:1216
	ds_load_u8 v100, v235 offset:1232
	ds_load_u8 v74, v235 offset:1248
	ds_load_u8 v45, v235 offset:1200
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v67, v115, v247, 0xc0c0004
	v_lshl_or_b32 v115, v65, 16, v64
	v_perm_b32 v65, v132, v102, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v50, v50, v52, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v68, v114, v100, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v94, v50, 16, v47
	ds_load_u8 v40, v235 offset:1792
	ds_load_u8 v52, v235 offset:1856
	ds_load_u8 v101, v235 offset:1872
	ds_load_u8 v77, v235 offset:1888
	ds_load_u8 v46, v235 offset:1904
	ds_load_u8 v47, v235 offset:1840
	ds_load_u8 v50, v235 offset:1776
	v_lshl_or_b32 v114, v68, 16, v67
	v_perm_b32 v67, v131, v106, 0xc0c0004
	v_perm_b32 v68, v130, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v128, v68, 16, v67
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v40, v40, v52, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v64, v133, v101, 0xc0c0004
	v_lshl_or_b32 v97, v89, 16, v40
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v129, v65, 16, v64
	s_waitcnt vmcnt(0)
	ds_load_u8 v58, v25
	scratch_load_b32 v25, off, off offset:612 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v52, v25
	ds_load_u8 v54, v235 offset:1968
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v25, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v0, v0, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v0, 16, v27
	v_perm_b32 v0, v29, v28, 0xc0c0004
	v_perm_b32 v27, v42, v41, 0xc0c0004
	v_perm_b32 v28, v45, v232, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v40, 0, v25
	ds_store_b8 v40, v6
	ds_store_b8 v40, v8 offset:512
	ds_store_b8 v40, v10 offset:1024
	ds_store_b8 v40, v12 offset:1536
	ds_store_b8 v40, v14 offset:2048
	ds_store_b8 v40, v16 offset:2560
	ds_store_b8 v40, v18 offset:3072
	ds_store_b8 v40, v20 offset:3584
	ds_store_b8 v40, v22 offset:4096
	ds_store_b8 v40, v24 offset:4608
	ds_store_b8 v40, v59 offset:5120
	ds_store_b8 v40, v62 offset:5632
	ds_store_b8 v40, v66 offset:6144
	ds_store_b8 v40, v70 offset:6656
	ds_store_b8 v40, v81 offset:7168
	ds_store_b8 v40, v88 offset:7680
	ds_store_b8 v242, v1
	ds_store_b8 v242, v2 offset:512
	ds_store_b8 v242, v3 offset:1024
	ds_store_b8 v242, v4 offset:1536
	ds_store_b8 v242, v5 offset:2048
	ds_store_b8 v242, v7 offset:2560
	ds_store_b8 v242, v9 offset:3072
	ds_store_b8 v242, v11 offset:3584
	ds_store_b8 v242, v13 offset:4096
	ds_store_b8 v242, v15 offset:4608
	ds_store_b8 v242, v17 offset:5120
	ds_store_b8 v242, v19 offset:5632
	ds_store_b8 v242, v21 offset:6144
	ds_store_b8 v242, v23 offset:6656
	ds_store_b8 v242, v51 offset:7168
	ds_store_b8 v242, v60 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v1, off, off offset:236
	scratch_load_b32 v218, off, off offset:616
	scratch_load_b32 v227, off, off offset:620
	scratch_load_b32 v134, off, off offset:624
	v_mov_b32_e32 v25, v200
	v_mov_b32_e32 v200, v192
	v_mov_b32_e32 v192, v160
	v_dual_mov_b32 v160, v141 :: v_dual_mov_b32 v189, v138
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v138, v28, 16, v27
	v_perm_b32 v27, v47, v46, 0xc0c0004
	v_perm_b32 v28, v54, v52, 0xc0c0004
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[41:42], off, off offset:708
	scratch_load_b64 v[45:46], off, off offset:748
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v51, 0, v1
	s_waitcnt vmcnt(4)
	ds_load_2addr_stride64_b64 v[13:16], v218 offset1:8
	s_waitcnt vmcnt(3)
	ds_load_2addr_stride64_b64 v[17:20], v227 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[9:12], v51 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(2)
	ds_load_2addr_stride64_b64 v[21:24], v134 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[9:10], v[90:91], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[13:14], v[92:93], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[120:127], v[17:18], v[94:95], v[120:127] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[21:22], v[96:97], v[120:127] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v105, v120
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v245, v121
	v_cvt_f32_i32_e32 v244, v122
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v243, v123
	v_cvt_f32_i32_e32 v237, v124
	v_cvt_f32_i32_e32 v234, v125
	v_cvt_f32_i32_e32 v89, v126
	v_cvt_f32_i32_e32 v88, v127
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[120:127], v[11:12], v[90:91], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[15:16], v[92:93], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[120:127], v[19:20], v[94:95], v[120:127] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[23:24], v[96:97], v[120:127] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v81, v120
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v62, v125
	v_cvt_f32_i32_e32 v60, v126
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v59, v127
	v_cvt_f32_i32_e32 v70, v121
	v_cvt_f32_i32_e32 v241, v122
	v_cvt_f32_i32_e32 v240, v123
	v_cvt_f32_i32_e32 v66, v124
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[120:127], v[9:10], v[238:239], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[13:14], v[112:113], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[120:127], v[17:18], v[114:115], v[120:127] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[21:22], v[128:129], v[120:127] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v100, v120
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v85, v121
	v_cvt_f32_i32_e32 v84, v122
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v83, v123
	v_cvt_f32_i32_e32 v82, v124
	v_cvt_f32_i32_e32 v79, v125
	v_cvt_f32_i32_e32 v78, v126
	v_cvt_f32_i32_e32 v76, v127
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[120:127], v[11:12], v[238:239], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[15:16], v[112:113], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[120:127], v[19:20], v[114:115], v[120:127] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[23:24], v[128:129], v[120:127] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v65, v126
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v64, v127
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v127, v33, 16, v32
	v_lshl_or_b32 v126, v35, 16, v34
	v_perm_b32 v32, v44, v43, 0xc0c0004
	v_perm_b32 v33, v49, v48, 0xc0c0004
	v_perm_b32 v34, v55, v53, 0xc0c0004
	v_perm_b32 v35, v57, v56, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v69, v120
	v_cvt_f32_i32_e32 v75, v121
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v141, v33, 16, v32
	v_perm_b32 v32, v119, v61, 0xc0c0004
	v_lshl_or_b32 v140, v35, 16, v34
	v_perm_b32 v33, v117, v63, 0xc0c0004
	v_perm_b32 v34, v111, v71, 0xc0c0004
	v_perm_b32 v35, v109, v74, 0xc0c0004
	v_mov_b32_e32 v74, v142
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v73, v122
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v143, v33, 16, v32
	v_perm_b32 v32, v104, v77, 0xc0c0004
	v_lshl_or_b32 v142, v35, 16, v34
	v_perm_b32 v33, v118, v80, 0xc0c0004
	v_perm_b32 v34, v116, v103, 0xc0c0004
	v_perm_b32 v35, v110, v108, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v72, v123
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v49, v99, v255, 0xc0c0004
	v_lshl_or_b32 v131, v33, 16, v32
	v_mov_b32_e32 v207, v185
	v_lshl_or_b32 v130, v35, 16, v34
	v_wmma_i32_16x16x16_iu4 v[32:39], v[9:10], v[126:127], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v185, v144
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v67, v125
	v_cvt_f32_i32_e32 v68, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[32:39], v[13:14], v[140:141], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[17:18], v[142:143], v[32:39] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[21:22], v[130:131], v[32:39] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v106, v35
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v103, v37
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v35, v250, v249, 0xc0c0004
	v_perm_b32 v37, v252, v251, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v101, v39
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v39, v254, v253, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v109, v32
	v_cvt_f32_i32_e32 v108, v33
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v137, v37, 16, v35
	v_perm_b32 v35, v231, v230, 0xc0c0004
	v_lshl_or_b32 v136, v49, 16, v39
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v107, v34
	v_cvt_f32_i32_e32 v104, v36
	v_cvt_f32_i32_e32 v102, v38
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v148, v26, 16, v35
	v_perm_b32 v26, v31, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v139, v26, 16, v0
	v_perm_b32 v0, v87, v210, 0xc0c0004
	v_mov_b32_e32 v210, v201
	v_wmma_i32_16x16x16_iu4 v[116:123], v[11:12], v[126:127], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v26, v236, v50, 0xc0c0004
	v_mov_b32_e32 v201, v157
	v_mov_b32_e32 v157, v151
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[116:123], v[15:16], v[140:141], v[116:123] neg_lo:[1,1,0]
	v_lshl_or_b32 v151, v28, 16, v27
	v_lshl_or_b32 v150, v26, 16, v0
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[26:27], off, off offset:660
	scratch_load_b64 v[49:50], off, off offset:772
	v_wmma_i32_16x16x16_iu4 v[116:123], v[19:20], v[142:143], v[116:123] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[116:123], v[23:24], v[130:131], v[116:123] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v38, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v34, v121
	v_cvt_f32_i32_e32 v33, v122
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v32, v123
	v_cvt_f32_i32_e32 v48, v117
	v_cvt_f32_i32_e32 v44, v118
	v_cvt_f32_i32_e32 v43, v119
	v_cvt_f32_i32_e32 v36, v120
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[116:123], v[9:10], v[136:137], v[1:8] neg_lo:[1,1,0]
	scratch_load_b64 v[9:10], off, off offset:500 ; 8-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[116:123], v[13:14], v[148:149], v[116:123] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[116:123], v[17:18], v[138:139], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[116:123], v[21:22], v[150:151], v[116:123] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v233, v116
	v_cvt_f32_i32_e32 v236, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v255, v118
	v_cvt_f32_i32_e32 v228, v119
	v_cvt_f32_i32_e32 v144, v120
	v_cvt_f32_i32_e32 v226, v121
	v_cvt_f32_i32_e32 v217, v122
	v_cvt_f32_i32_e32 v216, v123
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, v9, v248
	scratch_load_b64 v[9:10], off, off offset:508 ; 8-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[116:123], v[11:12], v[136:137], v[1:8] neg_lo:[1,1,0]
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[10:11], off, off offset:516
	scratch_load_b64 v[11:12], off, off offset:524
	scratch_load_b64 v[12:13], off, off offset:532
	scratch_load_b64 v[13:14], off, off offset:540
	v_wmma_i32_16x16x16_iu4 v[116:123], v[15:16], v[148:149], v[116:123] neg_lo:[1,1,0]
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[14:15], off, off offset:548
	scratch_load_b64 v[15:16], off, off offset:556
	scratch_load_b64 v[16:17], off, off offset:564
	scratch_load_b64 v[17:18], off, off offset:572
	v_wmma_i32_16x16x16_iu4 v[116:123], v[19:20], v[138:139], v[116:123] neg_lo:[1,1,0]
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[18:19], off, off offset:580
	scratch_load_b64 v[19:20], off, off offset:592
	scratch_load_b64 v[20:21], off, off offset:628
	scratch_load_b64 v[21:22], off, off offset:636
	v_wmma_i32_16x16x16_iu4 v[116:123], v[23:24], v[150:151], v[116:123] neg_lo:[1,1,0]
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[22:23], off, off offset:644
	scratch_load_b64 v[23:24], off, off offset:652
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v24, v26, v248
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[26:27], off, off offset:668
	scratch_load_b64 v[27:28], off, off offset:676
	scratch_load_b64 v[28:29], off, off offset:684
	scratch_load_b64 v[29:30], off, off offset:692
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v99, v116
	v_cvt_f32_i32_e32 v56, v121
	v_cvt_f32_i32_e32 v54, v122
	v_cvt_f32_i32_e32 v52, v123
	v_cvt_f32_i32_e32 v116, v118
	v_cvt_f32_i32_e32 v111, v119
	v_cvt_f32_i32_e32 v98, v120
	v_cvt_f32_i32_e32 v117, v117
	scratch_load_b64 v[30:31], off, off offset:700 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v31, v41, v248
	scratch_load_b64 v[41:42], off, off offset:716 ; 8-byte Folded Reload
	v_add_nc_u32_e32 v9, v9, v248
	v_add_nc_u32_e32 v10, v10, v248
	v_add_nc_u32_e32 v11, v11, v248
	v_add_nc_u32_e32 v12, v12, v248
	v_add_nc_u32_e32 v14, v14, v248
	v_add_nc_u32_e32 v15, v15, v248
	v_add_nc_u32_e32 v16, v16, v248
	v_add_nc_u32_e32 v17, v17, v248
	v_add_nc_u32_e32 v18, v18, v248
	v_add_nc_u32_e32 v19, v19, v248
	v_add_nc_u32_e32 v20, v20, v248
	v_add_nc_u32_e32 v22, v22, v248
	v_add_nc_u32_e32 v23, v23, v248
	v_add_nc_u32_e32 v26, v26, v248
	v_add_nc_u32_e32 v27, v27, v248
	v_add_nc_u32_e32 v28, v28, v248
	v_add_nc_u32_e32 v21, v21, v248
	v_add_nc_u32_e32 v29, v29, v248
	v_add_nc_u32_e32 v30, v30, v248
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v35, v41, v248
	scratch_load_b64 v[41:42], off, off offset:724 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, v41, v248
	scratch_load_b64 v[41:42], off, off offset:732 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, v41, v248
	scratch_load_b64 v[41:42], off, off offset:740 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, v45, v248
	scratch_load_b64 v[45:46], off, off offset:756 ; 8-byte Folded Reload
	v_add_nc_u32_e32 v13, v13, v248
	scratch_load_b64 v[46:47], off, off offset:764 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v47, v49, v248
	scratch_load_b64 v[49:50], off, off offset:780 ; 8-byte Folded Reload
	v_add_nc_u32_e32 v41, v41, v248
	v_add_nc_u32_e32 v45, v45, v248
	v_add_nc_u32_e32 v46, v46, v248
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v49, v49, v248
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1f
	buffer_load_u8 v0, v0, s[24:27], 0 offen
	buffer_load_u8 v10, v10, s[24:27], 0 offen
	buffer_load_u8 v12, v12, s[24:27], 0 offen
	buffer_load_u8 v14, v14, s[24:27], 0 offen
	buffer_load_u8 v16, v16, s[24:27], 0 offen
	buffer_load_u8 v18, v18, s[24:27], 0 offen
	buffer_load_u8 v20, v20, s[24:27], 0 offen
	buffer_load_u8 v22, v22, s[24:27], 0 offen
	buffer_load_u8 v24, v24, s[24:27], 0 offen
	buffer_load_u8 v27, v27, s[24:27], 0 offen
	buffer_load_u8 v29, v29, s[24:27], 0 offen
	buffer_load_u8 v31, v31, s[24:27], 0 offen
	buffer_load_u8 v37, v37, s[24:27], 0 offen
	buffer_load_u8 v41, v41, s[24:27], 0 offen
	buffer_load_u8 v45, v45, s[24:27], 0 offen
	buffer_load_u8 v47, v47, s[24:27], 0 offen
	buffer_load_u8 v15, v15, s[24:27], 0 offen
	buffer_load_u8 v13, v13, s[24:27], 0 offen
	buffer_load_u8 v11, v11, s[24:27], 0 offen
	buffer_load_u8 v9, v9, s[24:27], 0 offen
	buffer_load_u8 v23, v23, s[24:27], 0 offen
	buffer_load_u8 v21, v21, s[24:27], 0 offen
	buffer_load_u8 v19, v19, s[24:27], 0 offen
	buffer_load_u8 v17, v17, s[24:27], 0 offen
	buffer_load_u8 v35, v35, s[24:27], 0 offen
	buffer_load_u8 v30, v30, s[24:27], 0 offen
	buffer_load_u8 v28, v28, s[24:27], 0 offen
	buffer_load_u8 v26, v26, s[24:27], 0 offen
	buffer_load_u8 v49, v49, s[24:27], 0 offen
	buffer_load_u8 v46, v46, s[24:27], 0 offen
	buffer_load_u8 v42, v42, s[24:27], 0 offen
	buffer_load_u8 v39, v39, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s26, s45, s44
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(31)
	ds_store_b8 v40, v0
	s_waitcnt vmcnt(30)
	ds_store_b8 v40, v10 offset:512
	s_waitcnt vmcnt(29)
	ds_store_b8 v40, v12 offset:1024
	s_waitcnt vmcnt(28)
	ds_store_b8 v40, v14 offset:1536
	s_waitcnt vmcnt(27)
	ds_store_b8 v40, v16 offset:2048
	s_waitcnt vmcnt(26)
	ds_store_b8 v40, v18 offset:2560
	s_waitcnt vmcnt(25)
	ds_store_b8 v40, v20 offset:3072
	s_waitcnt vmcnt(24)
	ds_store_b8 v40, v22 offset:3584
	s_waitcnt vmcnt(23)
	ds_store_b8 v40, v24 offset:4096
	s_waitcnt vmcnt(22)
	ds_store_b8 v40, v27 offset:4608
	s_waitcnt vmcnt(21)
	ds_store_b8 v40, v29 offset:5120
	s_waitcnt vmcnt(20)
	ds_store_b8 v40, v31 offset:5632
	s_waitcnt vmcnt(19)
	ds_store_b8 v40, v37 offset:6144
	s_waitcnt vmcnt(18)
	ds_store_b8 v40, v41 offset:6656
	s_waitcnt vmcnt(17)
	ds_store_b8 v40, v45 offset:7168
	s_waitcnt vmcnt(16)
	ds_store_b8 v40, v47 offset:7680
	s_waitcnt vmcnt(12)
	ds_store_b8 v242, v9
	ds_store_b8 v242, v11 offset:512
	ds_store_b8 v242, v13 offset:1024
	ds_store_b8 v242, v15 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v242, v17 offset:2048
	ds_store_b8 v242, v19 offset:2560
	ds_store_b8 v242, v21 offset:3072
	ds_store_b8 v242, v23 offset:3584
	s_waitcnt vmcnt(4)
	ds_store_b8 v242, v26 offset:4096
	ds_store_b8 v242, v28 offset:4608
	ds_store_b8 v242, v30 offset:5120
	ds_store_b8 v242, v35 offset:5632
	s_waitcnt vmcnt(0)
	ds_store_b8 v242, v39 offset:6144
	ds_store_b8 v242, v42 offset:6656
	ds_store_b8 v242, v46 offset:7168
	ds_store_b8 v242, v49 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[229:232], v51 offset1:8
	ds_load_2addr_stride64_b64 v[247:250], v218 offset1:8
	ds_load_2addr_stride64_b64 v[251:254], v227 offset1:8
	v_mov_b32_e32 v218, v178
	v_mov_b32_e32 v178, v135
	ds_load_2addr_stride64_b64 v[132:135], v134 offset1:8
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s26, s26, s43
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[229:230], v[90:91], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[118:125], v[229:230], v[126:127], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[247:248], v[92:93], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[118:125], v[247:248], v[140:141], v[118:125] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[251:252], v[94:95], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[118:125], v[251:252], v[142:143], v[118:125] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[132:133], v[96:97], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[118:125], v[132:133], v[130:131], v[118:125] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v53, v10
	v_cvt_f32_i32_e32 v51, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v50, v12
	v_cvt_f32_i32_e32 v42, v13
	v_cvt_f32_i32_e32 v41, v14
	v_cvt_f32_i32_e32 v40, v15
	v_cvt_f32_i32_e32 v39, v16
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[10:17], v[231:232], v[90:91], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v61, v122
	v_cvt_f32_i32_e32 v58, v123
	v_cvt_f32_i32_e32 v57, v124
	v_cvt_f32_i32_e32 v55, v125
	v_cvt_f32_i32_e32 v227, v9
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[10:17], v[249:250], v[92:93], v[10:17] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[10:17], v[253:254], v[94:95], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[10:17], v[134:135], v[96:97], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[229:230], v[238:239], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v0, v15
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[90:97], v[247:248], v[112:113], v[90:97] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v35, v10
	v_cvt_f32_i32_e32 v9, v16
	v_cvt_f32_i32_e32 v10, v17
	v_cvt_f32_i32_e32 v18, v11
	v_cvt_f32_i32_e32 v17, v12
	v_cvt_f32_i32_e32 v16, v13
	v_cvt_f32_i32_e32 v11, v14
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[90:97], v[251:252], v[114:115], v[90:97] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[132:133], v[128:129], v[90:97] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v80, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v77, v91
	v_cvt_f32_i32_e32 v71, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v63, v93
	v_cvt_f32_i32_e32 v49, v94
	v_cvt_f32_i32_e32 v47, v95
	v_cvt_f32_i32_e32 v46, v96
	v_cvt_f32_i32_e32 v45, v97
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[90:97], v[231:232], v[238:239], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[249:250], v[112:113], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[253:254], v[114:115], v[90:97] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[134:135], v[128:129], v[90:97] neg_lo:[1,1,0]
	v_mov_b32_e32 v128, v168
	v_mov_b32_e32 v168, v162
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v27, v91
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v26, v92
	v_cvt_f32_i32_e32 v24, v93
	v_cvt_f32_i32_e32 v15, v94
	v_cvt_f32_i32_e32 v94, v118
	v_cvt_f32_i32_e32 v93, v119
	v_cvt_f32_i32_e32 v92, v120
	v_cvt_f32_i32_e32 v91, v121
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[118:125], v[231:232], v[126:127], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v23, v90
	v_cvt_f32_i32_e32 v12, v95
	v_cvt_f32_i32_e32 v13, v96
	v_cvt_f32_i32_e32 v14, v97
	v_dual_mov_b32 v126, v175 :: v_dual_mov_b32 v175, v153
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[118:125], v[249:250], v[140:141], v[118:125] neg_lo:[1,1,0]
	v_dual_mov_b32 v140, v191 :: v_dual_mov_b32 v191, v213
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[118:125], v[253:254], v[142:143], v[118:125] neg_lo:[1,1,0]
	v_dual_mov_b32 v143, v184 :: v_dual_mov_b32 v184, v209
	v_mov_b32_e32 v209, v86
	v_mov_b32_e32 v142, v74
	v_wmma_i32_16x16x16_iu4 v[118:125], v[134:135], v[130:131], v[118:125] neg_lo:[1,1,0]
	v_mov_b32_e32 v130, v182
	v_mov_b32_e32 v182, v163
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v28, v118
	v_cvt_f32_i32_e32 v19, v123
	v_cvt_f32_i32_e32 v20, v124
	v_cvt_f32_i32_e32 v21, v125
	v_cvt_f32_i32_e32 v31, v119
	v_cvt_f32_i32_e32 v30, v120
	v_cvt_f32_i32_e32 v29, v121
	v_cvt_f32_i32_e32 v22, v122
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[118:125], v[229:230], v[136:137], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[118:125], v[247:248], v[148:149], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[118:125], v[251:252], v[138:139], v[118:125] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[118:125], v[132:133], v[150:151], v[118:125] neg_lo:[1,1,0]
	v_mov_b32_e32 v132, v165
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v110, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v97, v119
	v_cvt_f32_i32_e32 v96, v120
	v_cvt_f32_i32_e32 v95, v121
	v_cvt_f32_i32_e32 v90, v122
	v_cvt_f32_i32_e32 v87, v123
	v_cvt_f32_i32_e32 v86, v124
	v_cvt_f32_i32_e32 v74, v125
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[118:125], v[231:232], v[136:137], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v136, v179
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[118:125], v[249:250], v[148:149], v[118:125] neg_lo:[1,1,0]
	v_mov_b32_e32 v148, v186
	v_mov_b32_e32 v186, v206
	v_wmma_i32_16x16x16_iu4 v[118:125], v[253:254], v[138:139], v[118:125] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[118:125], v[134:135], v[150:151], v[118:125] neg_lo:[1,1,0]
	v_mov_b32_e32 v135, v178
	v_dual_mov_b32 v178, v218 :: v_dual_mov_b32 v141, v160
	v_mov_b32_e32 v160, v192
	v_mov_b32_e32 v192, v200
	v_mov_b32_e32 v200, v25
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v134, off, off
	scratch_load_b32 v25, off, off offset:216
	v_mov_b32_e32 v138, v189
	v_mov_b32_e32 v150, v187
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v5, v118
	v_cvt_f32_i32_e32 v1, v123
	v_cvt_f32_i32_e32 v2, v124
	v_cvt_f32_i32_e32 v3, v125
	v_cvt_f32_i32_e32 v8, v119
	v_cvt_f32_i32_e32 v7, v120
	v_cvt_f32_i32_e32 v6, v121
	v_cvt_f32_i32_e32 v4, v122
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v37, s45, v25, 1
	scratch_load_b32 v25, off, off offset:220 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v112, s45, v25, 1
	scratch_load_b32 v25, off, off offset:224 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v112, 0x80000000, v112, s0
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v113, s45, v25, 1
	scratch_load_b32 v25, off, off offset:228 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v113, 0x80000000, v113, s1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v114, s45, v25, 1
	scratch_load_b32 v25, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s45, s45, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s45, s40
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v114, 0x80000000, v114, s3
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v115, v25, s26, 1
	buffer_load_u16 v115, v115, s[28:31], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v37, v37, s[12:15], 0 offen
	buffer_load_u16 v112, v112, s[12:15], 0 offen
	buffer_load_u16 v113, v113, s[12:15], 0 offen
	buffer_load_u16 v114, v114, s[12:15], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v213, off, off offset:588 ; 4-byte Folded Reload
	v_mov_b32_e32 v129, v169
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v115, 16, v115
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v37, 16, v37
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v105, v37, v105
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v213, v115
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[118:121], v221
	ds_load_b128 v[122:125], v221 offset:16
	v_mov_b32_e32 v169, v159
	v_mov_b32_e32 v133, v164
	v_mov_b32_e32 v151, v157
	v_mov_b32_e32 v157, v201
	v_dual_mov_b32 v115, v166 :: v_dual_mov_b32 v166, v173
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v176, v105, v118
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v105, v37, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v177, v105, v119
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v105, v37, v244
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v219, v105, v120
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v105, v37, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v178, v105, v121 :: v_dual_lshlrev_b32 v105, 16, v112
	v_mov_b32_e32 v131, v183
	v_dual_mov_b32 v139, v190 :: v_dual_mov_b32 v190, v203
	v_dual_mov_b32 v112, v158 :: v_dual_mul_f32 v85, v105, v85
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v82, v105, v82
	v_mul_f32_e32 v100, v105, v100
	v_dual_mul_f32 v76, v105, v76 :: v_dual_mov_b32 v183, v155
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v214, v85, v119 :: v_dual_lshlrev_b32 v85, 16, v113
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v83, v105, v83
	v_mov_b32_e32 v113, v154
	v_dual_mov_b32 v201, v210 :: v_dual_mov_b32 v210, v167
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v157, v100, v118
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v151, v76, v125 :: v_dual_fmac_f32 v148, v82, v122
	v_mov_b32_e32 v154, v174
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v38, v38, v85
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v160, v83, v121
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v83, v85, v109
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v109, off, off offset:196
	scratch_load_b32 v164, off, off offset:176
	scratch_load_b32 v173, off, off offset:164
	v_mul_f32_e32 v76, v85, v104
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v104, off, off offset:96
	scratch_load_b32 v159, off, off offset:92
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v130, v83, v118 :: v_dual_mul_f32 v83, v85, v108
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v108, off, off offset:160
	scratch_load_b32 v153, off, off offset:148
	scratch_load_b32 v163, off, off offset:116
	v_fmac_f32_e32 v126, v76, v122
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v76, v85, v103
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v131, v83, v119
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v83, v85, v107
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v133, v83, v120
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v83, v85, v106
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v106, 16, v114
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v114, off, off offset:112
	scratch_load_b32 v165, off, off offset:108
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v132, v83, v121
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v83, v106, v233
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v4, v106, v4
	v_mul_f32_e32 v2, v2, v106
	v_mul_f32_e32 v5, v5, v106
	v_mul_f32_e32 v3, v3, v106
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v113, v83, v118
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v118, off, off offset:192
	scratch_load_b32 v167, off, off offset:156
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v83, v106, v236
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v1, v1, v106 :: v_dual_fmac_f32 v114, v83, v119
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v83, v106, v255
	v_mov_b32_e32 v127, v161
	v_mov_b32_e32 v161, v152
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v107, off, off offset:104
	scratch_load_b32 v152, off, off offset:100
	scratch_load_b32 v119, off, off offset:140
	scratch_load_b32 v162, off, off offset:120
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v118, v83, v120 :: v_dual_fmac_f32 v127, v76, v123
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v76, v85, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v128, v76, v124
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v76, v85, v101
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v129, v76, v125 :: v_dual_mul_f32 v76, v106, v144
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v83, v106, v228 :: v_dual_mov_b32 v144, v185
	v_mul_f32_e32 v70, v37, v70
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v37, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v16, v37, v16 :: v_dual_fmac_f32 v115, v83, v121
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v83, v37, v237
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v0, v37
	v_dual_mul_f32 v17, v37, v17 :: v_dual_fmac_f32 v168, v83, v122
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v83, v37, v234
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v169, v83, v123
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v83, v37, v89
	scratch_load_b32 v89, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v107, v76, v122
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v76, v106, v226
	scratch_load_b32 v122, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v108, v76, v123
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v76, v106, v217
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v109, v76, v124
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v76, v106, v216
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v112, v76, v125
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v76, v81, v37
	v_mul_f32_e32 v84, v105, v84
	v_mul_f32_e32 v69, v69, v105
	v_dual_mov_b32 v137, v188 :: v_dual_mul_f32 v78, v105, v78
	v_mov_b32_e32 v149, v196
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v161, v84, v120
	v_mov_b32_e32 v120, v172
	v_dual_mov_b32 v172, v195 :: v_dual_mov_b32 v195, v194
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v121, off, off offset:184
	scratch_load_b32 v155, off, off offset:180
	scratch_load_b32 v194, off, off offset:152
	v_dual_fmac_f32 v150, v78, v124 :: v_dual_mov_b32 v185, v207
	v_fmac_f32_e32 v172, v83, v124
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v83, v37, v88
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v88, off, off offset:4
	scratch_load_b32 v124, off, off offset:132
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v173, v83, v125
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[81:84], v221 offset:512
	ds_load_b128 v[100:103], v221 offset:528
	scratch_load_b32 v125, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v159, v70, v82 :: v_dual_mul_f32 v70, v37, v241
	v_fmac_f32_e32 v191, v38, v81
	v_fmac_f32_e32 v202, v76, v81
	s_waitcnt vmcnt(8)
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v162, v70, v83
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v70, v37, v240
	v_mul_f32_e32 v38, v85, v48
	v_mul_f32_e32 v32, v32, v85
	v_mul_f32_e32 v36, v85, v36
	v_mul_f32_e32 v34, v34, v85
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v163, v70, v84
	v_dual_fmac_f32 v119, v38, v82 :: v_dual_mul_f32 v38, v85, v44
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v223, v32, v103 :: v_dual_mul_f32 v32, v106, v98
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v33, v33, v85
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v190, v34, v101
	v_fmac_f32_e32 v120, v38, v83
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v38, v85, v43
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v224, v33, v102 :: v_dual_fmac_f32 v121, v38, v84
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v38, v99, v106
	scratch_load_b32 v99, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v225, v69, v81
	v_fmac_f32_e32 v222, v38, v81
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v38, v106, v117
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v88, v32, v100
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v32, v56, v106 :: v_dual_mul_f32 v69, v105, v75
	scratch_load_b32 v117, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v89, v38, v82
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v38, v106, v116
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v186, v32, v101
	v_fmac_f32_e32 v138, v69, v82
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v69, v105, v73 :: v_dual_mul_f32 v32, v54, v106
	scratch_load_b32 v116, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v139, v69, v83
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v99, v38, v83
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v38, v106, v111
	scratch_load_b32 v111, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v104, v38, v84
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v38, v37, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v164, v38, v100
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v38, v62, v37
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v201, v38, v101
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v38, v60, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v200, v38, v102
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v38, v59, v37
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v197, v38, v103 :: v_dual_mul_f32 v38, v105, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v141, v38, v100 :: v_dual_mul_f32 v38, v67, v105
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v79, v105, v79 :: v_dual_fmac_f32 v194, v38, v101
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v149, v79, v123 :: v_dual_mul_f32 v38, v65, v105
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v123, off, off offset:136
	scratch_load_b32 v101, off, off offset:52
	v_dual_fmac_f32 v193, v38, v102 :: v_dual_mul_f32 v38, v64, v105
	v_fmac_f32_e32 v185, v32, v102
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v32, v52, v106 :: v_dual_mul_f32 v69, v105, v72
	scratch_load_b32 v102, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v192, v38, v103
	v_fmac_f32_e32 v184, v32, v103
	v_add_nc_u32_e32 v32, s33, v25
	scratch_load_b32 v103, off, off offset:64 ; 4-byte Folded Reload
	v_fmac_f32_e32 v140, v69, v84
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v32, v32, s26, 1
	buffer_load_u16 v32, v32, s[28:31], 0 offen
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v111, v36, v100
	scratch_load_b32 v100, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v36, v35, v37
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v213, v32
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b64 v[33:34], off, off offset:204 ; 8-byte Folded Reload
	ds_load_b128 v[64:67], v221
	ds_load_b128 v[81:84], v221 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v37, v227
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v183, v32, v64 :: v_dual_mul_f32 v32, v37, v53
	v_fmac_f32_e32 v182, v32, v65
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v37, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v180, v32, v66
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v37, v50
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v181, v32, v67 :: v_dual_mul_f32 v32, v105, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v156, v32, v64
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v105, v77
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v155, v32, v65 :: v_dual_mul_f32 v32, v105, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v154, v32, v66
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v105, v63
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v153, v32, v67 :: v_dual_mul_f32 v32, v85, v94
	scratch_load_b32 v94, off, off offset:40 ; 4-byte Folded Reload
	v_dual_fmac_f32 v137, v32, v64 :: v_dual_mul_f32 v32, v85, v93
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v136, v32, v65
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v85, v92
	scratch_load_b32 v92, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v134, v32, v66
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v85, v91
	scratch_load_b32 v91, off, off offset:28 ; 4-byte Folded Reload
	scratch_store_b32 off, v134, off        ; 4-byte Folded Spill
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v135, v32, v67 :: v_dual_mul_f32 v32, v106, v110
	scratch_load_b32 v110, off, off offset:56 ; 4-byte Folded Reload
	v_fmac_f32_e32 v102, v32, v64
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v106, v97
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v101, v32, v65 :: v_dual_mul_f32 v32, v106, v96
	scratch_load_b32 v96, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v100, v32, v66
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v106, v95
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v95, off, off offset:44
	scratch_load_b32 v93, off, off offset:36
	s_waitcnt vmcnt(7)
	v_mov_b32_e32 v25, v33
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v95, v32, v67 :: v_dual_mul_f32 v32, v37, v42
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v175, v32, v81
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v37, v41
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v212, v32, v82
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v37, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v170, v32, v83
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v37, v39
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v171, v32, v84 :: v_dual_mul_f32 v32, v105, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v152, v32, v81
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v105, v47
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v147, v32, v82
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v105, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v146, v32, v83
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v105, v45
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v145, v32, v84 :: v_dual_mul_f32 v32, v85, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v125, v32, v81 :: v_dual_mul_f32 v32, v85, v58
	v_fmac_f32_e32 v124, v32, v82
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v85, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v122, v32, v83
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v85, v55
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v123, v32, v84 :: v_dual_mul_f32 v32, v106, v90
	scratch_load_b32 v90, off, off offset:20 ; 4-byte Folded Reload
	v_fmac_f32_e32 v94, v32, v81
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v106, v87
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v87, off, off offset:16
	scratch_load_b32 v81, off, off offset:124
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v93, v32, v82
	scratch_load_b32 v82, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v106, v86
	scratch_load_b32 v86, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v92, v32, v83
	scratch_load_b32 v83, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v106, v74
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v91, v32, v84
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[32:35], v221 offset:512
	ds_load_b128 v[38:41], v221 offset:528
	scratch_load_b32 v84, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v165, v16, v35 :: v_dual_mul_f32 v16, v23, v105
	v_fmac_f32_e32 v215, v5, v32
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v5, v106, v8 :: v_dual_mul_f32 v8, v12, v105
	v_mul_f32_e32 v12, v19, v85
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v166, v17, v34 :: v_dual_fmac_f32 v211, v0, v39
	v_fmac_f32_e32 v198, v2, v40
	v_dual_fmac_f32 v208, v8, v39 :: v_dual_fmac_f32 v195, v3, v41
	v_fmac_f32_e32 v199, v1, v39
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v90, v5, v33 :: v_dual_mul_f32 v5, v106, v7
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v7, v37, v11
	v_mul_f32_e32 v11, v105, v15
	v_mul_f32_e32 v15, v85, v22
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v87, v5, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v5, v106, v6
	v_mul_f32_e32 v6, v10, v37
	v_mul_f32_e32 v10, v14, v105
	v_mul_f32_e32 v14, v21, v85
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v82, v16, v32 :: v_dual_fmac_f32 v103, v15, v38
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v16, v105, v27
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v86, v5, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v5, v9, v37
	v_mul_f32_e32 v9, v13, v105
	v_mul_f32_e32 v13, v20, v85
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v144, v16, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v16, v105, v26
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v210, v5, v40 :: v_dual_fmac_f32 v209, v6, v41
	v_fmac_f32_e32 v246, v9, v40
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v220, v10, v41 :: v_dual_fmac_f32 v83, v12, v39
	v_dual_fmac_f32 v204, v14, v41 :: v_dual_fmac_f32 v143, v16, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v16, v105, v24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v105, off, off offset:68
	scratch_load_b32 v106, off, off offset:88
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v81, v36, v32
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v84, v13, v40
	v_fmac_f32_e32 v142, v16, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v16, v28, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v205, v16, v32 :: v_dual_mul_f32 v16, v85, v31
	v_fmac_f32_e32 v167, v18, v33
	v_dual_fmac_f32 v117, v16, v33 :: v_dual_mul_f32 v16, v85, v30
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v116, v16, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v16, v85, v29
	scratch_load_b32 v85, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v110, v16, v35 :: v_dual_fmac_f32 v105, v11, v38
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v106, v7, v38
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v85, v4, v38
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v97, off, off offset:792
	scratch_load_b32 v98, off, off offset:796
	v_and_b32_e32 v1, 0x80, v96
	v_mov_b32_e32 v3, v25
.LBB0_7:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v81 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v182
	v_dual_mul_f32 v2, 0xbfb8aa3b, v210 :: v_dual_mul_f32 v37, 0xbfb8aa3b, v153
	v_dual_mul_f32 v6, 0xbfb8aa3b, v209 :: v_dual_mul_f32 v35, 0xbfb8aa3b, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v0, 0xbfb8aa3b, v211 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v106
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v6
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v6, 0, 0x42800000, s0
	v_cndmask_b32_e64 v14, 0, 0x42800000, s1
	v_dual_fmac_f32 v10, 0xbfb8aa3b, v81 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v154
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v6, 0xbfb8aa3b, v210 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v155
	v_exp_f32_e32 v10, v10
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v209
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v2, 0xbfb8aa3b, v211 :: v_dual_mul_f32 v33, 0xbfb8aa3b, v145
	v_exp_f32_e32 v15, v6
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v14, v14
	v_exp_f32_e32 v2, v2
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s1
	v_ldexp_f32 v9, v10, v9
	v_dual_mul_f32 v10, 0xbfb8aa3b, v82 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v143
	v_mul_f32_e32 v0, 0xbfb8aa3b, v171
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v12, v15, v12
	v_mul_f32_e32 v15, 0xbfb8aa3b, v246
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_mul_f32_e32 v10, 0xbfb8aa3b, v208
	v_mul_f32_e32 v16, 0xbfb8aa3b, v220
	v_ldexp_f32 v11, v2, v11
	v_ldexp_f32 v13, v14, v13
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v15
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v16
	v_mul_f32_e32 v20, 0xbfb8aa3b, v204
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v82
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0x42800000, s0
	v_cndmask_b32_e64 v19, 0, 0x42800000, s1
	v_mul_f32_e32 v24, 0xbfb8aa3b, v212
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v6, 0xbfb8aa3b, v175 :: v_dual_fmac_f32 v15, 0xbfb8aa3b, v208
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v246
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v220
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s0
	v_exp_f32_e32 v15, v15
	v_exp_f32_e32 v17, v17
	v_exp_f32_e32 v19, v19
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v20
	v_dual_mul_f32 v54, 0xbfb8aa3b, v103 :: v_dual_add_f32 v9, 1.0, v9
	v_dual_mul_f32 v46, 0xbfb8aa3b, v100 :: v_dual_add_f32 v11, 1.0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_cndmask_b32_e64 v25, 0, 0x42800000, s1
	v_ldexp_f32 v10, v15, v10
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v15, v17, v16
	v_ldexp_f32 v16, v19, v18
	v_mul_f32_e32 v19, 0xbfb8aa3b, v84
	v_exp_f32_e32 v14, v14
	v_dual_mul_f32 v40, 0xbfb8aa3b, v147 :: v_dual_fmac_f32 v25, 0xbfb8aa3b, v204
	v_mul_f32_e32 v17, 0xbfb8aa3b, v83
	v_mul_f32_e32 v55, 0xbfb8aa3b, v110
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v19
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s1
	v_exp_f32_e32 v25, v25
	v_mul_f32_e32 v27, 0xbfb8aa3b, v93
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v9, v9, v81
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v14, v14, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v205
	v_cndmask_b32_e64 v22, 0, 0x42800000, s0
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v58, 0xbfb8aa3b, v101 :: v_dual_add_f32 v15, 1.0, v15
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v84
	v_ldexp_f32 v28, v25, v23
	v_mul_f32_e32 v23, 0xbfb8aa3b, v195
	v_dual_mul_f32 v8, 0xbfb8aa3b, v183 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v170
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_exp_f32_e32 v22, v22
	v_dual_mul_f32 v4, 0xbfb8aa3b, v180 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v181
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v205
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v13, 1.0, v13 :: v_dual_mul_f32 v36, 0xbfb8aa3b, v167
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v45, 0xbfb8aa3b, v144
	v_exp_f32_e32 v18, v18
	v_dual_fmac_f32 v19, 0xbfb8aa3b, v83 :: v_dual_mul_f32 v30, 0xbfb8aa3b, v165
	v_mul_f32_e32 v41, 0xbfb8aa3b, v142
	scratch_load_b32 v134, off, off         ; 4-byte Folded Reload
	v_dual_mul_f32 v48, 0xbfb8aa3b, v156 :: v_dual_mul_f32 v59, 0xbfb8aa3b, v137
	v_exp_f32_e32 v19, v19
	v_dual_mul_f32 v52, 0xbfb8aa3b, v152 :: v_dual_mul_f32 v43, 0xbfb8aa3b, v123
	v_ldexp_f32 v18, v18, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v215
	v_dual_mul_f32 v34, 0xbfb8aa3b, v146 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v136
	v_dual_mul_f32 v38, 0xbfb8aa3b, v105 :: v_dual_mul_f32 v53, 0xbfb8aa3b, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_ldexp_f32 v17, v19, v17
	v_ldexp_f32 v19, v22, v20
	v_mul_f32_e32 v20, 0xbfb8aa3b, v199
	v_mul_f32_e32 v22, 0xbfb8aa3b, v198
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v26, 0xbfb8aa3b, v92 :: v_dual_add_f32 v17, 1.0, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_dual_mul_f32 v50, 0xbfb8aa3b, v135 :: v_dual_mul_f32 v61, 0xbfb8aa3b, v102
	v_cndmask_b32_e64 v49, 0, 0x42800000, s0
	v_mul_f32_e32 v44, 0xbfb8aa3b, v122
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v23
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v199
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v198
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, vcc_lo, v81, v9, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v49
	v_cndmask_b32_e64 v23, 0, 0x42800000, s0
	v_exp_f32_e32 v67, v22
	v_mul_f32_e32 v56, 0xbfb8aa3b, v125
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_dual_mul_f32 v62, 0xbfb8aa3b, v117 :: v_dual_fmac_f32 v23, 0xbfb8aa3b, v195
	v_dual_mul_f32 v60, 0xbfb8aa3b, v116 :: v_dual_mul_f32 v49, 0xbfb8aa3b, v94
	v_mul_f32_e32 v25, 0xbfb8aa3b, v91
	v_ldexp_f32 v32, v65, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v66, v70, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v63, v67, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v11, v11, v211
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v65, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_add_f32 v63, 1.0, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v65, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v23, 0xbfb8aa3b, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v73, v71, v70
	v_div_scale_f32 v77, s1, v210, v12, v210
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
.Ltmp6:
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v64, v68, v64
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v12, v12, v210
	v_fma_f32 v75, -v66, v73, v71
	v_fma_f32 v74, -v67, v65, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v215
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v68
.Ltmp7:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v75, v70
	v_fmac_f32_e32 v65, v74, v65
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_exp_f32_e32 v20, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, s0, v211, v11, v211
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fma_f32 v66, -v66, v73, v71
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	s_and_b32 s13, s17, 0xffff
	s_mov_b32 s15, 0x31027000
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v68, v72, 1.0
	v_mul_f32_e32 v75, v74, v65
	v_div_fmas_f32 v66, v66, v70, v73
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_ldexp_f32 v69, v20, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v85
	v_mul_f32_e32 v20, 0xbfb8aa3b, v86
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v76, v72
	v_div_scale_f32 v76, null, v13, v13, v209
	v_fma_f32 v71, -v67, v75, v74
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v22, 0xbfb8aa3b, v87 :: v_dual_mul_f32 v79, v77, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v78, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v75, v71, v65
	v_div_scale_f32 v80, null, v14, v14, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v68, v79, v77
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v9, v66, v9, v81
	v_rcp_f32_e32 v70, v80
	v_fma_f32 v66, -v67, v75, v74
	v_fmac_f32_e32 v79, v71, v72
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v76, v78, 1.0
	v_div_scale_f32 v67, s3, v209, v13, v209
	v_div_fmas_f32 v65, v66, v65, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v68, v79, v77
	v_fmac_f32_e32 v78, v73, v78
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v71, -v80, v70, 1.0
	v_div_scale_f32 v73, s0, v82, v14, v82
	v_mul_f32_e32 v68, v67, v78
	v_div_fmas_f32 v66, v66, v72, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, null, v10, v10, v208
	v_fma_f32 v74, -v76, v68, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v16, 1.0, v16 :: v_dual_mul_f32 v75, v73, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v71
	v_div_scale_f32 v77, null, v15, v15, v246
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v68, v74, v78
	v_div_fixup_f32 v11, v65, v11, v211
	v_div_fixup_f32 v12, v66, v12, v210
	v_fma_f32 v65, -v80, v75, v73
	v_rcp_f32_e32 v66, v77
	v_fma_f32 v67, -v76, v68, v67
	v_div_scale_f32 v76, null, v16, v16, v220
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v74, -v71, v72, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v28, 1.0, v28 :: v_dual_fmac_f32 v75, v65, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, s1, v208, v10, v208
	v_fmac_f32_e32 v72, v74, v72
	v_rcp_f32_e32 v74, v76
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v79, -v77, v66, 1.0
	v_div_fmas_f32 v67, v67, v78, v68
	v_fma_f32 v68, -v80, v75, v73
	v_mul_f32_e32 v73, v65, v72
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v66, v79, v66
	v_div_scale_f32 v78, s3, v246, v15, v246
	v_fma_f32 v79, -v76, v74, 1.0
	v_div_scale_f32 v80, null, v18, v18, v205
	v_div_fmas_f32 v68, v68, v70, v75
	v_fma_f32 v70, -v71, v73, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v32, 1.0, v32 :: v_dual_mul_f32 v75, v78, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v79, v74
	v_rcp_f32_e32 v79, v80
	v_div_scale_f32 v81, s0, v220, v16, v220
	v_fmac_f32_e32 v73, v70, v72
	v_div_scale_f32 v70, null, v17, v17, v83
	v_div_fixup_f32 v13, v67, v13, v209
	v_div_fixup_f32 v14, v68, v14, v82
	v_fma_f32 v67, -v77, v75, v78
	v_mul_f32_e32 v68, v81, v74
	v_fma_f32 v65, -v71, v73, v65
	v_rcp_f32_e32 v71, v70
	v_fma_f32 v82, -v80, v79, 1.0
	v_fmac_f32_e32 v75, v67, v66
	v_fma_f32 v67, -v76, v68, v81
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v79, v82, v79
	v_div_scale_f32 v82, s4, v205, v18, v205
	v_div_fmas_f32 v65, v65, v72, v73
	v_fma_f32 v72, -v77, v75, v78
	v_fmac_f32_e32 v68, v67, v74
	v_fma_f32 v73, -v70, v71, 1.0
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v64, 1.0, v64 :: v_dual_mul_f32 v67, v82, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v66, v72, v66, v75
	v_fma_f32 v72, -v76, v68, v81
	v_fmac_f32_e32 v71, v73, v71
	v_div_scale_f32 v73, null, v19, v19, v84
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v75, -v80, v67, v82
	v_div_scale_f32 v76, s1, v83, v17, v83
	v_div_fmas_f32 v68, v72, v74, v68
	v_rcp_f32_e32 v72, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v67, v75, v79
	v_mul_f32_e32 v74, v76, v71
	v_div_fixup_f32 v10, v65, v10, v208
	v_div_fixup_f32 v65, v66, v15, v246
	v_div_fixup_f32 v66, v68, v16, v220
	v_fma_f32 v15, -v80, v67, v82
	v_fma_f32 v16, -v70, v74, v76
	v_div_scale_f32 v68, null, v28, v28, v204
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v75, -v73, v72, 1.0
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v74, v16, v71
	v_div_fmas_f32 v15, v15, v79, v67
	v_rcp_f32_e32 v67, v68
	v_fmac_f32_e32 v72, v75, v72
	v_div_scale_f32 v75, null, v69, v69, v215
	v_div_scale_f32 v16, s0, v84, v19, v84
	v_div_fixup_f32 v77, v15, v18, v205
	v_fma_f32 v15, -v70, v74, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v76, v75
	v_mul_f32_e32 v18, v16, v72
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v70, -v68, v67, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v57, 0xbfb8aa3b, v95
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v15, v15, v71, v74
	v_fma_f32 v71, -v73, v18, v16
	v_fmac_f32_e32 v67, v70, v67
	v_div_scale_f32 v74, s1, v204, v28, v204
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v78, -v75, v76, 1.0
	v_div_fixup_f32 v79, v15, v17, v83
	v_dual_fmac_f32 v18, v71, v72 :: v_dual_mul_f32 v17, v74, v67
	v_div_scale_f32 v71, s3, v215, v69, v215
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v76, v78, v76
	v_div_scale_f32 v70, null, v32, v32, v199
	v_fma_f32 v16, -v73, v18, v16
	v_fma_f32 v73, -v68, v17, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v80, v71, v76
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v15, v70
	v_div_scale_f32 v78, null, v63, v63, v198
	v_div_scale_f32 v83, null, v64, v64, v195
	v_div_fmas_f32 v16, v16, v72, v18
	v_fmac_f32_e32 v17, v73, v67
	v_fma_f32 v18, -v75, v80, v71
	v_rcp_f32_e32 v82, v78
	v_rcp_f32_e32 v72, v83
	v_div_fixup_f32 v84, v16, v19, v84
	v_fma_f32 v16, -v68, v17, v74
	v_fmac_f32_e32 v80, v18, v76
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v81, -v70, v15, 1.0
	v_div_scale_f32 v73, s0, v199, v32, v199
	v_div_fmas_f32 v16, v16, v67, v17
	v_fma_f32 v17, -v75, v80, v71
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v15, v81, v15
	v_fma_f32 v81, -v78, v82, 1.0
	v_fma_f32 v68, -v83, v72, 1.0
	v_div_fmas_f32 v17, v17, v76, v80
	v_div_scale_f32 v19, s4, v198, v63, v198
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v81, v82
	v_div_fixup_f32 v28, v16, v28, v204
	v_div_fixup_f32 v69, v17, v69, v215
	v_fmac_f32_e32 v72, v68, v72
	v_div_scale_f32 v68, s1, v195, v64, v195
	v_dual_mul_f32 v18, v73, v15 :: v_dual_mul_f32 v71, v19, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	s_mov_b32 s14, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v70, v18, v73
	v_fma_f32 v16, -v78, v71, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v18, v67, v15 :: v_dual_mul_f32 v67, v68, v72
	v_fmac_f32_e32 v71, v16, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v8, -v70, v18, v73
	v_fma_f32 v16, -v83, v67, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v8, v8, v15, v18
	v_fma_f32 v15, -v78, v71, v19
	v_dual_fmac_f32 v67, v16, v72 :: v_dual_fmac_f32 v70, 0xbfb8aa3b, v183
	s_mov_b32 vcc_lo, s4
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v202, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v15, v15, v82, v71
	v_fma_f32 v16, -v83, v67, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v18, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v32, v8, v32, v199
	v_div_fixup_f32 v63, v15, v63, v198
	v_div_fmas_f32 v7, v16, v72, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v16, v200, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v64, v7, v64, v195
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v18, v17
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v182
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v5, v15
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v181
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v17, v197, v13
	v_mul_f32_e32 v13, v193, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v67, v67, v183
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v9, v9
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v18, v201, v11 :: v_dual_mul_f32 v11, v191, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v68
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v5, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, vcc_lo, v183, v67, v183
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v9, v7
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v180
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v223, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v68, v70, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v15, v225, v14
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v4
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v8
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v4, v186, v32
	v_mul_f32_e32 v14, v194, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v71, v71, v181
	.loc	1 1232 38                       ; ragged.py:1232:38
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v42, 0xbfb8aa3b, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v28, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v74, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v5, v185, v63 :: v_dual_add_f32 v32, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v75, v28, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v28, v74, v28
	v_fmac_f32_e32 v70, v7, v70
	v_div_scale_f32 v74, null, v32, v32, v180
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v222, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, s0, v182, v65, v182
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v76, v72, v70
	v_fma_f32 v77, -v68, v76, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v70
	v_fma_f32 v63, -v68, v76, v72
	v_div_scale_f32 v72, s1, v181, v71, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v77, v72, v28
	v_div_fmas_f32 v63, v63, v70, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v6, v184, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v74
	v_fma_f32 v64, -v75, v77, v72
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v190, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v12, v192, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v65, v65, v182
	v_div_fixup_f32 v63, v63, v67, v183
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v175
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v64, v28
	v_rcp_f32_e32 v73, v66
	v_fma_f32 v67, -v74, v70, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v72, -v75, v77, v72
	v_fmac_f32_e32 v70, v67, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v66, v73, 1.0
	v_fmac_f32_e32 v73, v78, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_exp_f32_e32 v24, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v69, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v76, -v66, v68, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v212
	v_ldexp_f32 v24, v24, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v76, v73
	v_fma_f32 v66, -v66, v68, v69
	v_div_scale_f32 v69, s3, v180, v32, v180
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v66, v66, v73, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_exp_f32_e32 v21, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v68, v69, v70 :: v_dual_add_f32 v67, 1.0, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v65, v66, v65, v182
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v74, v68, v69
	v_div_scale_f32 v76, null, v67, v67, v175
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v21, v21, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v24, v70
	v_rcp_f32_e32 v64, v76
	v_div_fmas_f32 v28, v72, v28, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v75, 0xbfb8aa3b, v170 :: v_dual_add_f32 v66, 1.0, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v74, v68, v69
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v24, v28, v71, v181
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v66, v66, v212
	v_fma_f32 v71, -v76, v64, 1.0
	v_div_fmas_f32 v21, v21, v70, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v68, v69
	v_div_scale_f32 v0, s0, v175, v67, v175
	v_fmac_f32_e32 v64, v71, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v28, v73
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v21, v21, v32, v180
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v0, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v28
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v69, v68, 1.0
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v76, v71, v0
	v_div_scale_f32 v74, null, v73, v73, v170
	v_fmac_f32_e32 v68, v72, v68
	v_div_scale_f32 v72, s1, v212, v66, v212
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v71, v28, v64 :: v_dual_mul_f32 v28, v177, v65
	v_rcp_f32_e32 v65, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v75, v72, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v8, v224, v84 :: v_dual_mul_f32 v21, v219, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v76, v71, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v76, -v69, v75, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v171
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v0, v64, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v76, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v74, v65, 1.0
	v_div_fixup_f32 v0, v0, v67, v175
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v69, v75, v72
	v_div_scale_f32 v36, s0, v170, v73, v170
	v_fmac_f32_e32 v65, v64, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v167
	v_ldexp_f32 v70, v70, v32
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v176, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v72, v36, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v35, v67, v68, v75
	v_div_scale_f32 v69, null, v63, v63, v171
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, s3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v35, v35, v66, v212
	v_rcp_f32_e32 v64, v69
	v_fma_f32 v66, -v74, v72, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v166
	v_ldexp_f32 v30, v71, v70
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v66, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v68
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v29
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v69, v64, 1.0
	v_fma_f32 v36, -v74, v72, v36
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v74, 1.0, v30 :: v_dual_fmac_f32 v71, 0xbfb8aa3b, v165
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v64, v75, v64
	v_div_scale_f32 v75, s1, v171, v63, v171
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v68, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v74, v74, v167
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v66, v75, v64
	v_div_fmas_f32 v29, v36, v65, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v69, v66, v75
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v24, v178, v24 :: v_dual_mul_f32 v35, v169, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v67, v67, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v66, v30, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v68
	v_rcp_f32_e32 v72, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v69, v66, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, s3
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v36, v36, v64, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v106
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v68, v71, 1.0
	v_div_scale_f32 v64, vcc_lo, v167, v74, v167
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v30, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v76, v72, 1.0
	v_fmac_f32_e32 v71, v75, v71
	v_div_fixup_f32 v36, v36, v63, v171
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v63, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v69, 1.0, v30 :: v_dual_fmac_f32 v72, v66, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v64, v71
	v_div_scale_f32 v66, s0, v166, v67, v166
	v_div_fixup_f32 v30, v29, v73, v170
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v173, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v68, v70, v64
	v_mul_f32_e32 v73, v66, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v63, v63, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v69, v69, v165
	v_fmac_f32_e32 v70, v36, v71
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v65, -v76, v73, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v168, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v77, v75
	v_fma_f32 v63, -v68, v70, v64
	v_fmac_f32_e32 v73, v65, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v65, null, v0, v0, v106
	v_div_fmas_f32 v63, v63, v71, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v76, v73, v66
	v_rcp_f32_e32 v48, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v64, -v75, v77, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v77, v64, v77
	v_div_scale_f32 v64, s1, v165, v69, v165
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v156
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v66, v66, v72, v73
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v72, -v65, v48, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v64, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v66, v66, v67, v166
	v_fmac_f32_e32 v48, v72, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v75, v71, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, s0, v106, v0, v106
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v155
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v37, v39, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v63, v63, v74, v167
	v_fmac_f32_e32 v71, v67, v77
	v_mul_f32_e32 v39, v73, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v72, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v75, v71, v64
	v_fma_f32 v37, -v65, v39, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v153
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v74, v74, v156
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v37, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v68
	v_ldexp_f32 v37, v72, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v68, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v65, -v65, v39, v73
	v_div_fmas_f32 v64, v64, v77, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v71, 1.0, v37 :: v_dual_fmac_f32 v72, 0xbfb8aa3b, v154
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v31, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v75, v68, 1.0
	v_div_scale_f32 v67, null, v71, v71, v155
	v_div_fmas_f32 v39, v65, v48, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v37, v68
	v_rcp_f32_e32 v65, v67
	v_div_scale_f32 v73, vcc_lo, v156, v74, v156
	v_div_fixup_f32 v37, v64, v69, v165
	v_div_fixup_f32 v0, v39, v0, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v72, 1.0, v31 :: v_dual_mul_f32 v69, v73, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, s0, v155, v71, v155
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v164, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v67, v65, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v48, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v75, v69, v73
	v_div_scale_f32 v64, null, v72, v72, v153
	v_dual_fmac_f32 v65, v39, v65 :: v_dual_add_f32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v69, v48, v68
	v_rcp_f32_e32 v70, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v39, v162, v66 :: v_dual_mul_f32 v66, v76, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v78, null, v0, v0, v154
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v159, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v75, v69, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v67, v66, v76
	v_rcp_f32_e32 v75, v78
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v30, v172, v30 :: v_dual_mul_f32 v37, v163, v37
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v52, v63, v68, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v64, v70, 1.0
	v_fmac_f32_e32 v66, v73, v65
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v152
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v77, v70
	v_div_scale_f32 v77, s1, v153, v72, v153
	v_fma_f32 v73, -v78, v75, 1.0
	v_fma_f32 v67, -v67, v66, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v77, v70
	v_fmac_f32_e32 v75, v73, v75
	v_div_scale_f32 v73, s3, v154, v0, v154
	v_div_fmas_f32 v40, v67, v65, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, s4
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v65, v73, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v63, v68, v63
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v147
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v52, v52, v74, v156
	v_fma_f32 v74, -v64, v69, v77
	v_fma_f32 v34, -v78, v65, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v40, v40, v71, v155
	v_fmac_f32_e32 v69, v74, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v34, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v63, v63, v152
	v_fma_f32 v64, -v64, v69, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v146
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v64, v64, v70, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v69, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v78, v65, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v34, v66
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v33, v33, v75, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v69, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v67, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v145
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v33, v0, v154
	v_div_scale_f32 v69, null, v65, v65, v147
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v68, v70
	v_div_scale_f32 v68, vcc_lo, v152, v63, v152
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v77, v68, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v161, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v34, v64, v72, v153
	v_fma_f32 v71, -v67, v77, v68
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v73, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v69, v75, 1.0
	v_div_scale_f32 v66, s0, v147, v65, v147
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v77, v71, v70 :: v_dual_add_f32 v0, 1.0, v0
	v_fmac_f32_e32 v75, v72, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v67, v77, v68
	v_div_scale_f32 v72, null, v0, v0, v145
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v68, v66, v75
	v_div_fmas_f32 v67, v67, v70, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v157, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v74, v74, v146
	v_rcp_f32_e32 v70, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v69, v68, v66
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v64, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v52, v67, v63, v152
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v144
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v73, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v72, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v79
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v76, v64, 1.0
	v_fma_f32 v66, -v69, v68, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v70, v67, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v71, v64
	v_div_scale_f32 v71, s1, v146, v74, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v143
	v_ldexp_f32 v47, v47, v78
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v214, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v77, v71, v64
	v_fma_f32 v63, -v76, v77, v71
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v34, v160, v34 :: v_dual_fmac_f32 v77, v63, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v66, v66, v75, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_exp_f32_e32 v41, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v76, v77, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v67, v67, v144
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v142
	v_ldexp_f32 v41, v41, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v63, v76
	v_div_scale_f32 v69, s3, v145, v0, v145
	v_div_fmas_f32 v64, v71, v64, v77
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v76, v63, 1.0
	v_dual_mul_f32 v68, v69, v70 :: v_dual_fmac_f32 v63, v71, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v72, v68, v69
	v_fmac_f32_e32 v68, v47, v70
	v_div_fixup_f32 v47, v66, v65, v147
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v64, v74, v146
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v72, v68, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v149, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v65, v65, v143
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v150, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v64, v64, v70, v68
	v_div_scale_f32 v70, s0, v144, v67, v144
	v_rcp_f32_e32 v68, v69
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v66, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v64, v0, v145
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v72, v70, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v151, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v76, v72, v70
	v_fma_f32 v73, -v69, v68, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v72, v66, v63
	v_fmac_f32_e32 v68, v73, v68
	v_div_scale_f32 v73, s1, v143, v65, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v76, v72, v70
	v_div_scale_f32 v74, null, v0, v0, v142
	v_mul_f32_e32 v66, v73, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v63, v70, v63, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v74
	v_fma_f32 v76, -v69, v66, v73
	v_div_scale_f32 v59, s0, v142, v0, v142
	v_div_fixup_f32 v63, v63, v67, v144
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v76, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v64, v71, v64
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v70, -v74, v75, 1.0
	v_fma_f32 v67, -v69, v66, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v72, 0xbfb8aa3b, v137 :: v_dual_fmac_f32 v75, v70, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v51, v67, v68, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, s3
	v_exp_f32_e32 v72, v72
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v59, v75
	v_div_fixup_f32 v51, v51, v65, v143
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v136
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v74, v68, v59
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v51, v139, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v64, v64, v105
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v65, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v72, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v74, v68, v59
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v135
	v_ldexp_f32 v66, v67, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v67, null, v74, v74, v137
	v_fma_f32 v73, -v69, v70, 1.0
	v_div_fmas_f32 v42, v59, v75, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v73, v70
	v_div_scale_f32 v73, s1, v105, v64, v105
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v65, v73, v70
	v_fma_f32 v50, -v69, v65, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v50, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v50, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v67
	v_fma_f32 v59, -v69, v65, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, s3
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v59, v59, v70, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v134
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v67, v72, 1.0
	v_div_scale_f32 v65, vcc_lo, v137, v74, v137
	v_div_fixup_f32 v59, v59, v64, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v64, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v75, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v50, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v65, v72
	v_div_fixup_f32 v0, v42, v0, v142
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v69, 1.0, v50 :: v_dual_mul_f32 v42, v141, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v67, v71, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v50, v140, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v64, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v69, v69, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v71, v59, v72
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v59, v138, v63 :: v_dual_add_f32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v78, v75
	v_fma_f32 v63, -v67, v71, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v65, null, v0, v0, v134
	v_div_fmas_f32 v63, v63, v72, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v56, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v65, v56, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v72, v56
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v66, v66, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v73, v76
	v_fma_f32 v70, -v76, v73, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v70, v73
	v_div_scale_f32 v70, s0, v136, v66, v136
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v52, v148, v52 :: v_dual_mul_f32 v77, v70, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v76, v77, v70
	v_fmac_f32_e32 v77, v64, v73
	v_fma_f32 v64, -v75, v78, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v76, v77, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v78, v64, v78
	v_div_scale_f32 v64, s1, v135, v69, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v125
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v67, v67, v73, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, s0, v134, v0, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v53, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v64, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v124
	v_ldexp_f32 v44, v53, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v53, v73, v56
	v_div_fixup_f32 v63, v63, v74, v137
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v72, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v65, v53, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v68, 0xbfb8aa3b, v122 :: v_dual_fmac_f32 v53, v44, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v66, v67, v66, v136
	v_fma_f32 v67, -v75, v71, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v44, v72, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v65, v53, v73
	v_fmac_f32_e32 v71, v67, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	v_exp_f32_e32 v43, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v75, v71, v64
	v_div_scale_f32 v75, null, v74, v74, v125
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v68, v75
	v_div_fmas_f32 v64, v64, v78, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v43, v43, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v53, v65, v56, v53
	v_div_scale_f32 v73, vcc_lo, v125, v74, v125
	v_div_scale_f32 v67, null, v71, v71, v124
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v75, v68, 1.0
	v_div_fixup_f32 v0, v53, v0, v134
	v_div_scale_f32 v76, s0, v124, v71, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v65, v67
	v_fmac_f32_e32 v68, v44, v68
	v_div_fixup_f32 v44, v64, v69, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v69, v73, v68 :: v_dual_fmac_f32 v72, 0xbfb8aa3b, v123
	v_fma_f32 v53, -v67, v65, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v72, 1.0, v43 :: v_dual_mul_f32 v43, v133, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v53, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v53, v131, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v64, null, v72, v72, v122
	v_mul_f32_e32 v66, v76, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v56, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v75, v69, v73
	v_rcp_f32_e32 v70, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v69, v56, v68 :: v_dual_mul_f32 v56, v130, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v78, null, v0, v0, v123
	v_fma_f32 v63, -v75, v69, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v77, -v64, v70, 1.0
	v_fma_f32 v73, -v67, v66, v76
	v_rcp_f32_e32 v75, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v62, v63, v68, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v77, v70
	v_div_scale_f32 v77, s1, v122, v72, v122
	v_fmac_f32_e32 v66, v73, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v117
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v78, v75, 1.0
	v_mul_f32_e32 v69, v77, v70
	v_fma_f32 v67, -v67, v66, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v75, v73, v75
	v_div_scale_f32 v73, s3, v123, v0, v123
	v_div_fmas_f32 v60, v67, v65, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, s4
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v65, v73, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s4
	v_ldexp_f32 v63, v68, v63
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v116
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v78, v65, v73
	v_div_fixup_f32 v60, v60, v71, v124
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v62, v62, v74, v125
	v_fma_f32 v74, -v64, v69, v77
	v_fmac_f32_e32 v65, v55, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v63, v63, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v69, v74, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v64, -v64, v69, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v110
	v_ldexp_f32 v55, v55, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v44, v132, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v64, v64, v70, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v69, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v78, v65, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v54, v54, v75, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v69, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v67, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v103
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v54, v0, v123
	v_div_scale_f32 v69, null, v65, v65, v116
	v_fmac_f32_e32 v70, v68, v70
	v_div_scale_f32 v68, vcc_lo, v117, v63, v117
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v54, v129, v0 :: v_dual_mul_f32 v77, v68, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v67, v77, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v73, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, s0, v116, v65, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v77, v71, v70 :: v_dual_add_f32 v0, 1.0, v0
	v_fma_f32 v67, -v67, v77, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v126, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v0, v0, v103
	v_div_fmas_f32 v67, v67, v70, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v61, v73
	v_div_fixup_f32 v67, v67, v63, v117
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v55, v64, v72, v122
	v_fma_f32 v72, -v69, v75, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v102
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v74, v74, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v75, v72, v75
	v_fma_f32 v63, -v73, v61, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v64, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v72, v66, v75 :: v_dual_fmac_f32 v61, v63, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v128, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v69, v72, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v101
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v76, v64, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v58, v58, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v70, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v64, v71, v64
	v_div_scale_f32 v71, s1, v110, v74, v110
	v_fma_f32 v66, -v69, v72, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v77, v71, v64
	v_fma_f32 v62, -v76, v77, v71
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v77, v62, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v66, v66, v75, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	v_exp_f32_e32 v57, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v76, v77, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v127, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v64, v71, v64, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v57, v62
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v95
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v62, v64, v74, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, s3, v103, v0, v103
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v69, v61
	v_fma_f32 v63, -v73, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v63, v61
	v_div_fixup_f32 v63, v66, v65, v116
	v_div_scale_f32 v66, null, v57, v57, v101
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v73, v70, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v63, v120, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v61, v64, v61, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v64, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v65, v65, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v61, v0, v103
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v111, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v100
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v66, v64, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v73, v64
	v_div_scale_f32 v73, s1, v101, v57, v101
	v_div_scale_f32 v74, null, v0, v0, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v75, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v61, v70, v61
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v58, 1.0, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v70, v119, v67 :: v_dual_add_f32 v61, 1.0, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v58, v58, v102
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v67, -v74, v75, 1.0
	v_rcp_f32_e32 v71, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v75, v67, v75
	v_fma_f32 v69, -v76, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v69, v71
	v_div_scale_f32 v69, s0, v102, v58, v102
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v72, v69, v71
	v_fma_f32 v65, -v76, v72, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v72, v65, v71
	v_mul_f32_e32 v65, v73, v64
	v_fma_f32 v69, -v76, v72, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v76, -v66, v65, v73
	v_div_fmas_f32 v69, v69, v71, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v65, v76, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v49, s0, v95, v0, v95
	v_div_fixup_f32 v69, v69, v58, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v58, -v66, v65, v73
	v_div_scale_f32 v66, null, v61, v61, v100
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v67, v66
	v_div_fmas_f32 v27, v58, v64, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v65, v49, v75 :: v_dual_fmac_f32 v72, 0xbfb8aa3b, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, s3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v27, v57, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fma_f32 v57, -v74, v65, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v93
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v66, v67, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v57, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v25
	v_exp_f32_e32 v64, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v73, v67
	v_div_scale_f32 v73, s1, v100, v61, v100
	v_fma_f32 v49, -v74, v65, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v72, v71
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v57, v73, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v58, v64, v58
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v92
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v66, v57, v73
	v_div_fmas_f32 v49, v49, v75, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v57, v74, v67 :: v_dual_add_f32 v74, 1.0, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v49, v0, v95
	v_fma_f32 v64, -v66, v57, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, s3
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v57, v64, v67, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v58, v58, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v57, v57, v61, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v71, 1.0, v58 :: v_dual_mul_f32 v58, v115, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v61, v118, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v78, null, v71, v71, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v66, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v65, v113, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, null, v74, v74, v93
	v_div_scale_f32 v77, s0, v93, v74, v93
	v_rcp_f32_e32 v79, v78
	v_rcp_f32_e32 v73, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v90
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v72, v73, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v73, v64, v73 :: v_dual_add_f32 v26, 1.0, v26
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v64, v114, v27 :: v_dual_mul_f32 v57, v77, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v26, v26, v94
	v_div_scale_f32 v67, vcc_lo, v94, v26, v94
	v_rcp_f32_e32 v25, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v76, v25, 1.0
	v_dual_fmac_f32 v25, v75, v25 :: v_dual_mul_f32 v62, v121, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v67, v25
	v_fma_f32 v49, -v76, v75, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v75, v49, v25
	v_fma_f32 v49, -v72, v57, v77
	v_fma_f32 v27, -v76, v75, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v57, v49, v73
	v_fma_f32 v49, -v78, v79, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v27, v25, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v27, -v72, v57, v77
	v_fmac_f32_e32 v79, v49, v79
	v_div_scale_f32 v49, s1, v92, v71, v92
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v25, v25, v26, v94
	v_div_fmas_f32 v23, v27, v73, v57
	v_mul_f32_e32 v27, v49, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v23, v23, v74, v93
	v_fma_f32 v22, -v78, v27, v49
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v27, v22, v79
	v_div_scale_f32 v66, null, v0, v0, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v69
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v57, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v78, v27, v49
	v_div_scale_f32 v74, s0, v91, v0, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v22, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v20, -v66, v57, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v72, 0xbfb8aa3b, v87 :: v_dual_fmac_f32 v57, v20, v57
	s_delay_alu instid0(VALU_DEP_1)
	v_exp_f32_e32 v2, v72
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v86
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v85
	v_exp_f32_e32 v67, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v49, v79, v27
	v_mul_f32_e32 v49, v74, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v2, v2, v26
	v_exp_f32_e32 v26, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, null, v22, v22, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v73, -v66, v49, v74
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v67, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v72
	v_fmac_f32_e32 v49, v73, v57
	v_div_scale_f32 v80, s0, v87, v2, v87
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v20, v26, v20
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v75, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v2, v2, v87
	v_fma_f32 v66, -v66, v49, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v75, v75, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v74, v26
	v_div_fmas_f32 v49, v66, v57, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v57, null, v20, v20, v85
	v_rcp_f32_e32 v76, v73
	v_fma_f32 v67, -v72, v69, 1.0
	v_div_scale_f32 v77, vcc_lo, v90, v22, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v78, v57
	v_div_fixup_f32 v0, v49, v0, v91
	v_fma_f32 v66, -v26, v74, 1.0
	v_fmac_f32_e32 v69, v67, v69
	v_div_fixup_f32 v27, v27, v71, v92
	v_div_scale_f32 v83, s3, v85, v20, v85
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v73, v76, 1.0
	v_dual_fmac_f32 v74, v66, v74 :: v_dual_mul_f32 v79, v77, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v66, v112, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v57, v78, 1.0
	v_dual_fmac_f32 v76, v49, v76 :: v_dual_mul_f32 v81, v80, v74
	v_div_scale_f32 v49, s1, v86, v75, v86
	v_fma_f32 v0, -v72, v79, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v78, v67, v78 :: v_dual_mul_f32 v67, v109, v27
	v_dual_mul_f32 v82, v49, v76 :: v_dual_mul_f32 v71, v108, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v79, v0, v69
	v_fma_f32 v0, -v26, v81, v80
	v_mul_f32_e32 v84, v83, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v27, -v73, v82, v49
	v_fma_f32 v23, -v72, v79, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v0, v74
	v_fma_f32 v0, -v57, v84, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v82, v27, v76
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v77, |v46|, |v10|, |v8|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v23, v23, v69, v79
	v_fma_f32 v26, -v26, v81, v80
	v_fmac_f32_e32 v84, v0, v78
	v_fma_f32 v0, -v73, v82, v49
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v73, v107, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v26, v74, v81
	v_fma_f32 v27, -v57, v84, v83
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v23, v22, v90
	v_div_fmas_f32 v0, v0, v76, v82
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v2, v26, v2, v87
	v_div_fmas_f32 v27, v27, v78, v84
.Ltmp11:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v23, |v32|, |v28|
.Ltmp12:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v75, v86
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, |v24|, |v36|, |v35|
	v_max3_f32 v26, |v48|, |v39|, |v37|
.Ltmp14:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v20, v27, v20, v85
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v27, |v31|, |v18|, |v16|
	v_max_f32_e64 v74, |v56|, |v53|
	v_max3_f32 v75, |v44|, |v68|, |v60|
	v_max3_f32 v76, |v70|, |v63|, |v62|
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v88, v20
	v_mul_f32_e32 v57, v104, v0
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, |v30|, |v29|, |v19|
	v_max3_f32 v20, v23, |v21|, v25
	v_max3_f32 v23, v26, v27, |v17|
	v_max3_f32 v78, |v55|, |v54|, |v11|
	v_max3_f32 v74, v74, |v43|, v75
	v_max3_f32 v75, v76, v77, |v9|
	v_max_f32_e64 v25, |v45|, |v40|
	v_max3_f32 v26, |v34|, |v52|, |v47|
	v_max3_f32 v69, |v59|, |v51|, |v50|
	v_max3_f32 v72, |v42|, |v14|, |v13|
	v_max3_f32 v0, v20, v0, v23
	v_max3_f32 v20, v74, v78, v75
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v27, |v41|, |v38|, |v15|
	v_max3_f32 v25, v25, |v33|, v26
	v_max3_f32 v26, v69, v72, |v12|
.Ltmp18:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v99, v2
	v_mul_f32_e32 v72, v89, v22
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v75, v20, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v22, |v65|, |v64|
	v_max3_f32 v2, v25, v27, v26
	v_max3_f32 v23, |v58|, |v73|, |v71|
	v_max3_f32 v27, |v49|, |v4|, |v5|
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v74, v0, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v75, v75
	v_max3_f32 v26, |v72|, |v69|, |v57|
	v_max3_f32 v25, |v67|, |v66|, |v7|
	v_max3_f32 v22, v22, |v61|, v23
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v23, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v20, v76
	v_max3_f32 v26, v26, v27, |v6|
	v_dual_max_f32 v27, v74, v74 :: v_dual_and_b32 v20, 4, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v23, v23, v23 :: v_dual_and_b32 v78, 8, v96
	v_max3_f32 v22, v22, v25, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v74, v0, v27
	v_dual_max_f32 v75, v2, v23 :: v_dual_and_b32 v0, 3, v96
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v27, 0x60, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v2, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_lshrrev_b32_e32 v81, 3, v1
	v_lshl_add_u32 v25, v0, 9, 0
	v_lshlrev_b32_e32 v23, 5, v0
	v_lshl_add_u32 v82, v20, 6, 0
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v26, 4, v96
	v_lshl_add_u32 v77, v20, 2, v25
	v_lshlrev_b32_e32 v25, 1, v1
	v_xor_b32_e32 v79, v23, v27
	v_add_nc_u32_e32 v1, 0, v1
	v_lshl_add_u32 v0, v0, 4, 0
	v_lshl_add_u32 v80, v78, 4, v77
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v77, v22, v2
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v26, 0x680, v26, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v2, v80, v25, v79
	v_xor_b32_e32 v26, v26, v27
	ds_store_b128 v2, v[74:77]
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v22, v82, v81, v26
	s_barrier
	ds_load_b128 v[74:77], v22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v22, v75
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v75, v75, v75 :: v_dual_mov_b32 v2, v74
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v26, v76 :: v_dual_max_f32 v79, v77, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v22, v22 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v77, v77 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v74, v74, v74
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v26, v26 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v22, v22, v22
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v78, 3, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v26, v26, v26
	v_dual_max_f32 v22, v75, v22 :: v_dual_max_f32 v75, v77, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v77, v22
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v77, v77, v77
	v_max_f32_e32 v2, v74, v2
	v_max_f32_e32 v74, v76, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v76, v2
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v26, v74, v26
	v_max_f32_e32 v74, v79, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v75, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v79, v74
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v22, v22, v77
	v_max_f32_e32 v76, v76, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v76 :: v_dual_max_f32 v75, v75, v75
	v_dual_max_f32 v76, v79, v79 :: v_dual_mov_b32 v79, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v77, v2
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v26, v26, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v80, v74, v76
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v76, v26 :: v_dual_mov_b32 v81, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v79, v79
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v79, 1, v27
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v74, v77, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v22, v75
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v1, v79, v78
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v22, v81, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_max_f32_e32 v77, v80, v22
	v_max_f32_e32 v74, v2, v74
	v_max_f32_e32 v2, v76, v76
.Ltmp55:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v22, 4, v98
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v26, v2
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v2, 5, v20
	ds_store_b128 v1, v[74:77]
	v_add3_u32 v0, v0, v2, v78
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp58:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v78, 32, v22
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[74:77], v0
.Ltmp60:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v74, v74
	v_dual_max_f32 v74, v76, v76 :: v_dual_max_f32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v77, v77, v77 :: v_dual_max_f32 v2, 0x2b8cbccc, v0
	v_max_f32_e32 v74, 0x2b8cbccc, v74
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 48, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v75, 0x2b8cbccc, v75
	v_max_f32_e32 v77, 0x2b8cbccc, v77
	v_div_scale_f32 v20, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v80, null, 0x40e00000, 0x40e00000, v74
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s34, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v26, v20
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v82, v80
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v78, s0, s34, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v79, null, s35, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[36:37], v[0:1]
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v76, -v20, v26, 1.0
	v_div_scale_f32 v84, null, 0x40e00000, 0x40e00000, v75
	v_fma_f32 v83, -v80, v82, 1.0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 16, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v26, v76, v26
	v_div_scale_f32 v76, vcc_lo, v2, 0x40e00000, v2
	v_fmac_f32_e32 v82, v83, v82
	v_div_scale_f32 v83, s7, v74, 0x40e00000, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v81, v76, v26
	v_div_scale_f32 v85, null, 0x40e00000, 0x40e00000, v77
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[38:39], v[78:79]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v0, -v20, v81, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v0, v26
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s4, s34, v1
	v_add_co_ci_u32_e64 v1, null, s35, 0, s4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v20, -v20, v81, v76
	v_rcp_f32_e32 v76, v84
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[36:37], v[78:79]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v79.h, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[38:39], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v20, v20, v26, v81
	v_mul_f32_e32 v26, v83, v82
	v_rcp_f32_e32 v81, v85
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[36:37], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v2, v20, 0x40e00000, v2
	v_fma_f32 v78, -v84, v76, 1.0
	v_fma_f32 v20, -v80, v26, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v76, v78, v76
	v_div_scale_f32 v78, s8, v75, 0x40e00000, v75
	v_fmac_f32_e32 v26, v20, v82
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v20.l, v2.h
	v_mov_b16_e32 v20.h, v79.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v86, -v85, v81, 1.0
	v_mul_f32_e32 v87, v78, v76
	v_fma_f32 v0, -v80, v26, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v1, 1, v20
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v81, v86, v81
	v_div_scale_f32 v86, s9, v77, 0x40e00000, v77
	v_fma_f32 v80, -v84, v87, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v20, v2, v1, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v26, v0, v82, v26
	v_mul_f32_e32 v83, v86, v81
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v87, v80, v76
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v80, 0xffff0000, v20
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v26, v26, 0x40e00000, v74
	v_fma_f32 v2, -v85, v83, v86
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s7, s34, v22
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v74, -v84, v87, v78
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v78, null, v80, v80, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v83, v2, v81
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s35, 0, s7
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v82, v78
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v74, v76, v87
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v74, -v85, v83, v86
	s_mov_b32 vcc_lo, s9
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v79.l, v26.h
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[38:39], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v75
	v_div_fmas_f32 v74, v74, v81, v83
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v81, null, v80, v80, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v78, v82, 1.0
	v_div_scale_f32 v84, vcc_lo, v32, v80, v32
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v74, v74, 0x40e00000, v77
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v77.l, v2.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v83, v81
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v77.h, v79.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v82, v76, v82 :: v_dual_and_b32 v75, 1, v79
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[36:37], v[0:1]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v79.l, v74.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v0, 1, v77
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v77, v84, v82
	v_div_scale_f32 v85, null, v80, v80, v21
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v26, v75, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v75, -v81, v83, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v76, 1, v79
	v_add3_u32 v26, v2, v0, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v78, v77, v84
	v_rcp_f32_e32 v79, v85
	v_div_scale_f32 v86, null, v80, v80, v24
	v_fmac_f32_e32 v83, v75, v83
	v_div_scale_f32 v87, s9, v28, v80, v28
	v_fmac_f32_e32 v77, v0, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v0, v86
	v_div_scale_f32 v91, null, v80, v80, v36
	v_mul_f32_e32 v88, v87, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v85, v79, 1.0
	v_fma_f32 v78, -v78, v77, v84
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v75, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v81, v88, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, s10, v21, v80, v21
	v_fma_f32 v90, -v86, v0, 1.0
	v_div_fmas_f32 v77, v78, v82, v77
	v_rcp_f32_e32 v82, v91
	v_fmac_f32_e32 v88, v84, v83
	v_mul_f32_e32 v78, v89, v79
	v_fmac_f32_e32 v0, v90, v0
	v_div_scale_f32 v84, s11, v24, v80, v24
	v_div_fixup_f32 v32, v77, v80, v32
	v_fma_f32 v77, -v81, v88, v87
	v_fma_f32 v81, -v85, v78, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v87, v84, v0
	v_fma_f32 v93, -v91, v82, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v83, v88
	v_fmac_f32_e32 v78, v81, v79
	v_fma_f32 v81, -v86, v87, v84
	v_fmac_f32_e32 v82, v93, v82
	v_div_scale_f32 v83, s9, v36, v80, v36
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v87, v81, v0
	v_mul_f32_e32 v81, v83, v82
	v_div_scale_f32 v90, null, v80, v80, v35
	v_div_fixup_f32 v28, v77, v80, v28
	v_fma_f32 v77, -v85, v78, v89
	v_div_scale_f32 v85, s12, v35, v80, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v92, v90
	v_div_scale_f32 v89, null, v80, v80, v29
	v_div_fmas_f32 v77, v77, v79, v78
	v_fma_f32 v78, -v86, v87, v84
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v79, -v91, v81, v83
	v_div_scale_f32 v93, null, v80, v80, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v0, v78, v0, v87
	v_fma_f32 v88, -v90, v92, 1.0
	v_rcp_f32_e32 v78, v89
	v_fmac_f32_e32 v81, v79, v82
	v_div_fixup_f32 v21, v77, v80, v21
	v_div_fixup_f32 v24, v0, v80, v24
	v_fmac_f32_e32 v92, v88, v92
	v_div_scale_f32 v88, null, v80, v80, v30
	v_fma_f32 v0, -v91, v81, v83
	v_div_scale_f32 v77, s10, v30, v80, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v84, v88
	v_mul_f32_e32 v86, v85, v92
	v_div_scale_f32 v83, null, v80, v80, v19
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v90, v86, v85
	v_div_fmas_f32 v0, v0, v82, v81
	s_mov_b32 vcc_lo, s12
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v88, v84, 1.0
	v_fmac_f32_e32 v86, v79, v92
	v_fma_f32 v79, -v89, v78, 1.0
	v_div_fixup_f32 v36, v0, v80, v36
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v87, v84
	v_fma_f32 v81, -v90, v86, v85
	v_fmac_f32_e32 v78, v79, v78
	v_rcp_f32_e32 v79, v83
	v_div_scale_f32 v87, null, v80, v80, v48
	v_mul_f32_e32 v82, v77, v84
	v_div_scale_f32 v85, s9, v29, v80, v29
	v_div_fmas_f32 v81, v81, v92, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v92, v87
	v_fma_f32 v86, -v88, v82, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v90, v85, v78
	v_fma_f32 v91, -v83, v79, 1.0
	v_div_fixup_f32 v35, v81, v80, v35
	v_div_scale_f32 v81, s11, v19, v80, v19
	v_fmac_f32_e32 v82, v86, v84
	v_div_scale_f32 v86, null, v80, v80, v39
	v_fma_f32 v0, -v89, v90, v85
	v_fmac_f32_e32 v79, v91, v79
	v_fma_f32 v91, -v87, v92, 1.0
	v_fma_f32 v77, -v88, v82, v77
	v_rcp_f32_e32 v88, v86
	v_fmac_f32_e32 v90, v0, v78
	v_mul_f32_e32 v0, v81, v79
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s12, v48, v80, v48
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v84, v82
	v_fma_f32 v82, -v89, v90, v85
	v_fma_f32 v84, -v83, v0, v81
	v_mul_f32_e32 v85, v91, v92
	v_fma_f32 v89, -v86, v88, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_add3_u32 v2, v74, v76, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v82, v78, v90
	v_fmac_f32_e32 v0, v84, v79
	v_rcp_f32_e32 v82, v93
	v_fma_f32 v84, -v87, v85, v91
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, s9, v39, v80, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v85, v84, v92 :: v_dual_and_b32 v76, 0xffff0000, v26
	v_div_fixup_f32 v30, v77, v80, v30
	v_div_fixup_f32 v29, v78, v80, v29
	v_fma_f32 v77, -v83, v0, v81
	v_mul_f32_e32 v78, v89, v88
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v81, -v93, v82, 1.0
	v_div_scale_f32 v83, null, v80, v80, v31
	v_div_fmas_f32 v0, v77, v79, v0
	v_fma_f32 v77, -v87, v85, v91
	v_fma_f32 v79, -v86, v78, v89
	v_div_scale_f32 v87, null, v80, v80, v18
	v_fmac_f32_e32 v82, v81, v82
	v_rcp_f32_e32 v81, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v79, v88
	v_rcp_f32_e32 v79, v87
	v_div_scale_f32 v84, s10, v37, v80, v37
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v19, v0, v80, v19
	v_div_fmas_f32 v77, v77, v92, v85
	v_mul_f32_e32 v85, v84, v82
	v_fma_f32 v0, -v86, v78, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v90, -v83, v81, 1.0
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v74, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v87, v79, 1.0
	v_div_fixup_f32 v48, v77, v80, v48
	v_fma_f32 v77, -v93, v85, v84
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v86, s11, v31, v80, v31
	v_div_scale_f32 v90, null, v80, v80, v16
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v80, v80, v17
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v85, v77, v82
	v_div_fmas_f32 v0, v0, v88, v78
	v_mul_f32_e32 v77, v86, v81
	v_rcp_f32_e32 v78, v90
	v_div_scale_f32 v88, s9, v18, v80, v18
	v_rcp_f32_e32 v92, v89
	v_div_fixup_f32 v39, v0, v80, v39
	v_fma_f32 v0, -v93, v85, v84
	v_fma_f32 v84, -v83, v77, v86
	v_mul_f32_e32 v91, v88, v79
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v90, v78, 1.0
	v_div_fmas_f32 v0, v0, v82, v85
	v_fmac_f32_e32 v77, v84, v81
	v_fma_f32 v82, -v87, v91, v88
	v_fma_f32 v85, -v89, v92, 1.0
	v_fmac_f32_e32 v78, v93, v78
	v_div_scale_f32 v84, s10, v16, v80, v16
	v_div_fixup_f32 v37, v0, v80, v37
	v_fma_f32 v0, -v83, v77, v86
	v_dual_fmac_f32 v91, v82, v79 :: v_dual_fmac_f32 v92, v85, v92
	v_div_scale_f32 v85, null, v76, v76, v45
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v82, v84, v78
	v_div_scale_f32 v83, s12, v17, v80, v17
	v_div_fmas_f32 v0, v0, v81, v77
	v_fma_f32 v77, -v87, v91, v88
	v_rcp_f32_e32 v86, v85
	v_div_scale_f32 v88, null, v76, v76, v40
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v81, -v90, v82, v84
	v_mul_f32_e32 v87, v83, v92
	v_div_fmas_f32 v77, v77, v79, v91
	v_rcp_f32_e32 v79, v88
	v_div_fixup_f32 v31, v0, v80, v31
	v_fmac_f32_e32 v82, v81, v78
	v_fma_f32 v81, -v89, v87, v83
	v_fma_f32 v91, -v85, v86, 1.0
	v_div_fixup_f32 v18, v77, v80, v18
	v_div_scale_f32 v77, s9, v45, v76, v45
	v_fma_f32 v0, -v90, v82, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v87, v81, v92 :: v_dual_fmac_f32 v86, v91, v86
	v_fma_f32 v81, -v88, v79, 1.0
	v_div_scale_f32 v84, null, v76, v76, v33
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v78, v82
	v_fma_f32 v78, -v89, v87, v83
	v_mul_f32_e32 v82, v77, v86
	v_fmac_f32_e32 v79, v81, v79
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v83, s10, v40, v76, v40
	v_div_scale_f32 v89, null, v76, v76, v34
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v90, v83, v79
	v_div_fmas_f32 v78, v78, v92, v87
	v_fma_f32 v87, -v85, v82, v77
	v_rcp_f32_e32 v92, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v84, v81, 1.0
	v_div_fixup_f32 v16, v0, v80, v16
	v_fma_f32 v0, -v88, v90, v83
	v_fmac_f32_e32 v82, v87, v86
	v_div_fixup_f32 v17, v78, v80, v17
	v_fmac_f32_e32 v81, v91, v81
	v_div_scale_f32 v78, s11, v33, v76, v33
	v_div_scale_f32 v80, null, v76, v76, v52
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v89, v92, 1.0
	v_fma_f32 v77, -v85, v82, v77
	v_fmac_f32_e32 v90, v0, v79
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v0, v78, v81
	v_rcp_f32_e32 v85, v80
	v_fmac_f32_e32 v92, v87, v92
	v_div_scale_f32 v87, s12, v34, v76, v34
	v_div_fmas_f32 v77, v77, v86, v82
	v_fma_f32 v82, -v88, v90, v83
	v_div_scale_f32 v91, null, v76, v76, v47
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v83, -v84, v0, v78
	v_mul_f32_e32 v86, v87, v92
	v_div_fmas_f32 v79, v82, v79, v90
	v_rcp_f32_e32 v82, v91
	v_fma_f32 v88, -v80, v85, 1.0
	v_fmac_f32_e32 v0, v83, v81
	v_fma_f32 v83, -v89, v86, v87
	v_div_fixup_f32 v40, v79, v76, v40
	v_div_fixup_f32 v45, v77, v76, v45
	v_fmac_f32_e32 v85, v88, v85
	v_div_scale_f32 v88, s9, v52, v76, v52
	v_fmac_f32_e32 v86, v83, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v91, v82, 1.0
	v_div_scale_f32 v83, null, v76, v76, v41
	v_fma_f32 v77, -v84, v0, v78
	v_mul_f32_e32 v78, v88, v85
	v_fmac_f32_e32 v82, v79, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v79, v83
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v84, s10, v47, v76, v47
	v_div_fmas_f32 v0, v77, v81, v0
	v_fma_f32 v77, -v89, v86, v87
	v_fma_f32 v81, -v80, v78, v88
	v_div_scale_f32 v87, null, v76, v76, v38
	s_mov_b32 vcc_lo, s12
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v83, v79, 1.0
	v_fmac_f32_e32 v78, v81, v85
	v_rcp_f32_e32 v81, v87
	v_div_fmas_f32 v77, v77, v92, v86
	v_mul_f32_e32 v86, v84, v82
	v_div_fixup_f32 v33, v0, v76, v33
	v_fma_f32 v0, -v80, v78, v88
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v76, v76, v15
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v34, v77, v76, v34
	v_fma_f32 v77, -v91, v86, v84
	v_div_scale_f32 v80, s11, v41, v76, v41
	v_fma_f32 v88, -v87, v81, 1.0
	v_div_fmas_f32 v0, v0, v85, v78
	v_rcp_f32_e32 v78, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v77, v82 :: v_dual_mul_f32 v77, v80, v79
	v_fmac_f32_e32 v81, v88, v81
	v_div_scale_f32 v85, s9, v38, v76, v38
	v_div_scale_f32 v88, null, v76, v76, v59
	v_div_fixup_f32 v52, v0, v76, v52
	v_fma_f32 v0, -v91, v86, v84
	v_fma_f32 v84, -v83, v77, v80
	v_mul_f32_e32 v90, v85, v81
	v_rcp_f32_e32 v91, v88
	v_fma_f32 v92, -v89, v78, 1.0
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v77, v84, v79
	v_div_fmas_f32 v0, v0, v82, v86
	v_fma_f32 v82, -v87, v90, v85
	v_fmac_f32_e32 v78, v92, v78
	v_div_scale_f32 v84, s10, v15, v76, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v47, v0, v76, v47
	v_fma_f32 v86, -v88, v91, 1.0
	v_fma_f32 v0, -v83, v77, v80
	v_fmac_f32_e32 v90, v82, v81
	v_mul_f32_e32 v80, v84, v78
	v_div_scale_f32 v83, null, v76, v76, v51
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v91, v86, v91
	v_div_scale_f32 v82, s12, v59, v76, v59
	v_div_fmas_f32 v0, v0, v79, v77
	v_fma_f32 v77, -v87, v90, v85
	v_fma_f32 v79, -v89, v80, v84
	v_rcp_f32_e32 v85, v83
	v_div_scale_f32 v87, null, v76, v76, v50
	v_mul_f32_e32 v86, v82, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v79, v78
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v79, v87
	v_div_fmas_f32 v77, v77, v81, v90
	v_fma_f32 v81, -v88, v86, v82
	v_div_fixup_f32 v0, v0, v76, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v83, v85, 1.0
	v_fma_f32 v41, -v89, v80, v84
	v_div_fixup_f32 v38, v77, v76, v38
	v_fmac_f32_e32 v86, v81, v91
	v_div_scale_f32 v77, s9, v51, v76, v51
	v_fmac_f32_e32 v85, v90, v85
	v_fma_f32 v81, -v87, v79, 1.0
	v_div_scale_f32 v84, null, v76, v76, v42
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v92, null, v76, v76, v12
	v_div_fmas_f32 v41, v41, v78, v80
	v_fma_f32 v78, -v88, v86, v82
	v_mul_f32_e32 v80, v77, v85
	v_fmac_f32_e32 v79, v81, v79
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v82, s10, v50, v76, v50
	v_div_scale_f32 v88, null, v76, v76, v14
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v89, v82, v79
	v_div_fmas_f32 v78, v78, v91, v86
	v_fma_f32 v86, -v83, v80, v77
	v_rcp_f32_e32 v91, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v84, v81, 1.0
	v_div_fixup_f32 v15, v41, v76, v15
	v_div_fixup_f32 v41, v78, v76, v59
	v_fmac_f32_e32 v80, v86, v85
	v_fma_f32 v59, -v87, v89, v82
	v_div_scale_f32 v86, null, v76, v76, v13
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v78, s11, v42, v76, v42
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v88, v91, 1.0
	v_fma_f32 v77, -v83, v80, v77
	v_fmac_f32_e32 v89, v59, v79
	v_rcp_f32_e32 v83, v86
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v59, v78, v81
	v_fmac_f32_e32 v91, v90, v91
	v_div_scale_f32 v90, s12, v14, v76, v14
	v_div_fmas_f32 v77, v77, v85, v80
	v_fma_f32 v80, -v87, v89, v82
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v82, -v84, v59, v78
	v_mul_f32_e32 v85, v90, v91
	v_fma_f32 v87, -v86, v83, 1.0
	v_div_fmas_f32 v79, v80, v79, v89
	v_rcp_f32_e32 v80, v92
	v_fmac_f32_e32 v59, v82, v81
	v_fma_f32 v82, -v88, v85, v90
	v_fmac_f32_e32 v83, v87, v83
	v_div_scale_f32 v87, s9, v13, v76, v13
	v_div_fixup_f32 v51, v77, v76, v51
	v_div_fixup_f32 v50, v79, v76, v50
	v_fma_f32 v77, -v84, v59, v78
	v_fmac_f32_e32 v85, v82, v91
	v_mul_f32_e32 v78, v87, v83
	v_fma_f32 v79, -v92, v80, 1.0
	v_div_scale_f32 v82, null, v75, v75, v56
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v84, s10, v12, v76, v12
	v_div_fmas_f32 v59, v77, v81, v59
	v_fma_f32 v77, -v88, v85, v90
	v_fma_f32 v81, -v86, v78, v87
	v_fmac_f32_e32 v80, v79, v80
	v_rcp_f32_e32 v79, v82
	v_div_scale_f32 v88, null, v75, v75, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v81, v83
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v42, v59, v76, v42
	v_rcp_f32_e32 v81, v88
	v_div_fmas_f32 v77, v77, v91, v85
	v_mul_f32_e32 v85, v84, v80
	v_fma_f32 v59, -v86, v78, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v82, v79, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v14, v77, v76, v14
	v_fma_f32 v77, -v92, v85, v84
	v_div_scale_f32 v86, s11, v56, v75, v56
	v_fmac_f32_e32 v79, v89, v79
	v_fma_f32 v87, -v88, v81, 1.0
	v_div_scale_f32 v89, null, v75, v75, v43
	v_div_fmas_f32 v59, v59, v83, v78
	v_fmac_f32_e32 v85, v77, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v87, v81
	v_rcp_f32_e32 v78, v89
	v_div_scale_f32 v87, null, v75, v75, v44
	v_mul_f32_e32 v77, v86, v79
	v_div_scale_f32 v83, s9, v53, v75, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v91, v87
	v_div_fixup_f32 v13, v59, v76, v13
	v_fma_f32 v59, -v92, v85, v84
	v_fma_f32 v84, -v82, v77, v86
	v_mul_f32_e32 v90, v83, v81
	v_fma_f32 v92, -v89, v78, 1.0
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v59, v59, v80, v85
	v_fmac_f32_e32 v77, v84, v79
	v_fma_f32 v80, -v88, v90, v83
	v_fmac_f32_e32 v78, v92, v78
	v_div_scale_f32 v84, s10, v43, v75, v43
	v_fma_f32 v85, -v87, v91, 1.0
	v_div_fixup_f32 v12, v59, v76, v12
	v_fma_f32 v59, -v82, v77, v86
	v_fmac_f32_e32 v90, v80, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v76, v84, v78 :: v_dual_fmac_f32 v91, v85, v91
	v_div_scale_f32 v80, s12, v44, v75, v44
	v_div_scale_f32 v82, null, v75, v75, v68
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v85, v80, v91
	v_div_fmas_f32 v59, v59, v79, v77
	v_fma_f32 v77, -v88, v90, v83
	v_fma_f32 v79, -v89, v76, v84
	v_rcp_f32_e32 v83, v82
	v_div_scale_f32 v86, null, v75, v75, v60
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v76, v79, v78
	v_div_fmas_f32 v77, v77, v81, v90
	v_rcp_f32_e32 v79, v86
	v_fma_f32 v81, -v87, v85, v80
	v_div_fixup_f32 v56, v59, v75, v56
	v_fma_f32 v59, -v89, v76, v84
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v82, v83, 1.0
	v_div_scale_f32 v84, null, v75, v75, v55
	v_fmac_f32_e32 v85, v81, v91
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v53, v77, v75, v53
	v_fmac_f32_e32 v83, v88, v83
	v_div_scale_f32 v77, s9, v68, v75, v68
	v_fma_f32 v81, -v86, v79, 1.0
	v_div_fmas_f32 v59, v59, v78, v76
	v_fma_f32 v76, -v87, v85, v80
	v_rcp_f32_e32 v80, v84
	v_mul_f32_e32 v78, v77, v83
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v81, s10, v60, v75, v60
	v_div_scale_f32 v87, null, v75, v75, v54
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v88, v81, v79
	v_div_fmas_f32 v76, v76, v91, v85
	v_fma_f32 v85, -v82, v78, v77
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v84, v80, 1.0
	v_rcp_f32_e32 v90, v87
	v_div_fixup_f32 v43, v59, v75, v43
	v_div_fixup_f32 v44, v76, v75, v44
	v_fmac_f32_e32 v78, v85, v83
	v_fma_f32 v59, -v86, v88, v81
	v_fmac_f32_e32 v80, v89, v80
	v_div_scale_f32 v76, s11, v55, v75, v55
	v_div_scale_f32 v85, null, v75, v75, v11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v87, v90, 1.0
	v_fma_f32 v77, -v82, v78, v77
	v_fmac_f32_e32 v88, v59, v79
	v_mul_f32_e32 v82, v76, v80
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v91, v85
	v_fmac_f32_e32 v90, v89, v90
	v_div_scale_f32 v89, s12, v54, v75, v54
	v_div_fmas_f32 v59, v77, v83, v78
	v_fma_f32 v77, -v86, v88, v81
	v_fma_f32 v78, -v84, v82, v76
	v_div_scale_f32 v86, null, v75, v75, v70
	v_mul_f32_e32 v81, v89, v90
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v78, v80
	v_rcp_f32_e32 v78, v86
	v_fma_f32 v83, -v85, v91, 1.0
	v_div_fmas_f32 v77, v77, v79, v88
	v_fma_f32 v79, -v87, v81, v89
	v_div_fixup_f32 v59, v59, v75, v68
	v_fma_f32 v68, -v84, v82, v76
	v_fmac_f32_e32 v91, v83, v91
	v_div_scale_f32 v83, s9, v11, v75, v11
	v_div_fixup_f32 v60, v77, v75, v60
	v_fmac_f32_e32 v81, v79, v90
	v_fma_f32 v77, -v86, v78, 1.0
	v_div_scale_f32 v79, null, v75, v75, v63
	v_mul_f32_e32 v76, v83, v91
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v77, v78
	v_rcp_f32_e32 v77, v79
	v_div_fmas_f32 v68, v68, v80, v82
	v_fma_f32 v80, -v87, v81, v89
	v_fma_f32 v82, -v85, v76, v83
	v_div_scale_f32 v84, s10, v70, v75, v70
	v_div_scale_f32 v87, null, v75, v75, v62
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v76, v82, v91
	v_div_fmas_f32 v80, v80, v90, v81
	v_rcp_f32_e32 v81, v87
	v_mul_f32_e32 v82, v84, v78
	v_fma_f32 v88, -v79, v77, 1.0
	v_div_fixup_f32 v55, v68, v75, v55
	v_div_fixup_f32 v54, v80, v75, v54
	v_fma_f32 v68, -v85, v76, v83
	v_fma_f32 v80, -v86, v82, v84
	v_fmac_f32_e32 v77, v88, v77
	v_div_scale_f32 v83, s11, v63, v75, v63
	v_div_scale_f32 v88, null, v75, v75, v46
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v85, -v87, v81, 1.0
	v_div_fmas_f32 v68, v68, v91, v76
	v_fmac_f32_e32 v82, v80, v78
	v_mul_f32_e32 v76, v83, v77
	v_rcp_f32_e32 v80, v88
	v_div_scale_f32 v89, null, v75, v75, v10
	v_fmac_f32_e32 v81, v85, v81
	v_div_scale_f32 v85, s9, v62, v75, v62
	v_div_fixup_f32 v11, v68, v75, v11
	v_fma_f32 v68, -v86, v82, v84
	v_fma_f32 v84, -v79, v76, v83
	v_rcp_f32_e32 v90, v89
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v86, v85, v81
	v_fma_f32 v91, -v88, v80, 1.0
	v_div_fmas_f32 v68, v68, v78, v82
	v_fmac_f32_e32 v76, v84, v77
	v_div_scale_f32 v82, s10, v46, v75, v46
	v_fma_f32 v78, -v87, v86, v85
	v_fmac_f32_e32 v80, v91, v80
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v84, -v89, v90, 1.0
	v_div_fixup_f32 v68, v68, v75, v70
	v_fma_f32 v70, -v79, v76, v83
	v_div_scale_f32 v83, null, v75, v75, v8
	v_fmac_f32_e32 v86, v78, v81
	v_mul_f32_e32 v78, v82, v80
	v_fmac_f32_e32 v90, v84, v90
	v_div_scale_f32 v79, s12, v10, v75, v10
	v_rcp_f32_e32 v84, v83
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v70, v70, v77, v76
	v_fma_f32 v76, -v87, v86, v85
	v_fma_f32 v77, -v88, v78, v82
	v_mul_f32_e32 v85, v79, v90
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v87, null, v75, v75, v9
	v_div_fmas_f32 v76, v76, v81, v86
	v_fmac_f32_e32 v78, v77, v80
	v_fma_f32 v81, -v89, v85, v79
	v_fma_f32 v86, -v83, v84, 1.0
	v_rcp_f32_e32 v77, v87
	v_div_fixup_f32 v63, v70, v75, v63
	v_div_fixup_f32 v62, v76, v75, v62
	v_fma_f32 v70, -v88, v78, v82
	v_dual_fmac_f32 v85, v81, v90 :: v_dual_fmac_f32 v84, v86, v84
	v_div_scale_f32 v76, s9, v8, v75, v8
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v88, null, v74, v74, v64
	v_div_fmas_f32 v70, v70, v80, v78
	v_fma_f32 v78, -v89, v85, v79
	v_mul_f32_e32 v79, v76, v84
	v_div_scale_f32 v80, null, v74, v74, v65
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v81, -v87, v77, 1.0
	v_div_fmas_f32 v78, v78, v90, v85
	v_rcp_f32_e32 v82, v80
	v_fma_f32 v85, -v83, v79, v76
	v_div_fixup_f32 v46, v70, v75, v46
	v_fmac_f32_e32 v77, v81, v77
	v_div_scale_f32 v81, s10, v9, v75, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v85, v84
	v_div_fixup_f32 v10, v78, v75, v10
	v_rcp_f32_e32 v78, v88
	v_mul_f32_e32 v86, v81, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v80, v82, 1.0
	v_fma_f32 v76, -v83, v79, v76
	v_div_scale_f32 v83, null, v74, v74, v61
	v_fma_f32 v70, -v87, v86, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v85, v82
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v85, v83
	v_div_fmas_f32 v76, v76, v84, v79
	v_fmac_f32_e32 v86, v70, v77
	v_div_scale_f32 v70, s11, v65, v74, v65
	v_fma_f32 v89, -v88, v78, 1.0
	v_div_scale_f32 v90, null, v74, v74, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v79, -v87, v86, v81
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v87, -v83, v85, 1.0
	v_mul_f32_e32 v81, v70, v82
	v_fmac_f32_e32 v78, v89, v78
	v_div_scale_f32 v84, s9, v64, v74, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v87, s12, v61, v74, v61
	v_rcp_f32_e32 v92, v90
	v_div_fmas_f32 v77, v79, v77, v86
	v_fma_f32 v89, -v80, v81, v70
	v_dual_mul_f32 v86, v87, v85 :: v_dual_mul_f32 v91, v84, v78
	v_div_fixup_f32 v8, v76, v75, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v9, v77, v75, v9
	v_div_scale_f32 v77, null, v74, v74, v73
	v_fma_f32 v75, -v83, v86, v87
	v_fmac_f32_e32 v81, v89, v82
	v_fma_f32 v79, -v88, v91, v84
	v_fma_f32 v76, -v90, v92, 1.0
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v86, v75, v85
	v_rcp_f32_e32 v75, v77
	v_fma_f32 v70, -v80, v81, v70
	v_dual_fmac_f32 v91, v79, v78 :: v_dual_fmac_f32 v92, v76, v92
	v_div_scale_f32 v76, s10, v58, v74, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v70, v70, v82, v81
	v_fma_f32 v79, -v88, v91, v84
	v_div_scale_f32 v81, null, v74, v74, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v80, v76, v92
	v_fma_f32 v82, -v77, v75, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v65, v70, v74, v65
	v_div_fmas_f32 v78, v79, v78, v91
	v_fma_f32 v79, -v83, v86, v87
	v_rcp_f32_e32 v83, v81
	v_fma_f32 v84, -v90, v80, v76
	v_fmac_f32_e32 v75, v82, v75
	v_div_scale_f32 v82, s9, v73, v74, v73
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v80, v84, v92
	v_div_fmas_f32 v79, v79, v85, v86
	v_mul_f32_e32 v70, v82, v75
	v_div_fixup_f32 v64, v78, v74, v64
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v78, -v81, v83, 1.0
	v_fma_f32 v76, -v90, v80, v76
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v84, -v77, v70, v82
	v_div_fixup_f32 v61, v79, v74, v61
	v_div_scale_f32 v79, null, v74, v74, v67
	v_fmac_f32_e32 v83, v78, v83
	v_div_scale_f32 v78, s11, v71, v74, v71
	v_div_fmas_f32 v76, v76, v92, v80
	v_fmac_f32_e32 v70, v84, v75
	v_rcp_f32_e32 v85, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v80, v78, v83
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v58, v76, v74, v58
	v_fma_f32 v76, -v77, v70, v82
	v_div_scale_f32 v84, null, v74, v74, v66
	v_fma_f32 v77, -v81, v80, v78
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v70, v76, v75, v70
	v_div_scale_f32 v75, null, v74, v74, v7
	v_fma_f32 v82, -v79, v85, 1.0
	v_rcp_f32_e32 v86, v84
	v_fmac_f32_e32 v80, v77, v83
	v_rcp_f32_e32 v77, v75
	v_div_scale_f32 v76, s9, v67, v74, v67
	v_fmac_f32_e32 v85, v82, v85
	v_div_scale_f32 v82, null, v74, v74, v72
	v_div_fixup_f32 v70, v70, v74, v73
	v_fma_f32 v78, -v81, v80, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v84, v86, 1.0
	v_rcp_f32_e32 v88, v82
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v75, v77, 1.0
	v_mul_f32_e32 v81, v76, v85
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v86, v73, v86
	v_div_scale_f32 v73, s10, v66, v74, v66
	v_fmac_f32_e32 v77, v87, v77
	v_div_scale_f32 v87, null, v74, v74, v69
	v_div_fmas_f32 v78, v78, v83, v80
	v_fma_f32 v80, -v79, v81, v76
	v_mul_f32_e32 v83, v73, v86
	v_div_scale_f32 v89, s11, v7, v74, v7
	v_fma_f32 v90, -v82, v88, 1.0
	v_rcp_f32_e32 v91, v87
	v_fmac_f32_e32 v81, v80, v85
	v_fma_f32 v80, -v84, v83, v73
	v_mul_f32_e32 v92, v89, v77
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s12, v72, v74, v72
	v_div_fixup_f32 v71, v78, v74, v71
	v_fma_f32 v76, -v79, v81, v76
	v_fmac_f32_e32 v83, v80, v86
	v_fma_f32 v78, -v75, v92, v89
	v_mul_f32_e32 v79, v90, v88
	v_fma_f32 v80, -v87, v91, 1.0
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v73, -v84, v83, v73
	v_fmac_f32_e32 v92, v78, v77
	v_fma_f32 v78, -v82, v79, v90
	v_fmac_f32_e32 v91, v80, v91
	v_div_scale_f32 v80, s9, v69, v74, v69
	v_div_fmas_f32 v76, v76, v85, v81
	v_div_scale_f32 v81, null, v74, v74, v57
	v_fma_f32 v75, -v75, v92, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v79, v78, v88 :: v_dual_mul_f32 v78, v80, v91
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v67, v76, v74, v67
	v_div_fmas_f32 v73, v73, v86, v83
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v83, v81
	v_div_fmas_f32 v75, v75, v77, v92
	v_fma_f32 v77, -v82, v79, v90
	v_fma_f32 v82, -v87, v78, v80
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v66, v73, v74, v66
	v_div_fixup_f32 v7, v75, v74, v7
	v_div_fmas_f32 v77, v77, v88, v79
	v_fmac_f32_e32 v78, v82, v91
	v_div_scale_f32 v75, null, v74, v74, v49
	v_fma_f32 v76, -v81, v83, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v72, v77, v74, v72
	v_fma_f32 v73, -v87, v78, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v77, v75
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v83, v76, v83
	v_div_scale_f32 v76, null, v74, v74, v4
	v_div_fmas_f32 v73, v73, v91, v78
	v_div_scale_f32 v78, null, v74, v74, v5
	v_div_scale_f32 v85, null, v74, v74, v6
	v_div_scale_f32 v79, vcc_lo, v57, v74, v57
	v_rcp_f32_e32 v80, v76
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v82, v78
	v_div_fixup_f32 v69, v73, v74, v69
	v_fma_f32 v73, -v75, v77, 1.0
	v_rcp_f32_e32 v87, v85
	v_mul_f32_e32 v84, v79, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v72, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v77, v73, v77
	v_div_scale_f32 v73, s9, v49, v74, v49
	v_fma_f32 v86, -v76, v80, 1.0
	v_fma_f32 v88, -v81, v84, v79
	v_fma_f32 v89, -v78, v82, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v90, v73, v77
	v_fma_f32 v91, -v85, v87, 1.0
	v_fmac_f32_e32 v80, v86, v80
	v_div_scale_f32 v86, s10, v4, v74, v4
	v_fmac_f32_e32 v84, v88, v83
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v89, s11, v5, v74, v5
	v_fma_f32 v88, -v75, v90, v73
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s12, v6, v74, v6
	v_mul_f32_e32 v92, v86, v80
	v_fma_f32 v79, -v81, v84, v79
	v_dual_mul_f32 v93, v89, v82 :: v_dual_fmac_f32 v90, v88, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v94, v91, v87
	v_fma_f32 v81, -v76, v92, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v79, v79, v83, v84
	s_mov_b32 vcc_lo, s9
	s_mov_b32 s9, 0xc1000000
	v_fma_f32 v88, -v78, v93, v89
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v24, v24, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v73, -v75, v90, v73
	v_fma_f32 v75, -v85, v94, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v92, v81, v80 :: v_dual_fmac_f32 v93, v88, v82
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v7, v7, s9, 0x40e00000
	v_cvt_i32_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v75, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v76, -v76, v92, v86
	v_fma_f32 v75, -v78, v93, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v89, v7
	v_and_b32_e32 v7, 15, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v24, 4, v97
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v73, v73, v77, v90
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v77, -v85, v94, v91
	v_div_fmas_f32 v76, v76, v80, v92
	s_mov_b32 vcc_lo, s11
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v24, v24, v27
	v_lshlrev_b32_e32 v27, 6, v96
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v75, v75, v82, v93
	s_mov_b32 vcc_lo, s12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v87, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v31, v31, s9, 0x40e00000
	v_med3_f32 v34, v34, s9, 0x40e00000
	v_med3_f32 v0, v0, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v6, v77, v74, v6
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v16, v16, s9, 0x40e00000
	v_med3_f32 v72, v72, s9, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v31, v31
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v57, v79, v74, v57
	v_div_fixup_f32 v49, v73, v74, v49
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v6, v6, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v4, v76, v74, v4
	v_div_fixup_f32 v5, v75, v74, v5
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v58, v58
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v69, v69, s9, 0x40e00000
	v_cvt_i32_f32_e32 v73, v16
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v95, v6
	v_and_b32_e32 v6, 15, v21
	v_and_b32_e32 v16, 15, v31
	v_and_b32_e32 v31, 15, v34
	v_and_b32_e32 v34, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v96
	v_and_b32_e32 v21, 16, v96
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v4, v4
	v_rndne_f32_e32 v5, v5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v32, v32, s9, 0x40e00000
	v_med3_f32 v28, v28, s9, 0x40e00000
	v_med3_f32 v36, v36, s9, 0x40e00000
	v_med3_f32 v35, v35, s9, 0x40e00000
	v_med3_f32 v30, v30, s9, 0x40e00000
	v_med3_f32 v29, v29, s9, 0x40e00000
	v_med3_f32 v39, v39, s9, 0x40e00000
	v_med3_f32 v45, v45, s9, 0x40e00000
	v_med3_f32 v40, v40, s9, 0x40e00000
	v_med3_f32 v33, v33, s9, 0x40e00000
	v_med3_f32 v47, v47, s9, 0x40e00000
	v_med3_f32 v38, v38, s9, 0x40e00000
	v_med3_f32 v51, v51, s9, 0x40e00000
	v_med3_f32 v50, v50, s9, 0x40e00000
	v_med3_f32 v56, v56, s9, 0x40e00000
	v_med3_f32 v53, v53, s9, 0x40e00000
	v_med3_f32 v43, v43, s9, 0x40e00000
	v_med3_f32 v44, v44, s9, 0x40e00000
	v_med3_f32 v60, v60, s9, 0x40e00000
	v_med3_f32 v55, v55, s9, 0x40e00000
	v_med3_f32 v54, v54, s9, 0x40e00000
	v_med3_f32 v63, v63, s9, 0x40e00000
	v_med3_f32 v62, v62, s9, 0x40e00000
	v_med3_f32 v65, v65, s9, 0x40e00000
	v_med3_f32 v64, v64, s9, 0x40e00000
	v_med3_f32 v61, v61, s9, 0x40e00000
	v_med3_f32 v58, v58, s9, 0x40e00000
	v_cvt_i32_f32_e32 v90, v69
	v_and_b32_e32 v69, 15, v72
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v72, 6, v21
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v12, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v19, v19, s9, 0x40e00000
	v_med3_f32 v48, v48, s9, 0x40e00000
	v_med3_f32 v37, v37, s9, 0x40e00000
	v_med3_f32 v18, v18, s9, 0x40e00000
	v_med3_f32 v17, v17, s9, 0x40e00000
	v_med3_f32 v52, v52, s9, 0x40e00000
	v_med3_f32 v15, v15, s9, 0x40e00000
	v_med3_f32 v41, v41, s9, 0x40e00000
	v_med3_f32 v11, v11, s9, 0x40e00000
	v_med3_f32 v68, v68, s9, 0x40e00000
	v_med3_f32 v70, v70, s9, 0x40e00000
	v_med3_f32 v71, v71, s9, 0x40e00000
	v_med3_f32 v57, v57, s9, 0x40e00000
	v_med3_f32 v14, v14, s9, 0x40e00000
	v_med3_f32 v46, v46, s9, 0x40e00000
	v_med3_f32 v10, v10, s9, 0x40e00000
	v_med3_f32 v8, v8, s9, 0x40e00000
	v_med3_f32 v9, v9, s9, 0x40e00000
	v_med3_f32 v49, v49, s9, 0x40e00000
	v_med3_f32 v4, v4, s9, 0x40e00000
	v_med3_f32 v5, v5, s9, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v79, v43
	v_cvt_i32_f32_e32 v80, v44
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v86, v61
	v_cvt_i32_f32_e32 v87, v58
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v72
	v_and_or_b32 v23, 0x1b00, v27, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v13, v13, s9, 0x40e00000
	v_med3_f32 v12, v12, s9, 0x40e00000
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v74, v17
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v75, v15
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v81, v11
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v91, v57
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v76, v14
	v_cvt_i32_f32_e32 v82, v46
	v_cvt_i32_f32_e32 v83, v10
	v_cvt_i32_f32_e32 v84, v8
	v_cvt_i32_f32_e32 v85, v9
	v_cvt_i32_f32_e32 v92, v49
	v_cvt_i32_f32_e32 v93, v4
	v_cvt_i32_f32_e32 v94, v5
	v_and_b32_e32 v4, 15, v32
	v_and_b32_e32 v5, 15, v28
	v_and_b32_e32 v8, 15, v36
	v_and_b32_e32 v9, 15, v35
	v_and_b32_e32 v10, 15, v30
	v_and_b32_e32 v11, 15, v29
	v_and_b32_e32 v14, 15, v39
	v_and_b32_e32 v28, 15, v45
	v_and_b32_e32 v29, 15, v40
	v_and_b32_e32 v30, 15, v33
	v_and_b32_e32 v33, 15, v47
	v_and_b32_e32 v35, 15, v38
	v_and_b32_e32 v38, 15, v51
	v_and_b32_e32 v39, 15, v50
	v_and_b32_e32 v44, 15, v56
	v_and_b32_e32 v45, 15, v53
	v_and_b32_e32 v46, 15, v79
	v_and_b32_e32 v47, 15, v80
	v_and_b32_e32 v49, 15, v60
	v_and_b32_e32 v50, 15, v55
	v_and_b32_e32 v51, 15, v54
	v_and_b32_e32 v54, 15, v63
	v_and_b32_e32 v55, 15, v62
	v_and_b32_e32 v60, 15, v65
	v_and_b32_e32 v61, 15, v64
	v_and_b32_e32 v62, 15, v86
	v_and_b32_e32 v63, 15, v87
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v24, v25
	v_xad_u32 v23, v23, v98, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v77, v13
	v_cvt_i32_f32_e32 v78, v12
	v_and_b32_e32 v12, 15, v19
	v_and_b32_e32 v13, 15, v48
	v_and_b32_e32 v15, 15, v37
	v_and_b32_e32 v17, 15, v18
	v_and_b32_e32 v18, 15, v73
	v_and_b32_e32 v19, 15, v74
	v_and_b32_e32 v32, 15, v52
	v_and_b32_e32 v36, 15, v75
	v_and_b32_e32 v37, 15, v41
	v_and_b32_e32 v52, 15, v81
	v_and_b32_e32 v53, 15, v68
	v_and_b32_e32 v64, 15, v70
	v_and_b32_e32 v65, 15, v71
	v_and_b32_e32 v68, 15, v89
	v_and_b32_e32 v70, 15, v90
	v_and_b32_e32 v71, 15, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s9, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[4:7]
	ds_store_b128 v0, v[12:15] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[4:7], v23
	ds_load_b128 v[12:15], v23 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[28:31]
	ds_store_b128 v0, v[36:39] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[27:30], v23
	ds_load_b128 v[36:39], v23 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[44:47]
	ds_store_b128 v0, v[52:55] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[44:47], v23
	ds_load_b128 v[52:55], v23 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[60:63]
	ds_store_b128 v0, v[68:71] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v23
	ds_load_b128 v[68:71], v23 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[8:11]
	ds_store_b128 v0, v[16:19] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v23
	ds_load_b128 v[16:19], v23 offset:1024
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v66, v66
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v59, v59, s9, 0x40e00000
	v_cvt_i32_f32_e32 v42, v42
	v_and_b32_e32 v41, 15, v76
	v_med3_f32 v67, v67, s9, 0x40e00000
	v_med3_f32 v66, v66, s9, 0x40e00000
	v_cvt_i32_f32_e32 v59, v59
	v_and_b32_e32 v40, 15, v42
	v_and_b32_e32 v42, 15, v77
	v_and_b32_e32 v43, 15, v78
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v88, v66
	v_and_b32_e32 v48, 15, v59
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[32:35]
	ds_store_b128 v0, v[40:43] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[31:34], v23
	ds_load_b128 v[40:43], v23 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v56, 15, v82
	v_and_b32_e32 v57, 15, v83
	v_and_b32_e32 v58, 15, v84
	v_and_b32_e32 v59, 15, v85
	v_and_b32_e32 v66, 15, v67
	v_and_b32_e32 v67, 15, v88
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[48:51]
	ds_store_b128 v0, v[56:59] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v23
	ds_load_b128 v[56:59], v23 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v72, 15, v92
	v_and_b32_e32 v73, 15, v93
	v_and_b32_e32 v74, 15, v94
	v_and_b32_e32 v75, 15, v95
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v11, v19, 4, v11
	v_lshl_or_b32 v19, v38, 4, v29
	v_lshl_or_b32 v29, v52, 4, v44
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v44, 3, v97
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v4, v12, 4, v4
	v_lshl_or_b32 v12, v14, 4, v6
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, s34, v22
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[64:67]
	ds_store_b128 v0, v[72:75] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[64:67], v23
	ds_load_b128 v[72:75], v23 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s9, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s41, 7, v44
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v14, v16, 4, v8
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s9, s33, s9
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 16, v6
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v5, v13, 4, v5
	v_lshl_or_b32 v13, v15, 4, v7
	v_lshl_or_b32 v15, v17, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 32, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v16, v18, 4, v10
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s9, s9, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 48, v6
	v_mad_u64_u32 v[6:7], null, v6, s9, v[0:1]
	v_mad_u64_u32 v[7:8], null, v8, s9, v[0:1]
	v_mad_u64_u32 v[8:9], null, v9, s9, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v17, v36, 4, v27
	v_lshl_or_b32 v18, v37, 4, v28
	v_lshl_or_b32 v24, v40, 4, v31
	v_lshl_or_b32 v25, v41, 4, v32
	v_lshl_or_b32 v27, v42, 4, v33
	v_lshl_or_b32 v28, v43, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[9:10], null, v10, s9, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v13.l
	v_and_b16 v0.h, 0xff, v12.l
	v_lshlrev_b16 v1.l, 8, v5.l
	v_and_b16 v2.l, 0xff, v4.l
	v_lshlrev_b16 v4.l, 8, v11.l
	v_and_b16 v4.h, 0xff, v16.l
	v_lshlrev_b16 v5.l, 8, v15.l
	v_and_b16 v5.h, 0xff, v14.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v23, v39, 4, v30
	v_lshl_or_b32 v33, v56, 4, v48
	v_lshl_or_b32 v34, v57, 4, v49
	v_lshl_or_b32 v35, v58, 4, v50
	v_lshl_or_b32 v36, v59, 4, v51
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_or_b16 v10.l, v2.l, v1.l
	v_or_b16 v11.h, v4.h, v4.l
	v_or_b16 v11.l, v5.h, v5.l
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_lshlrev_b16 v4.l, 8, v28.l
	v_and_b16 v4.h, 0xff, v27.l
	v_lshlrev_b16 v5.l, 8, v25.l
	v_and_b16 v5.h, 0xff, v24.l
	s_mov_b32 s12, s16
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v30, v53, 4, v45
	v_lshl_or_b32 v31, v54, 4, v46
	v_lshl_or_b32 v32, v55, 4, v47
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v41, v72, 4, v64
	v_lshl_or_b32 v42, v73, 4, v65
	v_lshl_or_b32 v43, v74, 4, v66
	v_lshl_or_b32 v22, v75, 4, v67
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v23.l
	v_and_b16 v0.h, 0xff, v19.l
	v_lshlrev_b16 v1.l, 8, v18.l
	v_and_b16 v2.l, 0xff, v17.l
	buffer_store_b64 v[10:11], v6, s[12:15], 0 offen
	v_or_b16 v11.h, v4.h, v4.l
	v_or_b16 v11.l, v5.h, v5.l
	v_lshlrev_b16 v4.l, 8, v36.l
	v_and_b16 v4.h, 0xff, v35.l
	v_lshlrev_b16 v5.l, 8, v34.l
	v_and_b16 v5.h, 0xff, v33.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v37, v68, 4, v60
	v_lshl_or_b32 v38, v69, 4, v61
	v_lshl_or_b32 v39, v70, 4, v62
	v_lshl_or_b32 v40, v71, 4, v63
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_or_b16 v10.l, v2.l, v1.l
	v_cndmask_b32_e32 v6, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v0.l, 8, v32.l
	v_and_b16 v0.h, 0xff, v31.l
	v_lshlrev_b16 v1.l, 8, v30.l
	v_and_b16 v2.l, 0xff, v29.l
	v_or_b16 v7.h, v4.h, v4.l
	v_or_b16 v7.l, v5.h, v5.l
	v_lshlrev_b16 v4.l, 8, v22.l
	v_and_b16 v4.h, 0xff, v43.l
	v_lshlrev_b16 v5.l, 8, v42.l
	v_and_b16 v5.h, 0xff, v41.l
	buffer_store_b64 v[10:11], v6, s[12:15], 0 offen
	v_or_b16 v6.h, v0.h, v0.l
	v_or_b16 v6.l, v2.l, v1.l
	v_lshlrev_b16 v0.l, 8, v40.l
	v_and_b16 v0.h, 0xff, v39.l
	v_lshlrev_b16 v1.l, 8, v38.l
	v_and_b16 v2.l, 0xff, v37.l
	v_or_b16 v11.h, v4.h, v4.l
	v_or_b16 v11.l, v5.h, v5.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 4, v96
	v_lshrrev_b32_e32 v5, 2, v21
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.l, v2.l, v1.l
	v_cndmask_b32_e32 v0, 0x80000000, v9, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 2, v4
	v_add_nc_u32_e32 v5, 0, v5
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[6:7], v8, s[12:15], 0 offen
	buffer_store_b64 v[10:11], v0, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v44
	v_mov_b16_e32 v2.l, v26.h
	v_mov_b16_e32 v1.l, v20.h
	v_add3_u32 v4, v5, v4, v44
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v96
	s_and_b32 s13, s19, 0xffff
	s_mov_b32 s12, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s41, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[12:15], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp61:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 804
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
		.amdhsa_next_free_sgpr 46
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 804
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 32800
; TotalNumSgprs: 48
; NumVgprs: 256
; ScratchSize: 804
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 48
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 804
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 202
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
