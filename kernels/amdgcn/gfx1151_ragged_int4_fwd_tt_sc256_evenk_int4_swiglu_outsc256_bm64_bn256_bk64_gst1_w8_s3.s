	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[36:37], s[0:1], 0x5c
	v_mov_b32_e32 v103, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v87, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_and_b32_e32 v1, 63, v103
	v_and_b32_e32 v21, 16, v103
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ ragged.py:1031:21 ]
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
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s37, s4
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
	s_sub_i32 s37, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s37, s5
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
	s_load_b64 s[28:29], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[34:35], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[30:31], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s28, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v3, null, s29, 0, s2
	v_add_nc_u32_e32 v137, s28, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[30:31], v[2:3]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s36, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v4, 16, v103
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s28, v1
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow721
	s_load_b128 s[16:19], s[0:1], 0x40
	v_dual_mov_b32 v102, 0 :: v_dual_and_b32 v105, 15, v103
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v106, 0xf0, v103
	v_dual_mov_b32 v85, 0 :: v_dual_and_b32 v104, 0xc0, v103
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v243, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v143, 0
	v_mov_b32_e32 v144, 0
	v_mov_b32_e32 v142, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b32 s24, s[0:1], 0x58
	s_load_b32 s38, s[0:1], 0x50
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s0, s28, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s29, 0, s0
	v_dual_mov_b32 v149, 0 :: v_dual_and_b32 v0, 1, v103
	v_add_co_u32 v4, vcc_lo, v2, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 32
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[30:31], v[2:3]
	v_dual_mov_b32 v163, 0 :: v_dual_add_nc_u32 v2, s28, v105
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s20, s6, s4
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v150, 0
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_addc_u32 s21, s7, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[34:35], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[30:31], v[4:5]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[34:35], v[6:7]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[30:31], v[6:7]
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v4, 16, v2
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_add_nc_u32_e32 v5, 32, v2
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v6, 48, v2
	v_mul_lo_u32 v2, v2, s36
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s20, s[20:21], 0x0
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s21, s37, 8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[34:35], v[8:9]
	v_or_b32_e32 v25, s21, v103
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[30:31], v[8:9]
	v_dual_mov_b32 v147, 0 :: v_dual_lshlrev_b32 v152, 4, v0
	v_mov_b32_e32 v161, 0
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v2, off offset:320
	scratch_store_b32 off, v105, off offset:352
	scratch_store_b32 off, v25, off offset:336
	v_mul_lo_u32 v2, v4, s36
	v_lshlrev_b32_e32 v4, 1, v103
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_lshrrev_b32_e32 v3, 1, v103
	v_dual_mov_b32 v143, 0 :: v_dual_lshlrev_b32 v24, 2, v106
	v_dual_mov_b32 v253, 0 :: v_dual_lshlrev_b32 v0, 5, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v162, 0 :: v_dual_and_b32 v9, 24, v4
	v_or_b32_e32 v7, s21, v3
	v_xor_b32_e32 v3, v4, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v0, 0, v24, v0
	v_lshl_or_b32 v157, v105, 5, v9
	v_bfe_u32 v9, v103, 4, 1
	v_mov_b32_e32 v251, 0
	v_mov_b32_e32 v127, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s1
	s_and_b32 s1, s4, s5
	v_and_or_b32 v9, v4, 30, v9
	v_and_b32_e32 v4, 28, v4
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s5, s33, 1
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v151, 3, v104
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s4, s24, s5
	v_dual_mov_b32 v156, 0 :: v_dual_and_b32 v3, 24, v3
	v_add_nc_u32_e32 v0, v0, v4
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:324
	scratch_store_b32 off, v106, off offset:356
	v_mul_lo_u32 v2, v5, s36
	v_dual_mov_b32 v255, 0 :: v_dual_add_nc_u32 v8, s33, v7
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s3
	s_and_b32 s3, s6, s7
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s6, s36, s20
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s20, s4, s20
	v_dual_mov_b32 v164, 0 :: v_dual_add_nc_u32 v5, 0, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v2, off offset:328
	scratch_store_b32 off, v21, off offset:360
	scratch_store_b32 off, v103, off offset:344
	v_mul_lo_u32 v2, v6, s36
	v_mad_u64_u32 v[138:139], null, v7, s24, s[20:21]
	v_xor_b32_e32 v3, v3, v151
	v_lshl_add_u32 v1, v1, 5, 0
	v_xor_b32_e32 v10, 8, v157
	v_xor_b32_e32 v11, 16, v157
	v_xor_b32_e32 v12, 24, v157
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:332
	scratch_store_b32 off, v104, off offset:348
	v_or_b32_e32 v2, 0x80, v7
	v_xor_b32_e32 v13, 0x208, v157
	v_xor_b32_e32 v14, 0x218, v157
	v_xor_b32_e32 v15, 0x210, v157
	v_xor_b32_e32 v16, 0x410, v157
	v_dual_mov_b32 v145, 0 :: v_dual_add_nc_u32 v6, s33, v2
	v_xor_b32_e32 v17, 0x418, v157
	v_dual_mov_b32 v154, 0 :: v_dual_lshlrev_b32 v169, 2, v9
	v_xor_b32_e32 v9, 0x408, v157
	v_xor_b32_e32 v18, 0x618, v157
	v_xor_b32_e32 v19, 0x610, v157
	v_xor_b32_e32 v20, 0x608, v157
	v_cmp_eq_u32_e64 s4, 0, v21
	v_dual_mov_b32 v148, 0 :: v_dual_lshlrev_b32 v21, 3, v104
	v_or_b32_e32 v22, 0x3f0, v103
	v_or_b32_e32 v23, 0x7f0, v103
	v_dual_mov_b32 v249, 0 :: v_dual_lshlrev_b32 v24, 1, v106
	v_mad_u64_u32 v[139:140], null, s24, v2, s[20:21]
	v_mad_u64_u32 v[140:141], null, v8, s24, s[20:21]
	v_mad_u64_u32 v[141:142], null, v6, s24, s[20:21]
	v_xor_b32_e32 v170, 4, v169
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v171, 0, v105
	v_dual_mov_b32 v247, 0 :: v_dual_add_nc_u32 v158, v1, v3
	v_dual_mov_b32 v245, 0 :: v_dual_add_nc_u32 v172, 0, v10
	v_add_nc_u32_e32 v159, 0, v11
	v_dual_mov_b32 v243, 0 :: v_dual_add_nc_u32 v160, 0, v12
	v_dual_mov_b32 v252, 0 :: v_dual_add_nc_u32 v177, 0, v13
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v165, 0, v14
	v_dual_mov_b32 v241, 0 :: v_dual_add_nc_u32 v166, 0, v15
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v178, 0, v16
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v179, 0, v17
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v180, 0, v9
	v_dual_mov_b32 v254, 0 :: v_dual_add_nc_u32 v167, 0, v18
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v168, 0, v19
	v_dual_mov_b32 v250, 0 :: v_dual_add_nc_u32 v173, 0, v20
	v_dual_mov_b32 v248, 0 :: v_dual_add_nc_u32 v185, v5, v21
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v186, 0, v22
	v_dual_mov_b32 v246, 0 :: v_dual_add_nc_u32 v187, 0, v23
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v174, 0, v24
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v87, 0
	v_mov_b32_e32 v96, 0
	v_mov_b32_e32 v94, 0
	v_mov_b32_e32 v116, 0
	v_mov_b32_e32 v118, 0
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v102, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 1135 13                       ; ragged.py:1135:13
	s_mov_b32 s7, 0
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s22
	s_mov_b32 s11, s23
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v217, off offset:316
	scratch_store_b32 off, v216, off offset:312
	scratch_store_b32 off, v215, off offset:308
	scratch_store_b32 off, v214, off offset:304
	scratch_store_b32 off, v205, off offset:300
	scratch_store_b32 off, v204, off offset:296
	scratch_store_b32 off, v203, off offset:292
	scratch_store_b32 off, v202, off offset:288
	scratch_store_b32 off, v201, off offset:284
	scratch_store_b32 off, v200, off offset:280
	scratch_store_b32 off, v199, off offset:276
	scratch_store_b32 off, v198, off offset:272
	scratch_store_b32 off, v213, off offset:268
	scratch_store_b32 off, v212, off offset:264
	scratch_store_b32 off, v211, off offset:260
	scratch_store_b32 off, v210, off offset:256
	scratch_store_b32 off, v197, off offset:252
	scratch_store_b32 off, v196, off offset:248
	scratch_store_b32 off, v195, off offset:244
	scratch_store_b32 off, v188, off offset:240
	scratch_store_b32 off, v194, off offset:236
	scratch_store_b32 off, v193, off offset:232
	scratch_store_b32 off, v192, off offset:228
	scratch_store_b32 off, v183, off offset:224
	scratch_store_b32 off, v182, off offset:220
	scratch_store_b32 off, v181, off offset:216
	scratch_store_b32 off, v176, off offset:212
	scratch_store_b32 off, v175, off offset:208
	scratch_store_b32 off, v136, off offset:204
	scratch_store_b32 off, v135, off offset:200
	scratch_store_b32 off, v134, off offset:196
	scratch_store_b32 off, v133, off offset:192
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v132, off offset:188
	scratch_store_b32 off, v131, off offset:184
	scratch_store_b32 off, v130, off offset:180
	scratch_store_b32 off, v129, off offset:176
	scratch_store_b32 off, v191, off offset:172
	scratch_store_b32 off, v190, off offset:168
	scratch_store_b32 off, v189, off offset:164
	scratch_store_b32 off, v184, off offset:160
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
	scratch_store_b32 off, v107, off offset:108
	scratch_store_b32 off, v114, off offset:104
	scratch_store_b32 off, v113, off offset:100
	scratch_store_b32 off, v112, off offset:96
	scratch_store_b32 off, v97, off offset:92
	scratch_store_b32 off, v96, off offset:88
	scratch_store_b32 off, v95, off offset:84
	scratch_store_b32 off, v94, off offset:80
	scratch_store_b32 off, v119, off offset:76
	scratch_store_b32 off, v118, off offset:72
	scratch_store_b32 off, v117, off offset:68
	scratch_store_b32 off, v116, off offset:64
	s_clause 0xf                            ; 64-byte Folded Spill
	scratch_store_b32 off, v93, off offset:60
	scratch_store_b32 off, v92, off offset:56
	scratch_store_b32 off, v91, off offset:52
	scratch_store_b32 off, v90, off offset:48
	scratch_store_b32 off, v111, off offset:44
	scratch_store_b32 off, v110, off offset:40
	scratch_store_b32 off, v109, off offset:36
	scratch_store_b32 off, v108, off offset:32
	scratch_store_b32 off, v89, off offset:28
	scratch_store_b32 off, v88, off offset:24
	scratch_store_b32 off, v86, off offset:20
	scratch_store_b32 off, v85, off offset:16
	scratch_store_b32 off, v102, off offset:12
	scratch_store_b32 off, v101, off offset:8
	scratch_store_b32 off, v100, off offset:4
	scratch_store_b32 off, v87, off
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v150
	v_mov_b32_e32 v3, v150
	v_dual_mov_b32 v4, v150 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v5, v150
	v_dual_mov_b32 v6, v150 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v7, v150
	v_dual_mov_b32 v8, v150 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v10, v150 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v11, v150
	v_dual_mov_b32 v12, v150 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v13, v150
	v_dual_mov_b32 v14, v150 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v15, v150
	v_dual_mov_b32 v16, v150 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v18, v150 :: v_dual_mov_b32 v65, 0
	v_mov_b32_e32 v19, v150
	v_dual_mov_b32 v20, v150 :: v_dual_mov_b32 v73, 0
	v_mov_b32_e32 v21, v150
	v_dual_mov_b32 v22, v150 :: v_dual_mov_b32 v81, 0
	v_mov_b32_e32 v23, v150
	v_dual_mov_b32 v24, v150 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v26, v150 :: v_dual_mov_b32 v97, 0
	v_mov_b32_e32 v27, v150
	v_dual_mov_b32 v28, v150 :: v_dual_mov_b32 v105, 0
	v_mov_b32_e32 v29, v150
	v_dual_mov_b32 v30, v150 :: v_dual_mov_b32 v113, 0
	v_mov_b32_e32 v31, v150
	v_dual_mov_b32 v32, v150 :: v_dual_mov_b32 v121, 0
	v_mov_b32_e32 v34, v150
	v_mov_b32_e32 v35, v150
	v_mov_b32_e32 v36, v150
	v_mov_b32_e32 v37, v150
	v_mov_b32_e32 v38, v150
	v_mov_b32_e32 v39, v150
	v_mov_b32_e32 v40, v150
	v_mov_b32_e32 v42, v150
	v_mov_b32_e32 v43, v150
	v_mov_b32_e32 v44, v150
	v_mov_b32_e32 v45, v150
	v_mov_b32_e32 v46, v150
	v_mov_b32_e32 v47, v150
	v_mov_b32_e32 v48, v150
	v_mov_b32_e32 v50, v150
	v_mov_b32_e32 v51, v150
	v_mov_b32_e32 v52, v150
	v_mov_b32_e32 v53, v150
	v_mov_b32_e32 v54, v150
	v_mov_b32_e32 v55, v150
	v_mov_b32_e32 v56, v150
	v_mov_b32_e32 v58, v150
	v_mov_b32_e32 v59, v150
	v_mov_b32_e32 v60, v150
	v_mov_b32_e32 v61, v150
	v_mov_b32_e32 v62, v150
	v_mov_b32_e32 v63, v150
	v_mov_b32_e32 v64, v150
	v_mov_b32_e32 v66, v150
	v_mov_b32_e32 v67, v150
	v_mov_b32_e32 v68, v150
	v_mov_b32_e32 v69, v150
	v_mov_b32_e32 v70, v150
	v_mov_b32_e32 v71, v150
	v_mov_b32_e32 v72, v150
	v_mov_b32_e32 v74, v150
	v_mov_b32_e32 v75, v150
	v_mov_b32_e32 v76, v150
	v_mov_b32_e32 v77, v150
	v_mov_b32_e32 v78, v150
	v_mov_b32_e32 v79, v150
	v_mov_b32_e32 v80, v150
	v_mov_b32_e32 v82, v150
	v_mov_b32_e32 v83, v150
	v_mov_b32_e32 v84, v150
	v_mov_b32_e32 v85, v150
	v_mov_b32_e32 v86, v150
	v_mov_b32_e32 v87, v150
	v_mov_b32_e32 v88, v150
	v_mov_b32_e32 v90, v150
	v_mov_b32_e32 v91, v150
	v_mov_b32_e32 v92, v150
	v_mov_b32_e32 v93, v150
	v_mov_b32_e32 v94, v150
	v_mov_b32_e32 v95, v150
	v_mov_b32_e32 v96, v150
	v_mov_b32_e32 v98, v150
	v_mov_b32_e32 v99, v150
	v_mov_b32_e32 v100, v150
	v_mov_b32_e32 v101, v150
	v_mov_b32_e32 v102, v150
	v_mov_b32_e32 v103, v150
	v_mov_b32_e32 v104, v150
	v_mov_b32_e32 v106, v150
	v_mov_b32_e32 v107, v150
	v_mov_b32_e32 v108, v150
	v_mov_b32_e32 v109, v150
	v_mov_b32_e32 v110, v150
	v_mov_b32_e32 v111, v150
	v_mov_b32_e32 v112, v150
	v_mov_b32_e32 v114, v150
	v_mov_b32_e32 v115, v150
	v_mov_b32_e32 v116, v150
	v_mov_b32_e32 v117, v150
	v_mov_b32_e32 v118, v150
	v_mov_b32_e32 v119, v150
	v_mov_b32_e32 v120, v150
	v_mov_b32_e32 v122, v150
	v_mov_b32_e32 v123, v150
	v_mov_b32_e32 v124, v150
	v_mov_b32_e32 v125, v150
	v_mov_b32_e32 v126, v150
	v_mov_b32_e32 v127, v150
	v_mov_b32_e32 v128, v150
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s39, s7, 7
	s_mov_b32 s40, 0
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 28 is_stmt 0                ; ragged.py:0:28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	s_add_i32 s41, s40, s39
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_add_nc_u32_e32 v191, 0, v157
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s41, v152
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v130, v138, v129
	v_add_nc_u32_e32 v134, v139, v129
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1
	buffer_load_b128 v[130:133], v130, s[8:11], 0 offen
	buffer_load_b128 v[193:196], v134, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v136, v169, v130
	ds_bpermute_b32 v206, v170, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s41, v151
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_bpermute_b32 v199, v169, v131
	ds_bpermute_b32 v207, v170, v131
	ds_bpermute_b32 v205, v169, v133
	ds_bpermute_b32 v218, v170, v133
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[130:131], null, v130, s38, v[137:138]
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_bpermute_b32 v200, v169, v132
	ds_bpermute_b32 v217, v170, v132
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v219, v169, v193
	ds_bpermute_b32 v220, v169, v194
	ds_bpermute_b32 v214, v170, v193
	ds_bpermute_b32 v215, v170, v194
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v133, 0x80000000, v130, s2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v130, 1, v151
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_bpermute_b32 v208, v169, v195
	ds_bpermute_b32 v213, v169, v196
	ds_bpermute_b32 v225, v170, v195
	ds_bpermute_b32 v226, v170, v196
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s41, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[130:131], null, v130, s38, v[137:138]
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(5)
	v_cndmask_b32_e64 v183, v214, v219, s4
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v134, 0x80000000, v130, s2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v130, 2, v151
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v184, v215, v220, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s41, v130
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[130:131], null, v130, s38, v[137:138]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v135, 0x80000000, v130, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v130, 3, v151
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x2
	buffer_load_u8 v227, v134, s[20:23], 0 offen
	buffer_load_u8 v228, v135, s[20:23], 0 offen
	buffer_load_u8 v216, v133, s[20:23], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v134, v206, v136, s4
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s41, v130
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v135, v207, v199, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[130:131], null, v130, s38, v[137:138]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v132, 0x80000000, v130, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v130, 4, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s41, v130
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[130:131], null, v130, s38, v[137:138]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v182, 0x80000000, v130, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v130, 5, v151
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s41, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[130:131], null, v130, s38, v[137:138]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v175, 0x80000000, v130, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v130, 7, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s41, v130
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[130:131], null, v130, s38, v[137:138]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v181, 0x80000000, v130, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v130, 6, v151
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s41, v130
	.loc	1 1200 21                       ; ragged.py:1200:21
	s_add_i32 s41, s40, 32
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cmpk_lt_u32 s40, 0x60
	s_mov_b32 s40, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[130:131], null, v130, s38, v[137:138]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v130, 0x80000000, v130, s2
	s_clause 0x4
	buffer_load_u8 v176, v175, s[20:23], 0 offen
	buffer_load_u8 v175, v181, s[20:23], 0 offen
	buffer_load_u8 v181, v130, s[20:23], 0 offen
	buffer_load_u8 v188, v182, s[20:23], 0 offen
	buffer_load_u8 v182, v132, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v130.l, 8, v176.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v130.h, 8, v175.l
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v132.l, v188.l, v130.l
	v_lshlrev_b16 v130.l, 8, v227.l
	v_or_b16 v132.h, v181.l, v130.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v131.l, v216.l, v130.l
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v130.l, 8, v182.l
	v_or_b16 v131.h, v228.l, v130.l
	ds_store_b64 v158, v[131:132]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[130:131], v177
	ds_load_b64 v[189:190], v160
	.loc	1 1161 31 is_stmt 1             ; ragged.py:1161:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[134:135], v[130:131], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[183:184], v[130:131], v[89:96] neg_lo:[1,1,0]
	.loc	1 1155 34                       ; ragged.py:1155:34
	ds_load_b64 v[130:131], v178
	ds_load_b64 v[201:202], v179
	ds_load_b64 v[203:204], v166
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[97:104], v[134:135], v[130:131], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[183:184], v[130:131], v[105:112] neg_lo:[1,1,0]
	.loc	1 1155 34                       ; ragged.py:1155:34
	ds_load_2addr_stride64_b64 v[130:133], v191 offset1:1
	ds_load_2addr_stride64_b64 v[193:196], v191 offset0:2 offset1:3
	ds_load_b64 v[191:192], v167
	ds_load_b64 v[197:198], v168
	ds_load_b64 v[209:210], v173
	ds_load_b64 v[211:212], v180
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[134:135], v[191:192], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[134:135], v[130:131], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[183:184], v[130:131], v[73:80] neg_lo:[1,1,0]
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v130, v217, v200, s4
	v_cndmask_b32_e64 v131, v218, v205, s4
	v_cndmask_b32_e64 v134, v225, v208, s4
	v_cndmask_b32_e64 v135, v226, v213, s4
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[121:128], v[183:184], v[191:192], v[121:128] neg_lo:[1,1,0]
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v191, v208, v225, s4
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[81:88], v[130:131], v[132:133], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[130:131], v[201:202], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[134:135], v[132:133], v[89:96] neg_lo:[1,1,0]
	.loc	1 1155 34                       ; ragged.py:1155:34
	ds_load_b64 v[132:133], v172
	ds_load_b64 v[183:184], v159
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[130:131], v[197:198], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[134:135], v[201:202], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[134:135], v[197:198], v[121:128] neg_lo:[1,1,0]
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v192, v213, v226, s4
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[130:131], v[132:133], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[134:135], v[132:133], v[73:80] neg_lo:[1,1,0]
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v130, v136, v206, s4
	v_cndmask_b32_e64 v131, v199, v207, s4
	v_cndmask_b32_e64 v132, v219, v214, s4
	v_cndmask_b32_e64 v133, v220, v215, s4
	v_cndmask_b32_e64 v134, v200, v217, s4
	v_cndmask_b32_e64 v135, v205, v218, s4
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[130:131], v[183:184], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[130:131], v[209:210], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[132:133], v[183:184], v[73:80] neg_lo:[1,1,0]
	.loc	1 1155 34                       ; ragged.py:1155:34
	ds_load_b64 v[183:184], v165
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[97:104], v[130:131], v[193:194], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[132:133], v[209:210], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[132:133], v[193:194], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[134:135], v[195:196], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[134:135], v[189:190], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[134:135], v[211:212], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[191:192], v[195:196], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[191:192], v[189:190], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[191:192], v[211:212], v[105:112] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[130:131], v[183:184], v[81:88] neg_lo:[1,1,0]
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v130, v140, v129
	v_add_nc_u32_e32 v129, v141, v129
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[89:96], v[132:133], v[183:184], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[134:135], v[203:204], v[81:88] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1
	buffer_load_b128 v[133:136], v130, s[8:11], 0 offen
	buffer_load_b128 v[129:132], v129, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v185, v216
	ds_store_b8 v185, v227 offset:64
	ds_store_b8 v185, v228 offset:128
	ds_store_b8 v185, v182 offset:192
	ds_store_b8 v185, v188 offset:256
	ds_store_b8 v185, v176 offset:320
	ds_store_b8 v185, v181 offset:384
	ds_store_b8 v185, v175 offset:448
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v181, v171 offset:320
	ds_load_u8 v182, v171 offset:256
	ds_load_u8 v175, v171 offset:336
	ds_load_u8 v176, v171 offset:272
	ds_load_u8 v184, v171 offset:352
	ds_load_u8 v188, v171 offset:288
	ds_load_u8 v193, v171 offset:368
	ds_load_u8 v194, v171 offset:304
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[89:96], v[191:192], v[203:204], v[89:96] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	ds_load_u8 v182, v171 offset:448
	ds_load_u8 v183, v171 offset:384
	ds_load_u8 v189, v171 offset:464
	ds_load_u8 v190, v171 offset:400
	ds_load_u8 v191, v171 offset:480
	ds_load_u8 v192, v171 offset:416
	ds_load_u8 v195, v171 offset:496
	ds_load_u8 v196, v171 offset:432
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v171 offset:64
	ds_load_u8 v197, v171
	ds_load_u8 v198, v171 offset:16
	ds_load_u8 v199, v171 offset:80
	ds_load_u8 v200, v171 offset:32
	ds_load_u8 v201, v171 offset:96
	ds_load_u8 v202, v171 offset:112
	ds_load_u8 v203, v171 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v176, v190, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v190, v176, 16, v175
	v_perm_b32 v175, v188, v184, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v176, v192, v191, 0xc0c0004
	v_lshl_or_b32 v192, v176, 16, v175
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v197, v197, v183, 0xc0c0004
	ds_load_u8 v183, v171 offset:192
	ds_load_u8 v204, v171 offset:128
	ds_load_u8 v205, v171 offset:208
	ds_load_u8 v206, v171 offset:144
	ds_load_u8 v207, v171 offset:224
	ds_load_u8 v208, v171 offset:160
	ds_load_u8 v209, v171 offset:240
	ds_load_u8 v210, v171 offset:176
	v_perm_b32 v175, v194, v193, 0xc0c0004
	v_perm_b32 v176, v196, v195, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v194, v176, 16, v175
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v204, v204, v183, 0xc0c0004
	v_lshl_or_b32 v183, v182, 16, v181
	v_perm_b32 v181, v198, v199, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v189, v206, v205, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v184, v208, v207, 0xc0c0004
	v_lshl_or_b32 v182, v204, 16, v197
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v189, v189, 16, v181
	v_perm_b32 v181, v200, v201, 0xc0c0004
	v_lshl_or_b32 v191, v184, 16, v181
	v_perm_b32 v181, v203, v202, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v184, v210, v209, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v193, v184, 16, v181
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v175, v169, v133
	ds_bpermute_b32 v188, v169, v134
	ds_bpermute_b32 v133, v170, v133
	ds_bpermute_b32 v134, v170, v134
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v176, v169, v129
	ds_bpermute_b32 v181, v169, v130
	ds_bpermute_b32 v129, v170, v129
	ds_bpermute_b32 v130, v170, v130
	ds_bpermute_b32 v184, v169, v135
	ds_bpermute_b32 v199, v169, v132
	ds_bpermute_b32 v200, v170, v131
	ds_bpermute_b32 v201, v170, v132
	s_waitcnt lgkmcnt(9)
	v_cndmask_b32_e64 v195, v133, v175, s4
	s_waitcnt lgkmcnt(8)
	v_cndmask_b32_e64 v196, v134, v188, s4
	v_cndmask_b32_e64 v133, v175, v133, s4
	v_cndmask_b32_e64 v134, v188, v134, s4
	s_waitcnt lgkmcnt(5)
	v_cndmask_b32_e64 v197, v129, v176, s4
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v198, v130, v181, s4
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[195:196], v[182:183], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[195:196], v[189:190], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[195:196], v[191:192], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[195:196], v[193:194], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[197:198], v[182:183], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[197:198], v[189:190], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[197:198], v[191:192], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[197:198], v[193:194], v[57:64] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_bpermute_b32 v195, v169, v136
	ds_bpermute_b32 v196, v170, v135
	ds_bpermute_b32 v197, v170, v136
	ds_bpermute_b32 v198, v169, v131
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v131, v171 offset:832
	ds_load_u8 v132, v171 offset:768
	ds_load_u8 v135, v171 offset:848
	ds_load_u8 v136, v171 offset:784
	ds_load_u8 v182, v171 offset:864
	ds_load_u8 v183, v171 offset:800
	ds_load_u8 v189, v171 offset:880
	ds_load_u8 v190, v171 offset:816
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v129, v176, v129, s4
	v_cndmask_b32_e64 v130, v181, v130, s4
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v171 offset:960
	ds_load_u8 v191, v171 offset:896
	ds_load_u8 v192, v171 offset:976
	ds_load_u8 v193, v171 offset:912
	ds_load_u8 v194, v171 offset:992
	ds_load_u8 v202, v171 offset:928
	ds_load_u8 v203, v171 offset:1024
	ds_load_u8 v204, v171 offset:944
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v190, v190, v189, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v132, v191, v132, 0xc0c0004
	ds_load_u8 v191, v171 offset:576
	ds_load_u8 v205, v171 offset:512
	ds_load_u8 v206, v171 offset:592
	ds_load_u8 v207, v171 offset:528
	ds_load_u8 v208, v171 offset:608
	ds_load_u8 v209, v171 offset:544
	ds_load_u8 v210, v171 offset:624
	ds_load_u8 v211, v171 offset:560
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v136, v193, v192, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v183, v202, v194, 0xc0c0004
	v_lshl_or_b32 v132, v132, 16, v131
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v194, v201, v199, s4
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v136, v136, 16, v135
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v183, v183, 16, v182
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v191, v205, v191, 0xc0c0004
	ds_load_u8 v205, v171 offset:704
	ds_load_u8 v212, v171 offset:640
	ds_load_u8 v213, v171 offset:720
	ds_load_u8 v214, v171 offset:656
	ds_load_u8 v215, v171 offset:736
	ds_load_u8 v216, v171 offset:672
	ds_load_u8 v217, v171 offset:752
	ds_load_u8 v218, v171 offset:688
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v205, v212, v205, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v192, v214, v213, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v131, v205, 16, v191
	ds_load_u8 v189, v186
	ds_load_u8 v202, v187
	ds_load_u8 v205, v171 offset:2016
	v_perm_b32 v191, v207, v206, 0xc0c0004
	v_lshl_or_b32 v135, v192, 16, v191
	v_perm_b32 v191, v209, v208, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v192, v216, v215, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v182, v192, 16, v191
	v_perm_b32 v191, v211, v210, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v192, v218, v217, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v193, v204, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v189, v192, 16, v191
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v191, v196, v184, s4
	v_cndmask_b32_e64 v192, v197, v195, s4
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v190, v193, 16, v190
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v193, v200, v198, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[191:192], v[131:132], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[191:192], v[135:136], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[193:194], v[131:132], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[193:194], v[135:136], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[191:192], v[182:183], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[193:194], v[182:183], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[191:192], v[189:190], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[193:194], v[189:190], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v131, v171 offset:1280
	ds_load_u8 v132, v171 offset:1344
	ds_load_u8 v135, v171 offset:1360
	ds_load_u8 v182, v171 offset:1376
	ds_load_u8 v189, v171 offset:1392
	ds_load_u8 v190, v171 offset:1328
	ds_load_u8 v191, v171 offset:1264
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v131, v131, v132, 0xc0c0004
	ds_load_u8 v132, v171 offset:1408
	ds_load_u8 v136, v171 offset:1472
	ds_load_u8 v183, v171 offset:1488
	ds_load_u8 v192, v171 offset:1504
	ds_load_u8 v193, v171 offset:1520
	ds_load_u8 v194, v171 offset:1536
	ds_load_u8 v204, v171 offset:1456
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v132, v132, v136, 0xc0c0004
	ds_load_u8 v136, v171 offset:1088
	ds_load_u8 v206, v171 offset:1104
	ds_load_u8 v207, v171 offset:1120
	ds_load_u8 v208, v171 offset:1136
	ds_load_u8 v209, v171 offset:1072
	v_lshl_or_b32 v132, v132, 16, v131
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v190, v204, v193, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v190, v190, 16, v189
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v136, v203, v136, 0xc0c0004
	ds_load_u8 v203, v171 offset:1152
	ds_load_u8 v210, v171 offset:1216
	ds_load_u8 v211, v171 offset:1232
	ds_load_u8 v212, v171 offset:1248
	ds_load_u8 v213, v171 offset:1200
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v203, v203, v210, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v191, v213, v191, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v131, v203, 16, v136
	ds_load_u8 v136, v171 offset:1296
	ds_load_u8 v203, v171 offset:1312
	v_wmma_i32_16x16x16_iu4 v[1:8], v[133:134], v[131:132], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[129:130], v[131:132], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v171 offset:1424
	ds_load_u8 v210, v171 offset:1440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v182, v203, v182, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v136, v136, v183, 0xc0c0004
	ds_load_u8 v183, v171 offset:1040
	ds_load_u8 v214, v171 offset:1056
	v_lshl_or_b32 v136, v136, 16, v135
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v183, v183, v206, 0xc0c0004
	ds_load_u8 v206, v171 offset:1168
	ds_load_u8 v215, v171 offset:1184
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v206, v206, v211, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v203, v215, v212, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v135, v206, 16, v183
	v_perm_b32 v183, v210, v192, 0xc0c0004
	v_perm_b32 v192, v214, v207, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[133:134], v[135:136], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v183, v183, 16, v182
	v_lshl_or_b32 v182, v203, 16, v192
	v_perm_b32 v192, v209, v208, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[129:130], v[135:136], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[133:134], v[182:183], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v189, v191, 16, v192
	v_wmma_i32_16x16x16_iu4 v[41:48], v[129:130], v[182:183], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[133:134], v[189:190], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[129:130], v[189:190], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v129, v171 offset:1856
	ds_load_u8 v130, v171 offset:1792
	ds_load_u8 v135, v171 offset:1776
	ds_load_u8 v131, v171 offset:1872
	ds_load_u8 v133, v171 offset:1888
	ds_load_u8 v136, v171 offset:1904
	ds_load_u8 v175, v171 offset:1840
	ds_load_u8 v189, v171 offset:1664
	ds_load_u8 v190, v171 offset:1728
	ds_load_u8 v191, v171 offset:1744
	ds_load_u8 v192, v171 offset:1760
	ds_load_u8 v193, v171 offset:1712
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v171 offset:1920
	ds_load_u8 v132, v171 offset:1984
	ds_load_u8 v134, v171 offset:2000
	ds_load_u8 v176, v171 offset:1968
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v189, v189, v190, 0xc0c0004
	v_perm_b32 v136, v175, v136, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v135, v193, v135, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v130, v130, v132, 0xc0c0004
	ds_load_u8 v132, v171 offset:1600
	ds_load_u8 v181, v171 offset:1616
	ds_load_u8 v182, v171 offset:1632
	ds_load_u8 v183, v171 offset:1648
	ds_load_u8 v188, v171 offset:1584
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v175, v176, v202, 0xc0c0004
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v176, v195, v197, s4
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v130, v130, 16, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v136, v175, 16, v136
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v175, v184, v196, s4
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v132, v194, v132, 0xc0c0004
	v_lshl_or_b32 v129, v189, 16, v132
	ds_load_u8 v132, v171 offset:1808
	ds_load_u8 v189, v171 offset:1824
	v_wmma_i32_16x16x16_iu4 v[1:8], v[175:176], v[129:130], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v171 offset:1936
	ds_load_u8 v190, v171 offset:1952
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v133, v189, v133, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v132, v132, v134, 0xc0c0004
	ds_load_u8 v134, v171 offset:1552
	ds_load_u8 v194, v171 offset:1568
	v_lshl_or_b32 v132, v132, 16, v131
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v134, v134, v181, 0xc0c0004
	ds_load_u8 v181, v171 offset:1680
	ds_load_u8 v203, v171 offset:1696
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v181, v181, v191, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v131, v181, 16, v134
	v_perm_b32 v134, v190, v205, 0xc0c0004
	v_perm_b32 v181, v194, v182, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v182, v203, v192, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[175:176], v[131:132], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v134, v134, 16, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v133, v182, 16, v181
	v_perm_b32 v181, v188, v183, 0xc0c0004
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v182, v199, v201, s4
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[33:40], v[175:176], v[133:134], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v135, v135, 16, v181
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v181, v198, v200, s4
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[49:56], v[175:176], v[135:136], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[181:182], v[129:130], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[181:182], v[131:132], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[181:182], v[133:134], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[181:182], v[135:136], v[57:64] neg_lo:[1,1,0]
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_scc1 .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v196, v83
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v83, v36
	v_cvt_f32_i32_e32 v36, v55
	scratch_load_b32 v55, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v188, v73
	v_cvt_f32_i32_e32 v135, v74
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v74, v22
	v_cvt_f32_i32_e32 v73, v23
	v_cvt_f32_i32_e32 v23, v43
	v_cvt_f32_i32_e32 v22, v44
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:320
	scratch_load_b32 v44, off, off offset:324
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s39, s7, s6
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v193, v70
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s39, s39, s5
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v70, v6
	v_cvt_f32_i32_e32 v6, v30
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v194, v69
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v69, v7
	v_cvt_f32_i32_e32 v7, v31
	v_cvt_f32_i32_e32 v31, v40
	v_cvt_f32_i32_e32 v40, v51
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v191, v68
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v68, v8
	v_cvt_f32_i32_e32 v8, v32
	v_cvt_f32_i32_e32 v32, v39
	v_cvt_f32_i32_e32 v39, v52
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v197, v84
	v_cvt_f32_i32_e32 v199, v86
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v86, v33
	v_cvt_f32_i32_e32 v84, v35
	v_cvt_f32_i32_e32 v33, v38
	v_cvt_f32_i32_e32 v38, v53
	v_cvt_f32_i32_e32 v35, v56
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v184, v65
	v_cvt_f32_i32_e32 v189, v66
	v_cvt_f32_i32_e32 v190, v67
	v_cvt_f32_i32_e32 v182, v72
	v_cvt_f32_i32_e32 v192, v81
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
	v_cvt_f32_i32_e32 v198, v85
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v85, v34
	v_cvt_f32_i32_e32 v34, v37
	v_cvt_f32_i32_e32 v37, v54
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v201, v88
	v_cvt_f32_i32_e32 v176, v90
	v_cvt_f32_i32_e32 v136, v92
	v_cvt_f32_i32_e32 v90, v93
	v_cvt_f32_i32_e32 v88, v95
	v_cvt_f32_i32_e32 v207, v102
	v_cvt_f32_i32_e32 v102, v106
	v_cvt_f32_i32_e32 v95, v109
	v_cvt_f32_i32_e32 v93, v111
	v_cvt_f32_i32_e32 v92, v112
	v_cvt_f32_i32_e32 v109, v114
	v_cvt_f32_i32_e32 v111, v116
	v_cvt_f32_i32_e32 v112, v117
	v_cvt_f32_i32_e32 v114, v119
	v_cvt_f32_i32_e32 v106, v122
	v_cvt_f32_i32_e32 v181, v89
	v_cvt_f32_i32_e32 v89, v94
	v_cvt_f32_i32_e32 v94, v110
	v_cvt_f32_i32_e32 v110, v115
	v_cvt_f32_i32_e32 v205, v100
	v_cvt_f32_i32_e32 v100, v108
	v_cvt_f32_i32_e32 v108, v113
	v_cvt_f32_i32_e32 v113, v118
	v_cvt_f32_i32_e32 v195, v82
	v_cvt_f32_i32_e32 v202, v97
	v_cvt_f32_i32_e32 v203, v98
	v_cvt_f32_i32_e32 v204, v99
	v_cvt_f32_i32_e32 v206, v101
	v_cvt_f32_i32_e32 v208, v103
	v_cvt_f32_i32_e32 v103, v105
	v_cvt_f32_i32_e32 v101, v107
	v_cvt_f32_i32_e32 v107, v121
	v_cvt_f32_i32_e32 v105, v123
	v_cvt_f32_i32_e32 v183, v71
	v_cvt_f32_i32_e32 v209, v104
	v_cvt_f32_i32_e32 v104, v124
	v_cvt_f32_i32_e32 v200, v87
	v_cvt_f32_i32_e32 v134, v75
	v_cvt_f32_i32_e32 v115, v120
	v_cvt_f32_i32_e32 v133, v76
	v_cvt_f32_i32_e32 v130, v79
	v_cvt_f32_i32_e32 v132, v77
	v_cvt_f32_i32_e32 v129, v80
	v_cvt_f32_i32_e32 v131, v78
	v_cvt_f32_i32_e32 v87, v96
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v78, v2
	v_cvt_f32_i32_e32 v77, v3
	v_cvt_f32_i32_e32 v76, v4
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v99, v125
	v_cvt_f32_i32_e32 v98, v126
	v_cvt_f32_i32_e32 v97, v127
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v82, v17
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v96, v128
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v80, v19
	v_cvt_f32_i32_e32 v79, v20
	v_cvt_f32_i32_e32 v4, v16
	v_cvt_f32_i32_e32 v16, v27
	v_cvt_f32_i32_e32 v71, v5
	v_cvt_f32_i32_e32 v2, v14
	v_cvt_f32_i32_e32 v14, v28
	v_cvt_f32_i32_e32 v5, v29
	v_cvt_f32_i32_e32 v29, v57
	v_cvt_f32_i32_e32 v17, v26
	v_cvt_f32_i32_e32 v75, v21
	v_cvt_f32_i32_e32 v28, v58
	v_cvt_f32_i32_e32 v20, v63
	v_cvt_f32_i32_e32 v27, v59
	v_cvt_f32_i32_e32 v26, v60
	v_cvt_f32_i32_e32 v3, v15
	v_cvt_f32_i32_e32 v15, v61
	v_cvt_f32_i32_e32 v19, v62
	v_cvt_f32_i32_e32 v21, v64
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v30, v55, s39, 1
	buffer_load_u16 v30, v30, s[12:15], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v43, s7, v43, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v44, s7, v44, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	v_cndmask_b32_e64 v44, 0x80000000, v44, s0
	buffer_load_u16 v51, v44, s[24:27], 0 offen
	scratch_load_b32 v44, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v43, v43, s[24:27], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v51, 16, v51
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v44, s7, v44, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v6, v6, v51
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v44, 0x80000000, v44, s1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v8, v51
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v52, v44, s[24:27], 0 offen
	scratch_load_b32 v44, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v52, 16, v52
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s7, v44, 1
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s7, s7, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s7, s36
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v31, v52, v31
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v44, 0x80000000, v44, s3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v34, v52, v34
	v_mul_f32_e32 v32, v52, v32
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v53, v44, s[24:27], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v56, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v7, v7, v51
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v56, v30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v210, off, off offset:256
	scratch_load_b32 v211, off, off offset:260
	scratch_load_b32 v213, off, off offset:268
	scratch_load_b32 v214, off, off offset:304
	scratch_load_b32 v212, off, off offset:264
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
	v_mul_f32_e32 v54, v30, v184
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v184, off, off offset:160
	scratch_load_b32 v118, off, off offset:72
	scratch_load_b32 v121, off, off offset:128
	scratch_load_b32 v123, off, off offset:136
	scratch_load_b32 v215, off, off offset:308
	scratch_load_b32 v217, off, off offset:316
	scratch_load_b32 v216, off, off offset:312
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v53, v39
	v_mul_f32_e32 v42, v53, v42
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v40, v53, v40 :: v_dual_fmac_f32 v233, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v30, v189
	scratch_load_b32 v189, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v234, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v30, v190
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v190, off, off offset:168
	scratch_load_b32 v124, off, off offset:140
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v236, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v30, v191
	scratch_load_b32 v191, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v235, v54, v46 :: v_dual_mul_f32 v54, v51, v192
	scratch_load_b32 v192, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v30, v10
	v_mul_f32_e32 v3, v3, v30
	v_mul_f32_e32 v4, v4, v30
	v_mul_f32_e32 v2, v2, v30
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(20)
	v_fmac_f32_e32 v210, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v195
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(19)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v211, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v196
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(18)
	v_fmac_f32_e32 v213, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v197
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(16)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v212, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v202
	scratch_load_b32 v202, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(12)
	v_fmac_f32_e32 v184, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v203
	scratch_load_b32 v203, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v189, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v204
	scratch_load_b32 v204, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v191, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v205
	scratch_load_b32 v205, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v190, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v53, v108
	scratch_load_b32 v108, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v116, v54, v43 :: v_dual_mul_f32 v43, v53, v109
	scratch_load_b32 v109, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v54, v188, v30 :: v_dual_fmac_f32 v117, v43, v44
	v_mul_f32_e32 v43, v53, v110
	scratch_load_b32 v110, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v119, v43, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v111
	scratch_load_b32 v111, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v118, v43, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v30, v194
	scratch_load_b32 v194, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v214, v43, v47 :: v_dual_mul_f32 v43, v30, v193
	scratch_load_b32 v193, off, off offset:232 ; 4-byte Folded Reload
	v_fmac_f32_e32 v215, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v30, v183
	scratch_load_b32 v183, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v216, v43, v49 :: v_dual_mul_f32 v43, v30, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v217, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v198
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v183, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v199
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v192, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v200
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v193, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v201
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v194, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v206
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v121, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v122, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v208
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v123, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v124, v43, v50 :: v_dual_mul_f32 v43, v53, v112
	scratch_load_b32 v112, off, off offset:96 ; 4-byte Folded Reload
	v_dual_fmac_f32 v108, v43, v47 :: v_dual_mul_f32 v43, v53, v113
	v_fmac_f32_e32 v109, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v114
	scratch_load_b32 v114, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v110, v43, v49 :: v_dual_mul_f32 v43, v53, v115
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v111, v43, v50
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[43:46], v174 offset:512
	ds_load_b128 v[47:50], v174 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v142, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v30, v135
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v135, off, off offset:200
	scratch_load_b32 v113, off, off offset:100
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v202, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v30, v134
	scratch_load_b32 v134, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v203, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v30, v133
	scratch_load_b32 v133, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v204, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v181, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v253, v54, v43 :: v_dual_mul_f32 v54, v51, v176
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v133, v54, v44 :: v_dual_mul_f32 v54, v51, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v134, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v136
	scratch_load_b32 v136, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v135, v54, v46 :: v_dual_mul_f32 v54, v103, v52
	v_fmac_f32_e32 v248, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v102
	scratch_load_b32 v102, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v112, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v101
	scratch_load_b32 v101, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v113, v54, v45 :: v_dual_mul_f32 v54, v52, v100
	scratch_load_b32 v100, off, off offset:4 ; 4-byte Folded Reload
	v_fmac_f32_e32 v114, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v107, v53
	scratch_load_b32 v107, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v244, v54, v43 :: v_dual_mul_f32 v43, v53, v106
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v30, v91
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v100, v43, v44 :: v_dual_mul_f32 v43, v53, v105
	v_fmac_f32_e32 v101, v43, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v102, v43, v46 :: v_dual_mul_f32 v43, v30, v132
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v205, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v131, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v143, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v130, v30
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v144, v43, v49 :: v_dual_mul_f32 v43, v129, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v254, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v90
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v136, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v89, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v251, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v88, v51
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v250, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v87, v51
	scratch_load_b32 v87, off, off          ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v249, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v95
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v107, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v94, v52
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v247, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v93, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v246, v43, v49 :: v_dual_mul_f32 v43, v92, v52
	v_fmac_f32_e32 v245, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v99
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v98, v53
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v243, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v97, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v242, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v96, v53
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v241, v43, v50
	v_add_nc_u32_e32 v43, s33, v55
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v43, v43, s39, 1
	buffer_load_u16 v43, v43, s[12:15], 0 offen
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
	scratch_load_b32 v201, off, off offset:284
	scratch_load_b32 v200, off, off offset:280
	scratch_load_b32 v199, off, off offset:276
	scratch_load_b32 v198, off, off offset:272
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
	scratch_load_b32 v93, off, off offset:60
	scratch_load_b32 v92, off, off offset:56
	scratch_load_b32 v91, off, off offset:52
	scratch_load_b32 v90, off, off offset:48
	scratch_load_b32 v89, off, off offset:28
	scratch_load_b32 v88, off, off offset:24
	scratch_load_b32 v197, off, off offset:252
	scratch_load_b32 v196, off, off offset:248
	scratch_load_b32 v195, off, off offset:244
	scratch_load_b32 v188, off, off offset:240
	scratch_load_b32 v182, off, off offset:220
	scratch_load_b32 v181, off, off offset:216
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v175, off, off offset:208
	scratch_load_b32 v176, off, off offset:212
	ds_load_b128 v[43:46], v174
	ds_load_b128 v[47:50], v174 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v33, v52, v33 :: v_dual_fmac_f32 v240, v54, v43
	v_mul_f32_e32 v54, v30, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v239, v54, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v30, v77
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v237, v54, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v30, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v238, v54, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v51, v82
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(33)
	v_dual_fmac_f32 v201, v54, v43 :: v_dual_mul_f32 v54, v51, v81
	s_waitcnt vmcnt(32)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v200, v54, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v51, v80
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(23) lgkmcnt(0)
	v_dual_fmac_f32 v128, v34, v47 :: v_dual_fmac_f32 v125, v32, v49
	s_waitcnt vmcnt(22)
	v_dual_fmac_f32 v126, v31, v50 :: v_dual_fmac_f32 v199, v54, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v54, v51, v79 :: v_dual_mul_f32 v31, v53, v38
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(19)
	v_dual_fmac_f32 v94, v39, v46 :: v_dual_mul_f32 v39, v30, v71
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v41, v53, v41 :: v_dual_fmac_f32 v198, v54, v46
	v_mul_f32_e32 v54, v52, v86
	scratch_load_b32 v86, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(14)
	v_fmac_f32_e32 v93, v31, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v31, v53, v37 :: v_dual_fmac_f32 v232, v39, v47
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v132, v54, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v52, v85
	scratch_load_b32 v85, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v39, v30, v70 :: v_dual_fmac_f32 v92, v31, v48
	v_mul_f32_e32 v31, v53, v36
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v131, v54, v44
	v_fmac_f32_e32 v127, v33, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v231, v39, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v54, v52, v84 :: v_dual_fmac_f32 v91, v31, v49
	v_mul_f32_e32 v31, v53, v35
	v_mul_f32_e32 v39, v30, v69
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v97, v42, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v129, v54, v45 :: v_dual_fmac_f32 v96, v41, v44
	s_waitcnt vmcnt(12)
	v_fmac_f32_e32 v90, v31, v50
	v_fmac_f32_e32 v229, v39, v49
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[31:34], v174 offset:512
	ds_load_b128 v[35:38], v174 offset:528
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v39, v30, v68 :: v_dual_mul_f32 v54, v52, v83
	v_mul_f32_e32 v1, v30, v1
	v_mul_f32_e32 v5, v51, v5
	v_mul_f32_e32 v9, v52, v9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v95, v40, v45 :: v_dual_fmac_f32 v130, v54, v46
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v222, v10, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v18, v51
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v162, v4, v38
	v_dual_fmac_f32 v156, v6, v36 :: v_dual_fmac_f32 v163, v3, v37
	v_fmac_f32_e32 v98, v9, v35
	v_dual_fmac_f32 v161, v10, v31 :: v_dual_mul_f32 v10, v51, v17
	v_fmac_f32_e32 v230, v39, v50
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v39, v51, v75 :: v_dual_fmac_f32 v164, v2, v36
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v176, v5, v35
	v_fmac_f32_e32 v182, v10, v32
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v51, v16
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v197, v39, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v39, v51, v74 :: v_dual_mul_f32 v16, v21, v53
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v155, v7, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v181, v10, v33 :: v_dual_mul_f32 v10, v51, v14
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v20, v53
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v154, v8, v38
	v_fmac_f32_e32 v252, v16, v38
	v_dual_fmac_f32 v175, v10, v34 :: v_dual_mul_f32 v10, v25, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v255, v14, v37
	v_dual_fmac_f32 v153, v10, v31 :: v_dual_mul_f32 v10, v52, v24
	v_fmac_f32_e32 v196, v39, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v39, v51, v73 :: v_dual_fmac_f32 v120, v10, v32
	v_dual_mul_f32 v10, v52, v23 :: v_dual_fmac_f32 v195, v39, v49
	v_mul_f32_e32 v39, v51, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v115, v10, v33 :: v_dual_mul_f32 v10, v52, v22
	v_dual_fmac_f32 v99, v10, v34 :: v_dual_mul_f32 v10, v29, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v0, v10, v31
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v53, v28
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v188, v39, v50
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v67, v30
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v89, v10, v32 :: v_dual_mul_f32 v10, v53, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v149, v39, v31
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v30, v66
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v88, v10, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v53, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v224, v39, v32 :: v_dual_mul_f32 v39, v30, v65
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v223, v39, v33 :: v_dual_fmac_f32 v86, v10, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v11, v52
	v_mul_f32_e32 v11, v12, v52
	v_dual_mul_f32 v12, v13, v52 :: v_dual_mul_f32 v13, v19, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v15, v53, v15 :: v_dual_fmac_f32 v148, v10, v36
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v221, v1, v35 :: v_dual_fmac_f32 v146, v12, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v147, v11, v37
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v85, v15, v35
	v_fmac_f32_e32 v145, v13, v36
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v103, off, off offset:344
	scratch_load_b32 v104, off, off offset:348
	scratch_load_b32 v105, off, off offset:352
	scratch_load_b32 v106, off, off offset:356
	scratch_load_b32 v4, off, off offset:360
	v_mov_b32_e32 v3, v137
.LBB0_9:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v5, 0xbfb8aa3b, v237 :: v_dual_mul_f32 v2, 0xbfb8aa3b, v163
	v_dual_mul_f32 v1, 0xbfb8aa3b, v149 :: v_dual_mul_f32 v8, 0xbfb8aa3b, v239
	v_dual_mul_f32 v9, 0xbfb8aa3b, v240 :: v_dual_mul_f32 v6, 0xbfb8aa3b, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_mul_f32_e32 v30, 0xbfb8aa3b, v222
	v_mul_f32_e32 v37, 0xbfb8aa3b, v198
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v6
	v_cndmask_b32_e64 v6, 0, 0x42800000, s0
	v_mul_f32_e32 v1, 0xbfb8aa3b, v164
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v14, 0, 0x42800000, s1
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v163
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v11, 0xbfb8aa3b, v149 :: v_dual_fmac_f32 v14, 0xbfb8aa3b, v162
	v_exp_f32_e32 v15, v6
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v7, 0xbfb8aa3b, v238
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v11, v11
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v14, v14
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v164
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s1
	v_dual_mul_f32 v39, 0xbfb8aa3b, v200 :: v_dual_mul_f32 v34, 0xbfb8aa3b, v195
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v12, v15, v12
	v_exp_f32_e32 v2, v2
	v_mul_f32_e32 v15, 0xbfb8aa3b, v154
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v10, v11, v10
	v_mul_f32_e32 v11, 0xbfb8aa3b, v161
	v_ldexp_f32 v13, v14, v13
	v_mul_f32_e32 v14, 0xbfb8aa3b, v155
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v15
	v_mul_f32_e32 v51, 0xbfb8aa3b, v197
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_dual_mul_f32 v41, 0xbfb8aa3b, v175 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v146
	v_ldexp_f32 v16, v2, v1
	v_mul_f32_e32 v2, 0xbfb8aa3b, v156
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v14
	v_cndmask_b32_e64 v19, 0, 0x42800000, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v40, 0xbfb8aa3b, v196 :: v_dual_fmac_f32 v11, 0xbfb8aa3b, v161
	v_cndmask_b32_e64 v17, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v19, 0xbfb8aa3b, v154 :: v_dual_mul_f32 v42, 0xbfb8aa3b, v129
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v47, 0xbfb8aa3b, v201
	v_exp_f32_e32 v11, v11
	v_dual_fmac_f32 v17, 0xbfb8aa3b, v155 :: v_dual_mul_f32 v38, 0xbfb8aa3b, v176
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v156
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v17, v17
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s0
	v_exp_f32_e32 v14, v14
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s1
	v_ldexp_f32 v11, v11, v1
	v_dual_mul_f32 v1, 0xbfb8aa3b, v153 :: v_dual_mul_f32 v50, 0xbfb8aa3b, v131
	v_mul_f32_e32 v44, 0xbfb8aa3b, v125
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v20
	v_mul_f32_e32 v53, 0xbfb8aa3b, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_ldexp_f32 v15, v17, v15
	v_ldexp_f32 v14, v14, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v148
	v_ldexp_f32 v17, v19, v18
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v19, 0xbfb8aa3b, v147
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_mul_f32_e32 v45, 0xbfb8aa3b, v182
	v_cndmask_b32_e64 v25, 0, 0x42800000, s1
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v153
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v60, 0xbfb8aa3b, v115
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v18, v18
	v_cndmask_b32_e64 v22, 0, 0x42800000, s0
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v148
	v_mul_f32_e32 v49, 0xbfb8aa3b, v130
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s0
	v_dual_fmac_f32 v25, 0xbfb8aa3b, v146 :: v_dual_mul_f32 v56, 0xbfb8aa3b, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v19, v19
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v147
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s1
	v_ldexp_f32 v18, v18, v1
	v_exp_f32_e32 v25, v25
	v_mul_f32_e32 v61, 0xbfb8aa3b, v120
	v_exp_f32_e32 v22, v22
	v_mul_f32_e32 v27, 0xbfb8aa3b, v95
	v_dual_mul_f32 v57, 0xbfb8aa3b, v96 :: v_dual_add_f32 v10, 1.0, v10
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v19, v19, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v145
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_dual_add_f32 v16, 1.0, v16 :: v_dual_add_f32 v17, 1.0, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v62, v25, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v10, v10, v149
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_ldexp_f32 v32, v22, v20
	v_mul_f32_e32 v20, 0xbfb8aa3b, v255
	v_mul_f32_e32 v22, 0xbfb8aa3b, v252
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0x42800000, s0
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v145
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0x42800000, s0
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s0
	v_exp_f32_e32 v66, v48
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v25, 0xbfb8aa3b, v91
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v252
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v0
	v_mul_f32_e32 v48, 0xbfb8aa3b, v93
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v81, null, v11, v11, v161
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v2, v2
	v_exp_f32_e32 v69, v22
	v_ldexp_f32 v63, v66, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v67, v71, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v255
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_add_f32 v63, 1.0, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v66, v71
	v_div_scale_f32 v72, vcc_lo, v149, v10, v149
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v70, v2, v1
	v_mul_f32_e32 v1, 0xbfb8aa3b, v85
	v_exp_f32_e32 v68, v20
	v_mul_f32_e32 v2, 0xbfb8aa3b, v86
	v_ldexp_f32 v65, v69, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v12, v12, v163
	v_mul_f32_e32 v74, v72, v71
	v_div_scale_f32 v78, s1, v163, v12, v163
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v73, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v20, 0xbfb8aa3b, v88 :: v_dual_add_f32 v15, 1.0, v15
	v_ldexp_f32 v64, v68, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v16, v16, v164
	v_fma_f32 v76, -v67, v74, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v22, 0xbfb8aa3b, v89 :: v_dual_add_f32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v66, v68
	v_fma_f32 v77, -v69, v73, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v74, v76, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	v_dual_add_f32 v18, 1.0, v18 :: v_dual_add_f32 v65, 1.0, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v77, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v67, -v67, v74, v72
	v_div_scale_f32 v77, null, v13, v13, v162
	v_fma_f32 v75, -v68, v66, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v80, v78, v73
	v_div_fmas_f32 v67, v67, v71, v74
	v_rcp_f32_e32 v71, v81
	v_rcp_f32_e32 v79, v77
	v_fmac_f32_e32 v66, v75, v66
	v_div_scale_f32 v75, s0, v164, v16, v164
	v_div_fixup_f32 v10, v67, v10, v149
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v84, null, v65, v65, v252
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v76, v75, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v6, 0xbfb8aa3b, v232 :: v_dual_mul_f32 v35, 0xbfb8aa3b, v223
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v77, v79, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v68, v76, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v28, 0xbfb8aa3b, v231 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v221
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v79, v74, v79
	v_div_scale_f32 v74, s0, v161, v11, v161
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v76, v72, v66
	v_fma_f32 v72, -v69, v80, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v21, 0xbfb8aa3b, v230 :: v_dual_mul_f32 v24, 0xbfb8aa3b, v229
	v_dual_mul_f32 v36, 0xbfb8aa3b, v224 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v199
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v68, v76, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v80, v72, v73
	v_div_scale_f32 v68, s3, v162, v13, v162
	v_fma_f32 v72, -v81, v71, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v62, 1.0, v62 :: v_dual_mul_f32 v33, 0xbfb8aa3b, v188
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v46, 0xbfb8aa3b, v181 :: v_dual_mul_f32 v59, 0xbfb8aa3b, v132
	v_mul_f32_e32 v52, 0xbfb8aa3b, v127
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v72, v71
	v_div_fmas_f32 v66, v67, v66, v76
	v_fma_f32 v67, -v69, v80, v78
	v_mul_f32_e32 v69, v68, v79
	v_div_scale_f32 v72, null, v14, v14, v156
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v76, v74, v71
	v_div_fmas_f32 v67, v67, v73, v80
	v_rcp_f32_e32 v73, v72
	v_fma_f32 v75, -v77, v69, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v78, null, v15, v15, v155
	v_div_fixup_f32 v16, v66, v16, v164
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v69, v75, v79
	v_div_fixup_f32 v12, v67, v12, v163
	v_fma_f32 v66, -v81, v76, v74
	v_rcp_f32_e32 v67, v78
	v_fma_f32 v75, -v72, v73, 1.0
	v_fma_f32 v68, -v77, v69, v68
	v_div_scale_f32 v77, null, v17, v17, v154
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v76, v66, v71 :: v_dual_fmac_f32 v73, v75, v73
	v_div_scale_f32 v66, s1, v156, v14, v156
	v_rcp_f32_e32 v75, v77
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v80, -v78, v67, 1.0
	v_div_fmas_f32 v68, v68, v79, v69
	v_fma_f32 v69, -v81, v76, v74
	v_mul_f32_e32 v74, v66, v73
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v67, v80, v67
	v_div_scale_f32 v79, s3, v155, v15, v155
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v80, -v77, v75, 1.0
	v_div_fmas_f32 v69, v69, v71, v76
	v_fma_f32 v71, -v72, v74, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v79, v67
	v_fmac_f32_e32 v75, v80, v75
	v_div_scale_f32 v82, s0, v154, v17, v154
	v_fmac_f32_e32 v74, v71, v73
	v_div_scale_f32 v71, null, v19, v19, v148
	v_div_scale_f32 v81, null, v18, v18, v153
	v_div_fixup_f32 v13, v68, v13, v162
	v_div_fixup_f32 v11, v69, v11, v161
	v_fma_f32 v68, -v78, v76, v79
	v_mul_f32_e32 v69, v82, v75
	v_fma_f32 v66, -v72, v74, v66
	v_rcp_f32_e32 v72, v71
	v_rcp_f32_e32 v80, v81
	v_fmac_f32_e32 v76, v68, v67
	v_fma_f32 v68, -v77, v69, v82
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v43, 0xbfb8aa3b, v126 :: v_dual_mul_f32 v58, 0xbfb8aa3b, v97
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v66, v66, v73, v74
	v_fma_f32 v73, -v78, v76, v79
	v_fmac_f32_e32 v69, v68, v75
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v74, -v71, v72, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v83, -v81, v80, 1.0
	v_div_fmas_f32 v67, v73, v67, v76
	v_fma_f32 v73, -v77, v69, v82
	v_fmac_f32_e32 v72, v74, v72
	v_div_scale_f32 v74, null, v32, v32, v147
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v77, s1, v148, v19, v148
	v_div_fmas_f32 v69, v73, v75, v69
	v_rcp_f32_e32 v73, v74
	v_fmac_f32_e32 v80, v83, v80
	v_div_scale_f32 v83, s4, v153, v18, v153
	v_mul_f32_e32 v75, v77, v72
	v_div_fixup_f32 v14, v66, v14, v156
	v_div_fixup_f32 v66, v67, v15, v155
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v68, v83, v80
	v_div_fixup_f32 v67, v69, v17, v154
	v_fma_f32 v17, -v71, v75, v77
	v_div_scale_f32 v69, null, v62, v62, v146
	v_fma_f32 v76, -v81, v68, v83
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v75, v17, v72
	v_div_scale_f32 v17, s0, v147, v32, v147
	v_fmac_f32_e32 v68, v76, v80
	v_fma_f32 v76, -v74, v73, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v55, 0xbfb8aa3b, v99 :: v_dual_mul_f32 v54, 0xbfb8aa3b, v94
	v_dual_mul_f32 v23, 0xbfb8aa3b, v90 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v15, -v81, v68, v83
	v_fmac_f32_e32 v73, v76, v73
	v_div_scale_f32 v76, null, v70, v70, v0
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp4:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v15, v15, v80, v68
	v_rcp_f32_e32 v68, v69
	s_mov_b32 vcc_lo, s1
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp6:
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s13, s17, 0xffff
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v78, v15, v18, v153
	v_fma_f32 v15, -v71, v75, v77
	v_rcp_f32_e32 v77, v76
	v_mul_f32_e32 v18, v17, v73
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_fma_f32 v71, -v69, v68, 1.0
	v_div_fmas_f32 v15, v15, v72, v75
	v_fma_f32 v72, -v74, v18, v17
	v_div_scale_f32 v75, s1, v146, v62, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v68, v71, v68
	v_div_scale_f32 v71, null, v63, v63, v145
	v_fma_f32 v79, -v76, v77, 1.0
	v_div_fixup_f32 v80, v15, v19, v148
	v_fmac_f32_e32 v18, v72, v73
	v_rcp_f32_e32 v15, v71
	v_mul_f32_e32 v19, v75, v68
	v_fmac_f32_e32 v77, v79, v77
	v_div_scale_f32 v79, null, v64, v64, v255
	v_div_scale_f32 v72, s3, v0, v70, v0
	v_fma_f32 v17, -v74, v18, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v83, v79
	v_fma_f32 v74, -v69, v19, v75
	v_mul_f32_e32 v81, v72, v77
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v82, -v71, v15, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v17, v17, v73, v18
	v_fmac_f32_e32 v19, v74, v68
	v_fma_f32 v18, -v76, v81, v72
	v_fmac_f32_e32 v15, v82, v15
	v_rcp_f32_e32 v73, v84
	v_div_scale_f32 v74, s0, v145, v63, v145
	v_fma_f32 v82, -v79, v83, 1.0
	v_div_fixup_f32 v32, v17, v32, v147
	v_fma_f32 v17, -v69, v19, v75
	v_fmac_f32_e32 v81, v18, v77
	v_mul_f32_e32 v18, v74, v15
	v_fmac_f32_e32 v83, v82, v83
	v_div_scale_f32 v69, s4, v255, v64, v255
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v75, -v84, v73, 1.0
	v_div_fmas_f32 v17, v17, v68, v19
	v_fma_f32 v19, -v76, v81, v72
	v_fma_f32 v68, -v71, v18, v74
	v_mul_f32_e32 v72, v69, v83
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v73, v75, v73
	v_div_scale_f32 v75, s1, v252, v65, v252
	v_div_fmas_f32 v19, v19, v77, v81
	v_div_fixup_f32 v62, v17, v62, v146
	v_fmac_f32_e32 v18, v68, v15
	v_fma_f32 v17, -v79, v72, v69
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v75, v73
	v_div_fixup_f32 v0, v19, v70, v0
	v_fma_f32 v9, -v71, v18, v74
	v_fmac_f32_e32 v72, v17, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v17, -v84, v68, v75
	v_div_fmas_f32 v9, v9, v15, v18
	v_fma_f32 v15, -v79, v72, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v240
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v68, v17, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v15, v15, v83, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v18, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v17, -v84, v68, v75
	v_div_fixup_f32 v63, v9, v63, v145
	v_div_fixup_f32 v64, v15, v64, v255
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v8, v17, v73, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v142, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v7, v18, v70
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v239
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v65, v8, v65, v252
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v7, v15
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v17, v254, v13 :: v_dual_fmac_f32 v10, 0xbfb8aa3b, v238
	v_mul_f32_e32 v13, v250, v66
	v_mul_f32_e32 v15, v253, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v11, v248, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v10, v10
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_ldexp_f32 v5, v7, v9
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v143, v16
	v_mul_f32_e32 v16, v144, v12
	v_dual_mul_f32 v12, v249, v67 :: v_dual_add_f32 v67, 1.0, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v237
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v245, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v10, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v67, v67, v239
	v_rcp_f32_e32 v74, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v71, v74, 1.0
	v_fmac_f32_e32 v74, v77, v74
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v5, v7
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v7, v244, v0 :: v_dual_mul_f32 v0, v243, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v63, v5, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v5, v242, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v68, v68, v240
	v_div_scale_f32 v73, vcc_lo, v240, v68, v240
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v69
	v_fma_f32 v8, -v69, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v8, v70
	v_mul_f32_e32 v76, v73, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v69, v76, v73
	v_fmac_f32_e32 v76, v62, v70
	v_div_scale_f32 v62, s0, v239, v67, v239
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v64, -v69, v76, v73
	v_div_scale_f32 v73, null, v63, v63, v237
	v_mul_f32_e32 v69, v62, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v64, v64, v70, v76
	v_rcp_f32_e32 v70, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v71, v69, v62
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v6, v241, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v64, v64, v68, v240
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v76, v74
	v_div_scale_f32 v75, null, v72, v72, v238
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v68, -v73, v70, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v14, v251, v14 :: v_dual_fmac_f32 v79, 0xbfb8aa3b, v232
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v71, v69, v62
	v_div_scale_f32 v71, s3, v237, v63, v237
	v_fmac_f32_e32 v70, v68, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v246, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v32, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_exp_f32_e32 v28, v79
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v75, v32, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v231
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v28, v28, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v66, v32
	v_div_scale_f32 v66, s1, v238, v72, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v77, v66, v32
	v_fma_f32 v65, -v75, v77, v66
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v77, v65, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v62, v62, v74, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_exp_f32_e32 v24, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v69, v71, v70 :: v_dual_add_f32 v68, 1.0, v28
	v_fma_f32 v66, -v75, v77, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v73, v69, v71
	v_div_scale_f32 v76, null, v68, v68, v232
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v24, v24, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v10, v247, v80 :: v_dual_fmac_f32 v69, v28, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v32, v66, v32, v77
	v_rcp_f32_e32 v65, v76
	v_div_fixup_f32 v28, v62, v67, v239
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v24, v32, v72, v238
	v_fma_f32 v32, -v73, v69, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v229
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v62, v62, v231
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v76, v65, 1.0
	v_div_fmas_f32 v32, v32, v70, v69
	v_rcp_f32_e32 v69, v67
	v_div_scale_f32 v70, s0, v232, v68, v232
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v65, v71, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v75
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v21, v32, v63, v237
	v_mul_f32_e32 v71, v70, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v67, v69, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v76, v71, v70
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v69, v72, v69
	v_div_scale_f32 v72, s1, v231, v62, v231
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v71, v73, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v66, v74
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v230
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v73, v72, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v21, v236, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v76, v71, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v63, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v67, v73, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v65, v70, v65, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v66, v66, v229
	v_fmac_f32_e32 v73, v76, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v65, v65, v68, v232
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v67, -v67, v73, v72
	v_rcp_f32_e32 v75, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v63, v63, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v35, v67, v69, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, s3
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v24, v235, v24 :: v_dual_add_f32 v63, 1.0, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v35, v35, v62, v231
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v223
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v63, v63, v230
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v215, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v69, v69
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v67, v69, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v233, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v74, v75, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v64, v75
	v_div_scale_f32 v36, s0, v229, v66, v229
	v_rcp_f32_e32 v64, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v224
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v67, v67, v223
	v_mul_f32_e32 v72, v36, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v74, v72, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v73, -v68, v64, 1.0
	v_fmac_f32_e32 v72, v62, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v64, v73, v64
	v_div_scale_f32 v73, s1, v230, v63, v230
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v71, v70
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v74, v72, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v62, v73, v64
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v28, v234, v28
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v222
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v68, v62, v73
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v69, null, v74, v74, v224
	v_div_fmas_f32 v29, v36, v75, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v62, v30, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v69
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v68, v62, v73
	v_rcp_f32_e32 v73, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s3
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v51
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v221
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v30, v30, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v69, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v70, 1.0, v30 :: v_dual_fmac_f32 v71, v75, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v36, v36, v64, v62
	v_fma_f32 v64, -v76, v73, 1.0
	v_div_fixup_f32 v30, v29, v66, v229
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v75, null, v70, v70, v222
	v_div_fixup_f32 v36, v36, v63, v230
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v63, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v64, v73
	v_div_scale_f32 v64, s0, v223, v67, v223
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v217, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v62, vcc_lo, v224, v74, v224
	v_mul_f32_e32 v66, v64, v73
	v_rcp_f32_e32 v77, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v72, v62, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v63, v63, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v76, v66, v64
	v_fma_f32 v36, -v69, v72, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v63, 1.0, v63 :: v_dual_fmac_f32 v66, v68, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v36, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v68, null, v63, v63, v221
	v_fma_f32 v64, -v76, v66, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v69, v72, v62
	v_div_fmas_f32 v62, v62, v71, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v47, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v62, v62, v74, v224
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v64, v64, v73, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v201
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v68, v47, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v214, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v75, v77, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	v_exp_f32_e32 v39, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v64, v64, v67, v223
	v_fmac_f32_e32 v47, v72, v47
	v_fmac_f32_e32 v77, v65, v77
	v_div_scale_f32 v65, s1, v222, v70, v222
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v65, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v39, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, s0, v221, v63, v221
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v200
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v75, v66, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v74, 1.0, v37 :: v_dual_mul_f32 v39, v73, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v66, v67, v77 :: v_dual_fmac_f32 v69, 0xbfb8aa3b, v198
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v68, v39, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v75, v66, v65
	v_div_scale_f32 v75, null, v74, v74, v201
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v30, v216, v30 :: v_dual_fmac_f32 v39, v37, v47
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v72, v71
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v65, v65, v77, v66
	v_fma_f32 v66, -v68, v39, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v75, v69, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v31, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v39, v66, v47, v39
	v_div_scale_f32 v73, vcc_lo, v201, v74, v201
	v_fmac_f32_e32 v69, v37, v69
	v_div_fixup_f32 v37, v65, v70, v222
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v199
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v68, v68, v200
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v65, v73, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v204, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v66, v67
	v_div_scale_f32 v76, s0, v200, v68, v200
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v47, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v75, v65, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v39, v63, v221
	v_fma_f32 v39, -v67, v66, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v65, v71, v69
	v_div_scale_f32 v63, null, v72, v72, v198
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v66, v39, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v39, v203, v64
	v_mul_f32_e32 v31, v205, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v63, v70, 1.0
	v_fmac_f32_e32 v70, v77, v70
	v_div_scale_f32 v77, s1, v198, v72, v198
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v64, 1.0, v47 :: v_dual_mul_f32 v47, v202, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v75, v65, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v51, v62, v69, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v197
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v76, v66
	v_div_fixup_f32 v51, v51, v74, v201
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v67, v71, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v71, v73, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v62, v65, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v67, v71, v76
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v62
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v40, v67, v66, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, s4
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s4
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v40, v40, v68, v200
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v196
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v77, v70
	v_div_scale_f32 v78, null, v64, v64, v199
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v211, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v63, v69, v77
	v_rcp_f32_e32 v75, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v69, v74, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v63, -v63, v69, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v73, -v78, v75, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v63, v63, v70, v69
	v_fmac_f32_e32 v75, v73, v75
	v_div_scale_f32 v73, s3, v199, v64, v199
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_exp_f32_e32 v69, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v73, v75
	v_fma_f32 v34, -v78, v66, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v66, v34, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v62, v62, v197
	v_fma_f32 v33, -v78, v66, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v188
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_ldexp_f32 v34, v34, v67
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v33, v33, v75, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v33, v64, v199
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v69, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v71, v70, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v213, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v66, v66, v196
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v73, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v65, v70
	v_div_scale_f32 v65, vcc_lo, v197, v62, v197
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v75, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v77, v65, v70
	v_fma_f32 v64, -v71, v77, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v68, -v69, v75, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v34, v63, v72, v198
	v_fmac_f32_e32 v77, v64, v70
	v_div_scale_f32 v72, null, v67, v67, v188
	v_fmac_f32_e32 v75, v68, v75
	v_div_scale_f32 v76, null, v74, v74, v195
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v65, -v71, v77, v65
	v_div_scale_f32 v64, s0, v196, v66, v196
	v_rcp_f32_e32 v63, v76
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v34, v212, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v65, v65, v70, v77
	v_rcp_f32_e32 v70, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v210, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v65, v62, v197
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v76, v63, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v72, v70, 1.0
	v_mul_f32_e32 v71, v64, v75
	v_fmac_f32_e32 v63, v68, v63
	v_div_scale_f32 v68, s1, v195, v74, v195
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v182
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v65, v70
	v_fma_f32 v73, -v69, v71, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v77, v68, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v46, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v73, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v62, -v76, v77, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v181
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v69, v71, v64
	v_div_scale_f32 v69, s3, v188, v67, v188
	v_fmac_f32_e32 v77, v62, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v46, v46, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v64, v64, v75, v71
	v_mul_f32_e32 v71, v69, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_exp_f32_e32 v41, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v72, v71, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v71, v46, v70
	v_div_fixup_f32 v46, v64, v66, v196
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v175
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v41, v41, v62
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v192, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v75
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v66, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v76, v77, v68
	v_div_scale_f32 v76, null, v65, v65, v182
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v63, v68, v63, v77
	v_rcp_f32_e32 v62, v76
	v_div_scale_f32 v68, null, v64, v64, v181
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v41, v63, v74, v195
	v_fma_f32 v63, -v72, v71, v69
	v_div_scale_f32 v74, null, v66, v66, v175
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v76, v62, 1.0
	v_div_fmas_f32 v63, v63, v70, v71
	v_rcp_f32_e32 v70, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v74
	v_fmac_f32_e32 v62, v69, v62
	v_div_scale_f32 v69, s0, v182, v65, v182
	v_div_fixup_f32 v38, v63, v67, v188
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v69, v62
	v_fma_f32 v72, -v68, v70, 1.0
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v67, 0xbfb8aa3b, v176 :: v_dual_mul_f32 v38, v194, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v76, v71, v69
	v_fmac_f32_e32 v70, v72, v70
	v_div_scale_f32 v72, s1, v181, v64, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v73, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v73, v72, v70
	v_fma_f32 v69, -v76, v71, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v76, -v68, v73, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v63, v67, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v62, v69, v62, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v76, v70
	v_fma_f32 v67, -v74, v75, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v62, v62, v65, v182
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v68, v73, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v63, v63, v176
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v75, v67, v75
	v_div_fmas_f32 v50, v65, v70, v73
	v_rcp_f32_e32 v67, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, s0, v175, v66, v175
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v132
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v131
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v72, v59, v75
	v_div_fixup_f32 v50, v50, v64, v181
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v68, v67, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v74, v72, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v73, v67
	v_div_scale_f32 v73, s1, v176, v63, v176
	v_fmac_f32_e32 v72, v64, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v71, v69
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v64, v73, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v65, v70, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v74, v72, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v74, 1.0, v49 :: v_dual_fmac_f32 v71, 0xbfb8aa3b, v130
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v68, v64, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v74, v74, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v64, v49, v67
	v_div_scale_f32 v76, null, v65, v65, v131
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v49, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v70
	v_div_fmas_f32 v42, v59, v75, v72
	v_fma_f32 v59, -v68, v64, v73
	v_rcp_f32_e32 v73, v76
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, s3
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v59, v59, v67, v64
	v_div_scale_f32 v64, vcc_lo, v132, v74, v132
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v75, -v70, v71, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v49, v69
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v129
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v76, v73, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v75, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v193, v41
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v67, v73
	v_div_scale_f32 v67, s0, v131, v65, v131
	v_div_fixup_f32 v49, v42, v66, v175
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v51, v183, v51 :: v_dual_mul_f32 v50, v134, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v67, v73
	v_div_fixup_f32 v59, v59, v63, v176
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v63, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v72, v64, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v42, v136, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v70, v72, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v63, v63, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v59, v71
	v_fma_f32 v68, -v76, v66, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v59, v133, v62 :: v_dual_add_f32 v62, 1.0, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v70, v72, v64
	v_fmac_f32_e32 v66, v68, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v68, null, v62, v62, v129
	v_div_fmas_f32 v63, v63, v71, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v76, v66, v67
	v_rcp_f32_e32 v56, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v63, v63, v74, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v66, v67, v73, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v128
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v68, v56, 1.0
	v_div_scale_f32 v73, s0, v129, v62, v129
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v71
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v72, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v127
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v44, v52, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v52, v73, v56
	v_div_fixup_f32 v65, v66, v65, v131
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v72, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v68, v52, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v125
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v52, v44, v56
	v_div_scale_f32 v75, null, v69, v69, v130
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v44, v72, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v77, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v75, v77, 1.0
	v_fmac_f32_e32 v77, v64, v77
	v_div_scale_f32 v64, s1, v130, v69, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v64, v77
	v_fma_f32 v66, -v75, v67, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v67, v66, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	v_exp_f32_e32 v43, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v75, v67, v64
	v_div_scale_f32 v75, null, v74, v74, v128
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v70, v75
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v49, v135, v49 :: v_dual_fmac_f32 v72, 0xbfb8aa3b, v126
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v64, v64, v77, v67
	v_fma_f32 v67, -v68, v52, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v43, v43, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v52, v67, v56, v52
	v_fma_f32 v44, -v75, v70, 1.0
	v_div_scale_f32 v66, null, v68, v68, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, vcc_lo, v128, v74, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v44, v70
	v_rcp_f32_e32 v67, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v44, v64, v69, v130
	v_div_fixup_f32 v43, v52, v62, v129
	v_mul_f32_e32 v64, v73, v70
	v_div_scale_f32 v76, s0, v127, v68, v127
	v_div_scale_f32 v62, null, v72, v72, v125
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v56, v56, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v75, v64, v73
	v_fma_f32 v52, -v66, v67, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v69, v62
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v43, v191, v43 :: v_dual_mul_f32 v44, v190, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v64, v71, v70 :: v_dual_fmac_f32 v67, v52, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v52, v189, v65 :: v_dual_add_f32 v65, 1.0, v56
	v_mul_f32_e32 v56, v184, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v75, v64, v73
	v_fma_f32 v77, -v62, v69, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v78, null, v65, v65, v126
	v_div_fmas_f32 v61, v63, v70, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v77, v69
	v_rcp_f32_e32 v75, v78
	v_div_scale_f32 v77, s1, v125, v72, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v64, 0xbfb8aa3b, v120 :: v_dual_mul_f32 v71, v76, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v61, v61, v74, v128
	v_mul_f32_e32 v70, v77, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v73, -v66, v71, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v64, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v62, v70, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v71, v73, v67
	v_fma_f32 v73, -v78, v75, 1.0
	v_fmac_f32_e32 v70, v74, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v66, -v66, v71, v76
	v_fmac_f32_e32 v75, v73, v75
	v_div_scale_f32 v73, s3, v126, v65, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v62, v70, v77
	v_div_fmas_f32 v60, v66, v67, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v73, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	v_ldexp_f32 v63, v64, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v60, v60, v68, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v115
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v78, v66, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v122, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v66, v55, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v71
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v62, v62, v69, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v78, v66, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v55, v55, v67
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v98
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v53, v53, v75, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v53, v53, v65, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v74, 0xbfb8aa3b, v99 :: v_dual_mul_f32 v53, v124, v53
	v_exp_f32_e32 v69, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v73, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v69, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v66, v66, v115
	v_div_scale_f32 v73, null, v67, v67, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v69
	v_div_fixup_f32 v55, v62, v72, v125
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v76, null, v74, v74, v99
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v123, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, s1, v99, v74, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v62, v76
	v_fma_f32 v68, -v69, v75, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v75, v68, v75
	v_fma_f32 v68, -v76, v62, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v63, 1.0, v63 :: v_dual_fmac_f32 v62, v68, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v63, v63, v120
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v121, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v71
	v_fma_f32 v64, -v71, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v64, v70
	v_div_scale_f32 v64, vcc_lo, v120, v63, v120
	v_mul_f32_e32 v77, v64, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v71, v77, v64
	v_fmac_f32_e32 v77, v65, v70
	v_div_scale_f32 v65, s0, v115, v66, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v71, v77, v64
	v_div_fmas_f32 v64, v64, v70, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v58, v73
	v_mul_f32_e32 v77, v72, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v61, v64, v63, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v76, v77, v72
	v_fma_f32 v64, -v73, v58, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v77, v63, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v64, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v64, 0xbfb8aa3b, v96 :: v_dual_mul_f32 v71, v65, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v69, v71, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v70, v75
	v_fma_f32 v65, -v69, v71, v65
	v_div_scale_f32 v69, s3, v98, v67, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v70, v69, v58
	v_div_fmas_f32 v65, v65, v75, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	v_exp_f32_e32 v54, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v76, v77, v72
	v_fma_f32 v64, -v73, v70, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v70, v64, v58
	v_div_fmas_f32 v62, v71, v62, v77
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v54, v54, v63
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v97
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v94
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v63, v65, v66, v115
	v_div_fixup_f32 v62, v62, v74, v99
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v57, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v73, v70, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v26
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v62, v114, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v64, v64, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v54, v54, v58, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v58, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v57, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v54, v54, v67, v98
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v57, 1.0, v57 :: v_dual_mul_f32 v54, v107, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v57, v57, v97
	v_div_scale_f32 v27, s0, v97, v57, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v71, v76
	v_fma_f32 v69, -v76, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v71, v69, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v70, v27, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v76, v70, v27
	v_fmac_f32_e32 v70, v73, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v76, v70, v27
	v_div_fmas_f32 v27, v27, v71, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v112, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v75
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v27, v57, v97
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v65, v65, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v66, v58, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v65, 1.0, v65 :: v_dual_fmac_f32 v58, v72, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, s1, v96, v64, v96
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v65, v65, v94
	v_mul_f32_e32 v73, v72, v58
	v_div_scale_f32 v48, s0, v94, v65, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v75, v74
	v_fma_f32 v76, -v66, v73, v72
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v69, v67
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v73, v76, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v74, v75, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v66, v73, v72
	v_div_fmas_f32 v26, v57, v58, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, s3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s3
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v26, v64, v96
	v_fmac_f32_e32 v75, v67, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v71, 0xbfb8aa3b, v93 :: v_dual_fmac_f32 v58, 0xbfb8aa3b, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v72, v48, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v58, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v74, v72, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v71, v69
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v64, v75
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v58, v57
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v91
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v74, v72, v48
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v25, v25, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v48, v48, v75, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v71, null, v57, v57, v92
	v_rcp_f32_e32 v23, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v48, v48, v65, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v58, v58, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v76, v23, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v69, 1.0, v58 :: v_dual_mul_f32 v58, v118, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v61, v61, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v23, v75, v23
	v_div_scale_f32 v75, null, v69, v69, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v67, v66
	v_rcp_f32_e32 v78, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v66, v67, 1.0
	v_fmac_f32_e32 v67, v73, v67
	v_div_scale_f32 v73, s1, v95, v61, v95
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v64, v73, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v66, v64, v73
	v_fmac_f32_e32 v64, v74, v67
	v_rcp_f32_e32 v74, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v66, -v66, v64, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, s3
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v64, v66, v67, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v90
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, vcc_lo, v93, v25, v93
	v_fma_f32 v67, -v71, v74, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v63, v113, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v61, v64, v61, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v64, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v73, v66, v23 :: v_dual_fmac_f32 v74, v67, v74
	v_div_scale_f32 v67, s0, v92, v57, v92
	v_fma_f32 v65, -v76, v73, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v77, v67, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v64, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v65, v23
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v117, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v71, v77, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v65, v116, v27 :: v_dual_add_f32 v26, 1.0, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v76, v73, v66
	v_fma_f32 v48, -v75, v78, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v77, v72, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v26, v26, v90
	v_div_fmas_f32 v23, v27, v23, v73
	v_fma_f32 v27, -v71, v77, v67
	v_fmac_f32_e32 v78, v48, v78
	v_div_scale_f32 v48, s1, v91, v69, v91
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v23, v23, v25, v93
	v_div_fmas_f32 v22, v27, v74, v77
	v_mul_f32_e32 v27, v48, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v89
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v67, v66
	v_div_fixup_f32 v22, v22, v57, v92
	v_fma_f32 v20, -v75, v27, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, s0, v90, v26, v90
	v_fmac_f32_e32 v27, v20, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v20, v72
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v88
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v2, -v66, v67, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v1, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v75, v27, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v2, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v86
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v85
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v48, v78, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v1, v1, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v48, v74, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v20, v20, v71
	v_exp_f32_e32 v25, v57
	v_exp_f32_e32 v71, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v73, -v66, v48, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v61, v119, v61 :: v_dual_add_f32 v20, 1.0, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v27, v69, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v48, v73, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v2, v25, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v71, v71, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v57, null, v20, v20, v89
	v_fma_f32 v66, -v66, v48, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v2, 1.0, v2
	v_add_f32_e32 v72, 1.0, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v57
	v_div_fmas_f32 v48, v66, v67, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_scale_f32 v76, null, v2, v2, v85
	v_div_scale_f32 v83, s3, v85, v2, v85
	v_div_scale_f32 v73, null, v72, v72, v86
	v_rcp_f32_e32 v78, v76
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v71, -v57, v69, 1.0
	v_div_scale_f32 v77, vcc_lo, v89, v20, v89
	v_rcp_f32_e32 v75, v73
	v_div_fixup_f32 v26, v48, v26, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v69, v71, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v71, v109, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v76, v78, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v79, v77, v69
	v_fma_f32 v48, -v73, v75, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v78, v67, v78 :: v_dual_mul_f32 v67, v110, v27
	v_dual_fmac_f32 v75, v48, v75 :: v_dual_mul_f32 v84, v83, v78
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v1, 1.0, v1
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v48, s1, v86, v72, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v25, null, v1, v1, v88
	v_div_scale_f32 v80, s0, v88, v1, v88
	v_mul_f32_e32 v82, v48, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v74, v25
	v_fma_f32 v27, -v73, v82, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v82, v27, v75
	v_fma_f32 v66, -v25, v74, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v74, v66, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v66, v111, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v57, v79, v77
	v_mul_f32_e32 v81, v80, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v79, v26, v69
	v_fma_f32 v26, -v25, v81, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v22, -v57, v79, v77
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v77, |v54|, |v10|, |v8|
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v81, v26, v74
	v_fma_f32 v26, -v76, v84, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v22, v22, v69, v79
	s_mov_b32 vcc_lo, s0
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v69, |v59|, |v50|, |v49|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v25, v81, v80
	v_fmac_f32_e32 v84, v26, v78
	v_fma_f32 v26, -v73, v82, v48
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v73, v108, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v20, v22, v20, v89
	v_div_fmas_f32 v25, v25, v74, v81
	v_fma_f32 v27, -v76, v84, v83
	s_mov_b32 vcc_lo, s1
.Ltmp11:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v23, |v32|, |v28|
.Ltmp12:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v26, v75, v82
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v1, v25, v1, v88
	v_div_fmas_f32 v27, v27, v78, v84
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, |v24|, |v36|, |v35|
.Ltmp14:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v26, v72, v86
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, |v47|, |v39|, |v37|
	v_max_f32_e64 v74, |v56|, |v52|
.Ltmp16:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v2, v27, v2, v85
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v27, |v31|, |v18|, |v16|
	v_max3_f32 v75, |v44|, |v68|, |v60|
	v_max3_f32 v76, |v70|, |v63|, |v62|
.Ltmp18:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v57, v102, v22
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, v23, |v21|, v25
	v_max3_f32 v23, v26, v27, |v17|
	v_max_f32_e64 v25, |v45|, |v40|
	v_max3_f32 v26, |v34|, |v51|, |v46|
	v_max3_f32 v72, |v42|, |v14|, |v13|
	v_max3_f32 v78, |v55|, |v53|, |v11|
	v_max3_f32 v74, v74, |v43|, v75
	v_max3_f32 v75, v76, v77, |v9|
.Ltmp20:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v87, v2
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, |v30|, |v29|, |v19|
	v_max3_f32 v27, |v41|, |v38|, |v15|
	v_max3_f32 v25, v25, |v33|, v26
	v_max3_f32 v26, v69, v72, |v12|
.Ltmp22:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v72, v100, v20
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v20, v74, v78, v75
	s_mov_b32 s0, 0x76543210
.Ltmp24:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v101, v1
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v1, v22, v2, v23
	v_max3_f32 v2, v25, v27, v26
	v_max_f32_e64 v22, |v65|, |v64|
	v_max3_f32 v23, |v58|, |v73|, |v71|
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v75, v20, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, |v72|, |v69|, |v57|
	v_max3_f32 v27, |v48|, |v0|, |v5|
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v74, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, v22, |v61|, v23
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v23, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v75, v75
	v_max3_f32 v26, v26, v27, |v6|
	s_waitcnt vmcnt(4)
	v_dual_max_f32 v27, v74, v74 :: v_dual_and_b32 v78, 3, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v23, v23, v23 :: v_dual_max_f32 v76, v20, v76
	v_max3_f32 v25, |v67|, |v66|, |v7|
	v_max_f32_e32 v75, v2, v27
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v2, 4, v103
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v74, v1, v23
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v20, v78, 9, 0
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v77, v22, v25, v26
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v22, 5, v78
	v_lshlrev_b32_e32 v23, 4, v103
	v_and_b32_e32 v26, 0x60, v103
	v_and_b32_e32 v27, 0x80, v103
	v_permlanex16_b32 v1, v77, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v79, 8, v103
	v_lshl_add_u32 v20, v2, 2, v20
	v_and_or_b32 v23, 0x680, v23, v22
	v_lshlrev_b32_e32 v25, 1, v27
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v80, v22, v26
	v_lshl_add_u32 v20, v79, 4, v20
	v_lshrrev_b32_e32 v81, 3, v27
	v_xor_b32_e32 v23, v23, v26
	v_lshl_add_u32 v82, v2, 6, 0
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v77, v77, v1
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v20, v25, v80
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v20, v82, v81, v23
	ds_store_b128 v1, v[74:77]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[74:77], v20
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v1, v74
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v74, v74, v74 :: v_dual_mov_b32 v23, v76
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v20, v75
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v77, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v77, v77 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v23, v23 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v23, v23, v23 :: v_dual_max_f32 v20, v20, v20
	v_dual_max_f32 v1, v74, v1 :: v_dual_max_f32 v74, v76, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v76, v1 :: v_dual_max_f32 v23, v74, v23
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v76, v76
	v_max_f32_e32 v1, v1, v76
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v20, v75, v20 :: v_dual_max_f32 v75, v77, v77
	v_dual_max_f32 v74, v80, v75 :: v_dual_mov_b32 v75, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v80, v74
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v80, v80 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v75, v75, v75 :: v_dual_max_f32 v76, v80, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max_f32_e32 v23, v23, v75
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v77, v20
	v_lshlrev_b32_e32 v79, 3, v79
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v81, v74, v76 :: v_dual_mov_b32 v76, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v82, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v77, v77, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v20, v20, v77 :: v_dual_mov_b32 v77, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v80, v20 :: v_dual_add_nc_u32 v27, 0, v27
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v74, v77, v77 :: v_dual_max_f32 v75, v80, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v74, v1, v74 :: v_dual_max_f32 v1, v76, v76
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v80, 1, v26
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v75, v20, v75 :: v_dual_max_f32 v20, v82, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v76, v23, v1 :: v_dual_lshlrev_b32 v1, 5, v2
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v2, v78, 4, 0
.Ltmp61:
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v23, 4, v106
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v77, v81, v20
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v20, v27, v80, v79
	v_add3_u32 v1, v2, v1, v79
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp64:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v79, 32, v23
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v20, v[74:77]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[74:77], v1
.Ltmp66:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v1, v74, v74 :: v_dual_max_f32 v76, v76, v76
	v_max_f32_e32 v75, v75, v75
	v_max_f32_e32 v77, v77, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v20, 0x2b8cbccc, v1
	v_max_f32_e32 v76, 0x2b8cbccc, v76
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 48, v23
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v75, 0x2b8cbccc, v75
	v_max_f32_e32 v77, 0x2b8cbccc, v77
	v_div_scale_f32 v27, null, 0x40e00000, 0x40e00000, v20
	v_div_scale_f32 v80, vcc_lo, v20, 0x40e00000, v20
	v_div_scale_f32 v81, null, 0x40e00000, 0x40e00000, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v74, v27
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s28, v1
	v_add_co_ci_u32_e64 v2, null, s29, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v83, v81
	v_div_scale_f32 v85, null, 0x40e00000, 0x40e00000, v75
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[30:31], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v86, null, 0x40e00000, 0x40e00000, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v78, -v27, v74, 1.0
	v_fma_f32 v84, -v81, v83, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v78, v74
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v78, s0, s28, v79
	v_add_co_ci_u32_e64 v79, null, s29, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v82, v80, v74
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[34:35], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v84, s7, v76, 0x40e00000, v76
	v_fma_f32 v1, -v27, v82, v80
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 16, v23
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[34:35], v[78:79]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v82, v1, v74
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s4, s28, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s29, 0, s4
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v27, -v27, v82, v80
	v_rcp_f32_e32 v80, v85
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[30:31], v[78:79]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v79.h, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[34:35], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v27, v27, v74, v82
	v_mul_f32_e32 v74, v84, v83
	v_rcp_f32_e32 v82, v86
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[30:31], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v20, v27, 0x40e00000, v20
	v_fma_f32 v78, -v85, v80, 1.0
	v_fma_f32 v27, -v81, v74, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v80, v78, v80
	v_div_scale_f32 v78, s8, v75, 0x40e00000, v75
	v_fma_f32 v87, -v86, v82, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v74, v27, v83
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v27.l, v20.h
	v_mov_b16_e32 v27.h, v79.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v88, v78, v80
	v_fmac_f32_e32 v82, v87, v82
	v_div_scale_f32 v87, s9, v77, 0x40e00000, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v27
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v1, -v81, v74, v84
	v_fma_f32 v27, -v85, v88, v78
	v_mul_f32_e32 v81, v87, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v20, v20, v2, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v74, v1, v83, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v88, v27, v80
	v_fma_f32 v27, -v86, v81, v87
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v83, 0xffff0000, v20
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v74, v74, 0x40e00000, v76
	v_fma_f32 v76, -v85, v88, v78
	v_fmac_f32_e32 v81, v27, v82
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s7, s28, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v85, null, v83, v83, v21
	v_div_scale_f32 v78, null, v83, v83, v32
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v27, v76, v80, v88
	v_fma_f32 v76, -v86, v81, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v86, v85
	v_rcp_f32_e32 v80, v78
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s29, 0, s7
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v79.l, v74.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v87, null, v83, v83, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[34:35], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[30:31], v[1:2]
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v90, -v85, v86, 1.0
	v_div_scale_f32 v88, s9, v28, v83, v28
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v86, v90, v86
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v27, v27, 0x40e00000, v75
	v_div_fmas_f32 v75, v76, v82, v81
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v81, null, v83, v83, v28
	v_fma_f32 v82, -v78, v80, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v76, 1, v79
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v75, v75, 0x40e00000, v77
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v77.l, v27.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v84, v81
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v77.h, v79.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v82, v80
	v_div_scale_f32 v82, vcc_lo, v32, v83, v32
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v79.l, v75.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v2, 1, v77
	v_add3_u32 v1, v74, v76, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v77, v82, v80
	v_div_scale_f32 v90, s10, v21, v83, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v81, v84, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v76, 1, v79
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v78, v77, v82
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v27, v27, v2, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v74, v84
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v75, v76, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v77, v79, v80
	v_rcp_f32_e32 v79, v87
	v_dual_mul_f32 v89, v88, v84 :: v_dual_and_b32 v76, 0xffff0000, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v74, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v78, v77, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v82, -v81, v89, v88
	v_div_fmas_f32 v77, v78, v80, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v87, v79, 1.0
	v_mul_f32_e32 v78, v90, v86
	v_fmac_f32_e32 v89, v82, v84
	v_div_scale_f32 v82, s11, v24, v83, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v79, v91, v79
	v_div_fixup_f32 v32, v77, v83, v32
	v_fma_f32 v77, -v81, v89, v88
	v_fma_f32 v81, -v85, v78, v90
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v88, v82, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v84, v89
	v_fmac_f32_e32 v78, v81, v86
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v81, -v87, v88, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v88, v81, v79
	v_div_scale_f32 v92, null, v83, v83, v36
	v_div_scale_f32 v91, null, v83, v83, v35
	v_div_scale_f32 v84, s9, v36, v83, v36
	v_rcp_f32_e32 v80, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v93, v91
	v_div_fixup_f32 v28, v77, v83, v28
	v_fma_f32 v77, -v85, v78, v90
	v_div_scale_f32 v85, s12, v35, v83, v35
	v_div_scale_f32 v90, null, v83, v83, v29
	v_div_fmas_f32 v77, v77, v86, v78
	v_fma_f32 v78, -v87, v88, v82
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v94, -v92, v80, 1.0
	v_fma_f32 v89, -v91, v93, 1.0
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v21, v77, v83, v21
	v_div_fmas_f32 v78, v78, v79, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v80, v94, v80 :: v_dual_fmac_f32 v93, v89, v93
	v_div_scale_f32 v89, null, v83, v83, v30
	v_rcp_f32_e32 v79, v90
	v_mul_f32_e32 v81, v84, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v87, v85, v93
	v_rcp_f32_e32 v86, v89
	v_div_fixup_f32 v24, v78, v83, v24
	v_div_scale_f32 v78, s10, v30, v83, v30
	v_fma_f32 v82, -v92, v81, v84
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v94, null, v83, v83, v37
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v82, v80
	v_fma_f32 v82, -v91, v87, v85
	v_fma_f32 v88, -v89, v86, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v92, v81, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v87, v82, v93 :: v_dual_fmac_f32 v86, v88, v86
	v_fma_f32 v82, -v90, v79, 1.0
	v_div_scale_f32 v84, null, v83, v83, v19
	v_div_fmas_f32 v77, v77, v80, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v80, -v91, v87, v85
	v_mul_f32_e32 v81, v78, v86
	v_fmac_f32_e32 v79, v82, v79
	v_rcp_f32_e32 v82, v84
	v_div_scale_f32 v85, s9, v29, v83, v29
	v_div_scale_f32 v88, null, v83, v83, v47
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v91, v85, v79
	v_div_fmas_f32 v80, v80, v93, v87
	v_fma_f32 v87, -v89, v81, v78
	v_rcp_f32_e32 v93, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v84, v82, 1.0
	v_div_fixup_f32 v36, v77, v83, v36
	v_fma_f32 v77, -v90, v91, v85
	v_fmac_f32_e32 v81, v87, v86
	v_div_scale_f32 v87, null, v83, v83, v39
	v_div_fixup_f32 v35, v80, v83, v35
	v_fmac_f32_e32 v82, v92, v82
	v_div_scale_f32 v80, s11, v19, v83, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v88, v93, 1.0
	v_fma_f32 v78, -v89, v81, v78
	v_fmac_f32_e32 v91, v77, v79
	v_rcp_f32_e32 v89, v87
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v77, v80, v82
	v_fmac_f32_e32 v93, v92, v93
	v_div_scale_f32 v92, s12, v47, v83, v47
	v_div_fmas_f32 v78, v78, v86, v81
	v_fma_f32 v81, -v90, v91, v85
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v85, -v84, v77, v80
	v_mul_f32_e32 v86, v92, v93
	v_fma_f32 v90, -v87, v89, 1.0
	v_div_fmas_f32 v79, v81, v79, v91
	v_rcp_f32_e32 v81, v94
	v_fmac_f32_e32 v77, v85, v82
	v_fma_f32 v85, -v88, v86, v92
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, s9, v39, v83, v39
	v_div_fixup_f32 v30, v78, v83, v30
	v_div_fixup_f32 v29, v79, v83, v29
	v_fma_f32 v78, -v84, v77, v80
	v_fmac_f32_e32 v86, v85, v93
	v_mul_f32_e32 v79, v90, v89
	v_fma_f32 v80, -v94, v81, 1.0
	v_div_scale_f32 v84, null, v83, v83, v31
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v85, s10, v37, v83, v37
	v_div_fmas_f32 v77, v78, v82, v77
	v_fma_f32 v78, -v88, v86, v92
	v_fma_f32 v82, -v87, v79, v90
	v_fmac_f32_e32 v81, v80, v81
	v_rcp_f32_e32 v80, v84
	v_div_scale_f32 v88, null, v83, v83, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v82, v89
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v19, v77, v83, v19
	v_rcp_f32_e32 v82, v88
	v_div_fmas_f32 v78, v78, v93, v86
	v_mul_f32_e32 v86, v85, v81
	v_fma_f32 v77, -v87, v79, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v84, v80, 1.0
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v75, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v47, v78, v83, v47
	v_fma_f32 v78, -v94, v86, v85
	v_fmac_f32_e32 v80, v91, v80
	v_fma_f32 v90, -v88, v82, 1.0
	v_div_scale_f32 v91, null, v83, v83, v16
	v_div_scale_f32 v87, s11, v31, v83, v31
	v_div_fmas_f32 v77, v77, v89, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v90, v82
	v_rcp_f32_e32 v79, v91
	v_div_scale_f32 v90, null, v83, v83, v17
	v_fmac_f32_e32 v86, v78, v81
	v_mul_f32_e32 v78, v87, v80
	v_div_scale_f32 v89, s9, v18, v83, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v93, v90
	v_div_fixup_f32 v39, v77, v83, v39
	v_fma_f32 v77, -v94, v86, v85
	v_fma_f32 v85, -v84, v78, v87
	v_mul_f32_e32 v92, v89, v82
	v_fma_f32 v94, -v91, v79, 1.0
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v81, v86
	v_fmac_f32_e32 v78, v85, v80
	v_fma_f32 v81, -v88, v92, v89
	v_fmac_f32_e32 v79, v94, v79
	v_div_scale_f32 v85, s10, v16, v83, v16
	v_fma_f32 v86, -v90, v93, 1.0
	v_div_fixup_f32 v37, v77, v83, v37
	v_fma_f32 v77, -v84, v78, v87
	v_fmac_f32_e32 v92, v81, v82
	v_mul_f32_e32 v81, v85, v79
	v_fmac_f32_e32 v93, v86, v93
	v_div_scale_f32 v86, null, v76, v76, v45
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v84, s12, v17, v83, v17
	v_div_fmas_f32 v77, v77, v80, v78
	v_fma_f32 v78, -v88, v92, v89
	v_fma_f32 v80, -v91, v81, v85
	v_rcp_f32_e32 v87, v86
	v_div_scale_f32 v89, null, v76, v76, v40
	v_mul_f32_e32 v88, v84, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v80, v79
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v80, v89
	v_div_fmas_f32 v78, v78, v82, v92
	v_fma_f32 v82, -v90, v88, v84
	v_div_fixup_f32 v31, v77, v83, v31
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v86, v87, 1.0
	v_fma_f32 v77, -v91, v81, v85
	v_div_fixup_f32 v18, v78, v83, v18
	v_fmac_f32_e32 v88, v82, v93
	v_div_scale_f32 v78, s9, v45, v76, v45
	v_fmac_f32_e32 v87, v92, v87
	v_fma_f32 v82, -v89, v80, 1.0
	v_div_scale_f32 v85, null, v76, v76, v33
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v79, v81
	v_fma_f32 v79, -v90, v88, v84
	v_mul_f32_e32 v81, v78, v87
	v_fmac_f32_e32 v80, v82, v80
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v84, s10, v40, v76, v40
	v_div_scale_f32 v90, null, v76, v76, v34
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v91, v84, v80
	v_div_fmas_f32 v79, v79, v93, v88
	v_fma_f32 v88, -v86, v81, v78
	v_rcp_f32_e32 v93, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v85, v82, 1.0
	v_div_fixup_f32 v16, v77, v83, v16
	v_fma_f32 v77, -v89, v91, v84
	v_fmac_f32_e32 v81, v88, v87
	v_div_fixup_f32 v17, v79, v83, v17
	v_fmac_f32_e32 v82, v92, v82
	v_div_scale_f32 v79, s11, v33, v76, v33
	v_div_scale_f32 v83, null, v76, v76, v51
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v90, v93, 1.0
	v_fma_f32 v78, -v86, v81, v78
	v_fmac_f32_e32 v91, v77, v80
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v77, v79, v82
	v_rcp_f32_e32 v86, v83
	v_fmac_f32_e32 v93, v88, v93
	v_div_scale_f32 v88, s12, v34, v76, v34
	v_div_fmas_f32 v78, v78, v87, v81
	v_fma_f32 v81, -v89, v91, v84
	v_div_scale_f32 v92, null, v76, v76, v46
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v84, -v85, v77, v79
	v_mul_f32_e32 v87, v88, v93
	v_div_fmas_f32 v80, v81, v80, v91
	v_rcp_f32_e32 v81, v92
	v_fma_f32 v89, -v83, v86, 1.0
	v_fmac_f32_e32 v77, v84, v82
	v_fma_f32 v84, -v90, v87, v88
	v_div_fixup_f32 v40, v80, v76, v40
	v_div_fixup_f32 v45, v78, v76, v45
	v_fmac_f32_e32 v86, v89, v86
	v_div_scale_f32 v89, s9, v51, v76, v51
	v_fmac_f32_e32 v87, v84, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v92, v81, 1.0
	v_div_scale_f32 v84, null, v76, v76, v41
	v_fma_f32 v78, -v85, v77, v79
	v_mul_f32_e32 v79, v89, v86
	v_fmac_f32_e32 v81, v80, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v80, v84
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v85, s10, v46, v76, v46
	v_div_fmas_f32 v77, v78, v82, v77
	v_fma_f32 v78, -v90, v87, v88
	v_fma_f32 v82, -v83, v79, v89
	v_div_scale_f32 v88, null, v76, v76, v38
	s_mov_b32 vcc_lo, s12
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v84, v80, 1.0
	v_fmac_f32_e32 v79, v82, v86
	v_rcp_f32_e32 v82, v88
	v_div_fmas_f32 v78, v78, v93, v87
	v_mul_f32_e32 v87, v85, v81
	v_div_fixup_f32 v33, v77, v76, v33
	v_fma_f32 v77, -v83, v79, v89
	v_fmac_f32_e32 v80, v90, v80
	v_div_scale_f32 v90, null, v76, v76, v15
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v34, v78, v76, v34
	v_fma_f32 v78, -v92, v87, v85
	v_div_scale_f32 v83, s11, v41, v76, v41
	v_fma_f32 v89, -v88, v82, 1.0
	v_div_fmas_f32 v77, v77, v86, v79
	v_rcp_f32_e32 v79, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v87, v78, v81 :: v_dual_mul_f32 v78, v83, v80
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v86, s9, v38, v76, v38
	v_div_scale_f32 v89, null, v76, v76, v59
	v_div_fixup_f32 v51, v77, v76, v51
	v_fma_f32 v77, -v92, v87, v85
	v_fma_f32 v85, -v84, v78, v83
	v_mul_f32_e32 v91, v86, v82
	v_rcp_f32_e32 v92, v89
	v_fma_f32 v93, -v90, v79, 1.0
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v78, v85, v80
	v_div_fmas_f32 v77, v77, v81, v87
	v_fma_f32 v81, -v88, v91, v86
	v_fmac_f32_e32 v79, v93, v79
	v_div_scale_f32 v85, s10, v15, v76, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v46, v77, v76, v46
	v_fma_f32 v87, -v89, v92, 1.0
	v_fma_f32 v77, -v84, v78, v83
	v_fmac_f32_e32 v91, v81, v82
	v_mul_f32_e32 v81, v85, v79
	v_div_scale_f32 v84, null, v76, v76, v50
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v92, v87, v92
	v_div_scale_f32 v83, s12, v59, v76, v59
	v_div_fmas_f32 v77, v77, v80, v78
	v_fma_f32 v78, -v88, v91, v86
	v_fma_f32 v80, -v90, v81, v85
	v_rcp_f32_e32 v86, v84
	v_div_scale_f32 v88, null, v76, v76, v49
	v_mul_f32_e32 v87, v83, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v80, v79
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v80, v88
	v_div_fmas_f32 v78, v78, v82, v91
	v_fma_f32 v82, -v89, v87, v83
	v_div_fixup_f32 v41, v77, v76, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v84, v86, 1.0
	v_fma_f32 v77, -v90, v81, v85
	v_div_fixup_f32 v38, v78, v76, v38
	v_fmac_f32_e32 v87, v82, v92
	v_div_scale_f32 v78, s9, v50, v76, v50
	v_fmac_f32_e32 v86, v91, v86
	v_fma_f32 v82, -v88, v80, 1.0
	v_div_scale_f32 v85, null, v76, v76, v42
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v93, null, v76, v76, v12
	v_div_fmas_f32 v77, v77, v79, v81
	v_fma_f32 v79, -v89, v87, v83
	v_mul_f32_e32 v81, v78, v86
	v_fmac_f32_e32 v80, v82, v80
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v83, s10, v49, v76, v49
	v_div_scale_f32 v89, null, v76, v76, v14
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v90, v83, v80
	v_div_fmas_f32 v79, v79, v92, v87
	v_fma_f32 v87, -v84, v81, v78
	v_rcp_f32_e32 v92, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v85, v82, 1.0
	v_div_fixup_f32 v15, v77, v76, v15
	v_fma_f32 v77, -v88, v90, v83
	v_fmac_f32_e32 v81, v87, v86
	v_div_fixup_f32 v59, v79, v76, v59
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v79, s11, v42, v76, v42
	v_div_scale_f32 v87, null, v76, v76, v13
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v89, v92, 1.0
	v_fma_f32 v78, -v84, v81, v78
	v_fmac_f32_e32 v90, v77, v80
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v77, v79, v82
	v_rcp_f32_e32 v84, v87
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s12, v14, v76, v14
	v_div_fmas_f32 v78, v78, v86, v81
	v_fma_f32 v81, -v88, v90, v83
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v83, -v85, v77, v79
	v_mul_f32_e32 v86, v91, v92
	v_div_fixup_f32 v50, v78, v76, v50
	v_div_fmas_f32 v80, v81, v80, v90
	v_rcp_f32_e32 v81, v93
	v_fma_f32 v88, -v87, v84, 1.0
	v_fmac_f32_e32 v77, v83, v82
	v_fma_f32 v83, -v89, v86, v91
	v_div_fixup_f32 v49, v80, v76, v49
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v84, v88, v84
	v_div_scale_f32 v88, s9, v13, v76, v13
	v_fmac_f32_e32 v86, v83, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v93, v81, 1.0
	v_div_scale_f32 v83, null, v75, v75, v56
	v_fma_f32 v78, -v85, v77, v79
	v_mul_f32_e32 v79, v88, v84
	v_fmac_f32_e32 v81, v80, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v80, v83
	v_div_scale_f32 v85, s10, v12, v76, v12
	v_div_fmas_f32 v77, v78, v82, v77
	v_fma_f32 v78, -v89, v86, v91
	v_fma_f32 v82, -v87, v79, v88
	v_div_scale_f32 v89, null, v75, v75, v52
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v42, v77, v76, v42
	v_fmac_f32_e32 v79, v82, v84
	v_rcp_f32_e32 v82, v89
	v_fma_f32 v90, -v83, v80, 1.0
	v_div_fmas_f32 v78, v78, v92, v86
	v_mul_f32_e32 v86, v85, v81
	v_fma_f32 v77, -v87, v79, v88
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v80, v90, v80
	v_div_scale_f32 v90, null, v75, v75, v43
	v_div_fixup_f32 v14, v78, v76, v14
	v_fma_f32 v78, -v93, v86, v85
	v_div_scale_f32 v87, s11, v56, v75, v56
	v_fma_f32 v88, -v89, v82, 1.0
	v_div_fmas_f32 v77, v77, v84, v79
	v_rcp_f32_e32 v79, v90
	v_fmac_f32_e32 v86, v78, v81
	v_mul_f32_e32 v78, v87, v80
	v_fmac_f32_e32 v82, v88, v82
	v_div_scale_f32 v84, s9, v52, v75, v52
	v_div_scale_f32 v88, null, v75, v75, v44
	v_div_fixup_f32 v13, v77, v76, v13
	v_fma_f32 v77, -v93, v86, v85
	v_fma_f32 v85, -v83, v78, v87
	v_mul_f32_e32 v91, v84, v82
	v_rcp_f32_e32 v92, v88
	v_fma_f32 v93, -v90, v79, 1.0
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v78, v85, v80
	v_div_fmas_f32 v77, v77, v81, v86
	v_fma_f32 v81, -v89, v91, v84
	v_fmac_f32_e32 v79, v93, v79
	v_div_scale_f32 v85, s10, v43, v75, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v12, v77, v76, v12
	v_fma_f32 v86, -v88, v92, 1.0
	v_fma_f32 v76, -v83, v78, v87
	v_fmac_f32_e32 v91, v81, v82
	v_mul_f32_e32 v77, v85, v79
	v_div_scale_f32 v83, null, v75, v75, v68
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v92, v86, v92
	v_div_scale_f32 v81, s12, v44, v75, v44
	v_div_fmas_f32 v76, v76, v80, v78
	v_fma_f32 v78, -v89, v91, v84
	v_fma_f32 v80, -v90, v77, v85
	v_rcp_f32_e32 v84, v83
	v_div_scale_f32 v87, null, v75, v75, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v86, v81, v92 :: v_dual_fmac_f32 v77, v80, v79
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v80, v87
	v_div_fmas_f32 v78, v78, v82, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v82, -v88, v86, v81
	v_div_fixup_f32 v56, v76, v75, v56
	v_fma_f32 v89, -v83, v84, 1.0
	v_fma_f32 v76, -v90, v77, v85
	v_div_fixup_f32 v52, v78, v75, v52
	v_fmac_f32_e32 v86, v82, v92
	v_div_scale_f32 v78, s9, v68, v75, v68
	v_fmac_f32_e32 v84, v89, v84
	v_fma_f32 v82, -v87, v80, 1.0
	v_div_scale_f32 v85, null, v75, v75, v55
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v76, v79, v77
	v_fma_f32 v77, -v88, v86, v81
	v_mul_f32_e32 v79, v78, v84
	v_fmac_f32_e32 v80, v82, v80
	v_rcp_f32_e32 v81, v85
	v_div_scale_f32 v82, s10, v60, v75, v60
	v_div_scale_f32 v88, null, v75, v75, v53
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v89, v82, v80
	v_div_fmas_f32 v77, v77, v92, v86
	v_fma_f32 v86, -v83, v79, v78
	v_rcp_f32_e32 v91, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v85, v81, 1.0
	v_div_fixup_f32 v43, v76, v75, v43
	v_fma_f32 v76, -v87, v89, v82
	v_fmac_f32_e32 v79, v86, v84
	v_div_scale_f32 v86, null, v75, v75, v11
	v_div_fixup_f32 v44, v77, v75, v44
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v77, s11, v55, v75, v55
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v88, v91, 1.0
	v_fma_f32 v78, -v83, v79, v78
	v_fmac_f32_e32 v89, v76, v80
	v_rcp_f32_e32 v83, v86
	s_mov_b32 vcc_lo, s9
	v_dual_mul_f32 v76, v77, v81 :: v_dual_fmac_f32 v91, v90, v91
	v_div_scale_f32 v90, s12, v53, v75, v53
	v_div_fmas_f32 v78, v78, v84, v79
	v_fma_f32 v79, -v87, v89, v82
	v_div_scale_f32 v92, null, v75, v75, v70
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v82, -v85, v76, v77
	v_mul_f32_e32 v84, v90, v91
	v_fma_f32 v87, -v86, v83, 1.0
	v_div_fmas_f32 v79, v79, v80, v89
	v_rcp_f32_e32 v80, v92
	v_fmac_f32_e32 v76, v82, v81
	v_fma_f32 v82, -v88, v84, v90
	v_fmac_f32_e32 v83, v87, v83
	v_div_scale_f32 v87, s9, v11, v75, v11
	v_div_fixup_f32 v68, v78, v75, v68
	v_div_fixup_f32 v60, v79, v75, v60
	v_fma_f32 v77, -v85, v76, v77
	v_fmac_f32_e32 v84, v82, v91
	v_mul_f32_e32 v78, v87, v83
	v_fma_f32 v79, -v92, v80, 1.0
	v_div_scale_f32 v82, null, v75, v75, v63
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v85, s10, v70, v75, v70
	v_div_fmas_f32 v76, v77, v81, v76
	v_fma_f32 v77, -v88, v84, v90
	v_fma_f32 v81, -v86, v78, v87
	v_fmac_f32_e32 v80, v79, v80
	v_rcp_f32_e32 v79, v82
	v_div_scale_f32 v88, null, v75, v75, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v81, v83
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v55, v76, v75, v55
	v_rcp_f32_e32 v81, v88
	v_div_fmas_f32 v77, v77, v91, v84
	v_mul_f32_e32 v84, v85, v80
	v_fma_f32 v76, -v86, v78, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v82, v79, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v53, v77, v75, v53
	v_fma_f32 v77, -v92, v84, v85
	v_div_scale_f32 v86, s11, v63, v75, v63
	v_fmac_f32_e32 v79, v89, v79
	v_fma_f32 v87, -v88, v81, 1.0
	v_div_scale_f32 v89, null, v75, v75, v54
	v_div_fmas_f32 v76, v76, v83, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v84, v77, v80 :: v_dual_fmac_f32 v81, v87, v81
	v_rcp_f32_e32 v78, v89
	v_div_scale_f32 v87, null, v75, v75, v10
	v_mul_f32_e32 v77, v86, v79
	v_div_scale_f32 v83, s9, v62, v75, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v91, v87
	v_div_fixup_f32 v11, v76, v75, v11
	v_fma_f32 v76, -v92, v84, v85
	v_fma_f32 v85, -v82, v77, v86
	v_mul_f32_e32 v90, v83, v81
	v_fma_f32 v92, -v89, v78, 1.0
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v76, v80, v84
	v_fmac_f32_e32 v77, v85, v79
	v_fma_f32 v80, -v88, v90, v83
	v_fmac_f32_e32 v78, v92, v78
	v_div_scale_f32 v84, s10, v54, v75, v54
	v_fma_f32 v85, -v87, v91, 1.0
	v_div_fixup_f32 v70, v76, v75, v70
	v_fma_f32 v76, -v82, v77, v86
	v_fmac_f32_e32 v90, v80, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v80, v84, v78 :: v_dual_fmac_f32 v91, v85, v91
	v_div_scale_f32 v85, null, v75, v75, v8
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v82, s12, v10, v75, v10
	v_div_fmas_f32 v76, v76, v79, v77
	v_fma_f32 v77, -v88, v90, v83
	v_fma_f32 v79, -v89, v80, v84
	v_rcp_f32_e32 v83, v85
	v_div_scale_f32 v88, null, v75, v75, v9
	v_mul_f32_e32 v86, v82, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v79, v78
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v79, v88
	v_div_fmas_f32 v77, v77, v81, v90
	v_fma_f32 v81, -v87, v86, v82
	v_div_fixup_f32 v63, v76, v75, v63
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v85, v83, 1.0
	v_fma_f32 v76, -v89, v80, v84
	v_div_fixup_f32 v62, v77, v75, v62
	v_fmac_f32_e32 v86, v81, v91
	v_div_scale_f32 v77, s9, v8, v75, v8
	v_fmac_f32_e32 v83, v90, v83
	v_fma_f32 v81, -v88, v79, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v89, null, v74, v74, v64
	v_div_fmas_f32 v76, v76, v78, v80
	v_fma_f32 v78, -v87, v86, v82
	v_mul_f32_e32 v80, v77, v83
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v81, null, v74, v74, v65
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v82, s10, v9, v75, v9
	v_div_fmas_f32 v78, v78, v91, v86
	v_rcp_f32_e32 v84, v81
	v_fma_f32 v86, -v85, v80, v77
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v87, v82, v79
	v_div_fixup_f32 v54, v76, v75, v54
	v_div_fixup_f32 v10, v78, v75, v10
	v_rcp_f32_e32 v78, v89
	v_fmac_f32_e32 v80, v86, v83
	v_fma_f32 v76, -v88, v87, v82
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v91, null, v74, v74, v58
	v_fma_f32 v86, -v81, v84, 1.0
	v_fma_f32 v77, -v85, v80, v77
	v_div_scale_f32 v85, null, v74, v74, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v87, v76, v79 :: v_dual_fmac_f32 v84, v86, v84
	v_div_scale_f32 v76, s11, v65, v74, v65
	v_rcp_f32_e32 v86, v85
	v_fma_f32 v90, -v89, v78, 1.0
	v_div_fmas_f32 v77, v77, v83, v80
	v_fma_f32 v80, -v88, v87, v82
	v_mul_f32_e32 v82, v76, v84
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v78, v90, v78
	v_div_scale_f32 v83, s9, v64, v74, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v90, -v81, v82, v76
	v_fma_f32 v88, -v85, v86, 1.0
	v_rcp_f32_e32 v93, v91
	v_div_fmas_f32 v79, v80, v79, v87
	v_mul_f32_e32 v92, v83, v78
	v_fmac_f32_e32 v82, v90, v84
	v_fmac_f32_e32 v86, v88, v86
	v_div_scale_f32 v88, s12, v61, v74, v61
	v_div_fixup_f32 v8, v77, v75, v8
	v_div_fixup_f32 v9, v79, v75, v9
	v_fma_f32 v75, -v81, v82, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v87, v88, v86
	v_div_scale_f32 v79, null, v74, v74, v73
	v_fma_f32 v80, -v89, v92, v83
	v_fma_f32 v77, -v91, v93, 1.0
	v_fma_f32 v76, -v85, v87, v88
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v92, v80, v78 :: v_dual_fmac_f32 v93, v77, v93
	v_fmac_f32_e32 v87, v76, v86
	v_rcp_f32_e32 v76, v79
	v_div_scale_f32 v77, s10, v58, v74, v58
	v_div_fmas_f32 v75, v75, v84, v82
	v_fma_f32 v80, -v89, v92, v83
	v_div_scale_f32 v82, null, v74, v74, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v81, v77, v93
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v65, v75, v74, v65
	v_fma_f32 v83, -v79, v76, 1.0
	v_div_fmas_f32 v78, v80, v78, v92
	v_fma_f32 v80, -v85, v87, v88
	v_rcp_f32_e32 v84, v82
	v_fma_f32 v85, -v91, v81, v77
	v_fmac_f32_e32 v76, v83, v76
	v_div_scale_f32 v83, s9, v73, v74, v73
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v81, v85, v93
	v_div_fmas_f32 v80, v80, v86, v87
	v_mul_f32_e32 v75, v83, v76
	v_div_fixup_f32 v64, v78, v74, v64
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v78, -v82, v84, 1.0
	v_fma_f32 v77, -v91, v81, v77
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v85, -v79, v75, v83
	v_div_fixup_f32 v61, v80, v74, v61
	v_div_scale_f32 v80, null, v74, v74, v67
	v_fmac_f32_e32 v84, v78, v84
	v_div_scale_f32 v78, s11, v71, v74, v71
	v_div_fmas_f32 v77, v77, v93, v81
	v_fmac_f32_e32 v75, v85, v76
	v_rcp_f32_e32 v86, v80
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v81, v78, v84
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v58, v77, v74, v58
	v_fma_f32 v77, -v79, v75, v83
	v_div_scale_f32 v85, null, v74, v74, v66
	v_fma_f32 v79, -v82, v81, v78
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v75, v77, v76, v75
	v_div_scale_f32 v76, null, v74, v74, v7
	v_fma_f32 v83, -v80, v86, 1.0
	v_rcp_f32_e32 v87, v85
	v_fmac_f32_e32 v81, v79, v84
	v_rcp_f32_e32 v79, v76
	v_div_scale_f32 v77, s9, v67, v74, v67
	v_fmac_f32_e32 v86, v83, v86
	v_div_scale_f32 v83, null, v74, v74, v72
	v_div_fixup_f32 v73, v75, v74, v73
	v_fma_f32 v78, -v82, v81, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v85, v87, 1.0
	v_rcp_f32_e32 v89, v83
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v76, v79, 1.0
	v_mul_f32_e32 v82, v77, v86
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v87, v75, v87
	v_div_scale_f32 v75, s10, v66, v74, v66
	v_fmac_f32_e32 v79, v88, v79
	v_div_scale_f32 v88, null, v74, v74, v69
	v_div_fmas_f32 v78, v78, v84, v81
	v_fma_f32 v81, -v80, v82, v77
	v_mul_f32_e32 v84, v75, v87
	v_div_scale_f32 v90, s11, v7, v74, v7
	v_fma_f32 v91, -v83, v89, 1.0
	v_rcp_f32_e32 v92, v88
	v_fmac_f32_e32 v82, v81, v86
	v_fma_f32 v81, -v85, v84, v75
	v_mul_f32_e32 v93, v90, v79
	v_fmac_f32_e32 v89, v91, v89
	v_div_scale_f32 v91, s12, v72, v74, v72
	v_div_fixup_f32 v71, v78, v74, v71
	v_fma_f32 v77, -v80, v82, v77
	v_fmac_f32_e32 v84, v81, v87
	v_fma_f32 v78, -v76, v93, v90
	v_mul_f32_e32 v80, v91, v89
	v_fma_f32 v81, -v88, v92, 1.0
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v75, -v85, v84, v75
	v_fmac_f32_e32 v93, v78, v79
	v_fma_f32 v78, -v83, v80, v91
	v_fmac_f32_e32 v92, v81, v92
	v_div_scale_f32 v81, s9, v69, v74, v69
	v_div_fmas_f32 v77, v77, v86, v82
	v_fma_f32 v76, -v76, v93, v90
	v_fmac_f32_e32 v80, v78, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v78, v81, v92
	v_div_scale_f32 v82, null, v74, v74, v57
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v67, v77, v74, v67
	v_div_fmas_f32 v75, v75, v87, v84
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v84, v82
	v_div_fmas_f32 v76, v76, v79, v93
	v_fma_f32 v79, -v83, v80, v91
	v_fma_f32 v83, -v88, v78, v81
	v_div_fixup_f32 v66, v75, v74, v66
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v7, v76, v74, v7
	v_div_fmas_f32 v79, v79, v89, v80
	v_fmac_f32_e32 v78, v83, v92
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v77, -v82, v84, 1.0
	v_div_scale_f32 v76, null, v74, v74, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v88, v78, v81
	v_div_fixup_f32 v72, v79, v74, v72
	v_fmac_f32_e32 v84, v77, v84
	v_div_scale_f32 v79, null, v74, v74, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v75, v75, v92, v78
	v_div_scale_f32 v80, vcc_lo, v57, v74, v57
	v_rcp_f32_e32 v78, v76
	v_rcp_f32_e32 v83, v79
	v_div_scale_f32 v86, null, v74, v74, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v85, v80, v84
	v_div_fixup_f32 v69, v75, v74, v69
	v_div_scale_f32 v77, null, v74, v74, v0
	v_rcp_f32_e32 v88, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fma_f32 v89, -v82, v85, v80
	v_fma_f32 v75, -v76, v78, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v90, -v79, v83, 1.0
	v_rcp_f32_e32 v81, v77
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v85, v89, v84 :: v_dual_fmac_f32 v78, v75, v78
	v_div_scale_f32 v75, s9, v48, v74, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v92, -v86, v88, 1.0
	v_fma_f32 v80, -v82, v85, v80
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v91, v75, v78
	v_fma_f32 v87, -v77, v81, 1.0
	v_fmac_f32_e32 v88, v92, v88
	v_div_fmas_f32 v80, v80, v84, v85
	s_mov_b32 vcc_lo, s9
	s_mov_b32 s9, 0xc1000000
	v_fma_f32 v89, -v76, v91, v75
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v41, v41, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v92, s12, v6, v74, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s9, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v89, v78
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v90, v83
	v_div_scale_f32 v90, s11, v5, v74, v5
	v_mul_f32_e32 v95, v92, v88
	v_fma_f32 v75, -v76, v91, v75
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v36, v36, s9, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v90, v83
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v51, v51, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v86, v95, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v44, v44, s9, 0x40e00000
	v_med3_f32 v50, v50, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v79, v94, v90
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v9, v9, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v76, v88
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v51, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v94, v89, v83 :: v_dual_fmac_f32 v81, v87, v81
	v_div_scale_f32 v87, s10, v0, v74, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v84, v44
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v79, v94, v90
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v79, v42
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v90, v9
	v_and_b32_e32 v9, 15, v36
	v_and_b32_e32 v44, 15, v79
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v75, v75, v78, v91
	v_dual_mul_f32 v93, v87, v81 :: v_dual_and_b32 v36, 15, v51
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v42, 15, v50
	v_med3_f32 v56, v56, s9, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v48, v75, v74, v48
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v77, v93, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v56, v56
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v93, v82, v81
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v38, v38, s9, 0x40e00000
	v_med3_f32 v43, v43, s9, 0x40e00000
	v_med3_f32 v48, v48, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v18, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v100, v48
	v_and_b32_e32 v48, 15, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v77, v93, v87
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v28, v28, s9, 0x40e00000
	v_med3_f32 v31, v31, s9, 0x40e00000
	v_med3_f32 v17, v17, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v81, v93
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v7, v7
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v0, v77, v74, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v77, v38
	v_and_b32_e32 v38, 15, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v76, v83, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v83, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s12
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v21, v21, s9, 0x40e00000
	v_med3_f32 v29, v29, s9, 0x40e00000
	v_and_b32_e32 v50, 15, v83
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v86, v95, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v19, v19, s9, 0x40e00000
	v_med3_f32 v18, v18, s9, 0x40e00000
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v88, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v57, v80, v74, v57
	v_div_fixup_f32 v5, v76, v74, v5
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v6, v78, v74, v6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v6, v6
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v15, v15
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v6, v6, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v58, v58
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v39, v39, s9, 0x40e00000
	v_med3_f32 v13, v13, s9, 0x40e00000
	v_med3_f32 v12, v12, s9, 0x40e00000
	v_med3_f32 v7, v7, s9, 0x40e00000
	v_med3_f32 v0, v0, s9, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v102, v6
	v_and_b32_e32 v6, 15, v28
	v_and_b32_e32 v28, 15, v31
	v_and_b32_e32 v31, 15, v17
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v17, 10, v103
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v5, v5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v32, v32, s9, 0x40e00000
	v_med3_f32 v24, v24, s9, 0x40e00000
	v_med3_f32 v35, v35, s9, 0x40e00000
	v_med3_f32 v30, v30, s9, 0x40e00000
	v_med3_f32 v37, v37, s9, 0x40e00000
	v_med3_f32 v45, v45, s9, 0x40e00000
	v_med3_f32 v40, v40, s9, 0x40e00000
	v_med3_f32 v33, v33, s9, 0x40e00000
	v_med3_f32 v34, v34, s9, 0x40e00000
	v_med3_f32 v46, v46, s9, 0x40e00000
	v_med3_f32 v15, v15, s9, 0x40e00000
	v_med3_f32 v49, v49, s9, 0x40e00000
	v_med3_f32 v52, v52, s9, 0x40e00000
	v_med3_f32 v65, v65, s9, 0x40e00000
	v_med3_f32 v64, v64, s9, 0x40e00000
	v_med3_f32 v61, v61, s9, 0x40e00000
	v_med3_f32 v58, v58, s9, 0x40e00000
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v81, v13
	v_cvt_i32_f32_e32 v82, v12
	v_cvt_i32_f32_e32 v96, v7
	v_cvt_i32_f32_e32 v0, v0
	v_and_b32_e32 v7, 15, v21
	v_and_b32_e32 v12, 15, v29
	v_and_b32_e32 v13, 15, v19
	v_and_b32_e32 v29, 15, v18
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v18, 4, v105
	v_and_b32_e32 v17, 0x1800, v17
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 6, v4
	v_lshlrev_b32_e32 v21, 6, v103
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v47, v47, s9, 0x40e00000
	v_med3_f32 v16, v16, s9, 0x40e00000
	v_med3_f32 v59, v59, s9, 0x40e00000
	v_med3_f32 v14, v14, s9, 0x40e00000
	v_med3_f32 v68, v68, s9, 0x40e00000
	v_med3_f32 v11, v11, s9, 0x40e00000
	v_med3_f32 v70, v70, s9, 0x40e00000
	v_med3_f32 v63, v63, s9, 0x40e00000
	v_med3_f32 v62, v62, s9, 0x40e00000
	v_med3_f32 v73, v73, s9, 0x40e00000
	v_med3_f32 v72, v72, s9, 0x40e00000
	v_med3_f32 v69, v69, s9, 0x40e00000
	v_med3_f32 v57, v57, s9, 0x40e00000
	v_med3_f32 v10, v10, s9, 0x40e00000
	v_med3_f32 v8, v8, s9, 0x40e00000
	v_med3_f32 v67, v67, s9, 0x40e00000
	v_med3_f32 v66, v66, s9, 0x40e00000
	v_med3_f32 v5, v5, s9, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v75, v33
	v_cvt_i32_f32_e32 v76, v34
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v78, v15
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v91, v64
	v_cvt_i32_f32_e32 v92, v61
	v_cvt_i32_f32_e32 v93, v58
	v_and_b32_e32 v15, 15, v39
	v_and_b32_e32 v39, 15, v77
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v18, v18, v26
	v_add3_u32 v17, 0, v17, v19
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v77, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v0, 0x1b00, v21, v22
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v74, v16
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v80, v14
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v86, v11
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v97, v72
	v_cvt_i32_f32_e32 v98, v69
	v_cvt_i32_f32_e32 v99, v57
	v_cvt_i32_f32_e32 v88, v10
	v_cvt_i32_f32_e32 v89, v8
	v_cvt_i32_f32_e32 v94, v67
	v_cvt_i32_f32_e32 v95, v66
	v_cvt_i32_f32_e32 v101, v5
	v_and_b32_e32 v5, 15, v32
	v_and_b32_e32 v8, 15, v24
	v_and_b32_e32 v10, 15, v35
	v_and_b32_e32 v11, 15, v30
	v_and_b32_e32 v16, 15, v37
	v_and_b32_e32 v32, 15, v45
	v_and_b32_e32 v33, 15, v40
	v_and_b32_e32 v34, 15, v75
	v_and_b32_e32 v35, 15, v76
	v_and_b32_e32 v37, 15, v46
	v_and_b32_e32 v43, 15, v49
	v_and_b32_e32 v49, 15, v52
	v_and_b32_e32 v51, 15, v84
	v_and_b32_e32 v64, 15, v65
	v_and_b32_e32 v65, 15, v91
	v_and_b32_e32 v66, 15, v92
	v_and_b32_e32 v67, 15, v93
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v17, v17, v18, v25
	v_xad_u32 v0, v0, v106, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v14, 15, v47
	v_and_b32_e32 v30, 15, v74
	v_and_b32_e32 v40, 15, v78
	v_and_b32_e32 v41, 15, v59
	v_and_b32_e32 v45, 15, v80
	v_and_b32_e32 v46, 15, v81
	v_and_b32_e32 v47, 15, v82
	v_and_b32_e32 v56, 15, v86
	v_and_b32_e32 v57, 15, v70
	v_and_b32_e32 v58, 15, v63
	v_and_b32_e32 v59, 15, v62
	v_and_b32_e32 v72, 15, v96
	v_and_b32_e32 v74, 15, v98
	v_and_b32_e32 v75, 15, v99
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v52, 15, v68
	v_and_b32_e32 v68, 15, v73
	v_and_b32_e32 v73, 15, v97
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v53, v53
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
	ds_store_b128 v17, v[32:35]
	ds_store_b128 v17, v[40:43] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[32:35], v0
	ds_load_b128 v[40:43], v0 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v17, v[48:51]
	ds_store_b128 v17, v[56:59] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v0
	ds_load_b128 v[56:59], v0 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v17, v[64:67]
	ds_store_b128 v17, v[72:75] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[64:67], v0
	ds_load_b128 v[72:75], v0 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v17, v[9:12]
	ds_store_b128 v17, v[28:31] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v0
	ds_load_b128 v[28:31], v0 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v17, v[36:39]
	ds_store_b128 v17, v[44:47] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[36:39], v0
	ds_load_b128 v[44:47], v0 offset:1024
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v71
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v60, v60, s9, 0x40e00000
	v_med3_f32 v55, v55, s9, 0x40e00000
	v_med3_f32 v53, v53, s9, 0x40e00000
	v_med3_f32 v54, v54, s9, 0x40e00000
	v_med3_f32 v71, v71, s9, 0x40e00000
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v85, v53
	v_cvt_i32_f32_e32 v87, v54
	v_cvt_i32_f32_e32 v71, v71
	v_and_b32_e32 v53, 15, v60
	v_and_b32_e32 v54, 15, v55
	v_and_b32_e32 v55, 15, v85
	v_and_b32_e32 v60, 15, v87
	v_and_b32_e32 v61, 15, v88
	v_and_b32_e32 v62, 15, v89
	v_and_b32_e32 v63, 15, v90
	v_and_b32_e32 v69, 15, v71
	v_and_b32_e32 v70, 15, v94
	v_and_b32_e32 v71, 15, v95
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v17, v[52:55]
	ds_store_b128 v17, v[60:63] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[52:55], v0
	ds_load_b128 v[60:63], v0 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v76, 15, v100
	v_and_b32_e32 v78, 15, v101
	v_and_b32_e32 v79, 15, v102
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v24, v44, 4, v36
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v44, 3, v105
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v5, v13, 4, v5
	v_lshl_or_b32 v13, v15, 4, v7
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v7, s28, v23
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v17, v[68:71]
	ds_store_b128 v17, v[76:79] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[68:71], v0
	ds_load_b128 v[76:79], v0 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s9, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s37, 7, v44
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v15, v28, 4, v9
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s9, s33, s9
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 16, v7
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v6, v14, 4, v6
	v_lshl_or_b32 v14, v16, 4, v8
	v_lshl_or_b32 v16, v29, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 32, v7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v17, v30, 4, v11
	v_lshl_or_b32 v12, v31, 4, v12
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s9, s9, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 48, v7
	v_mad_u64_u32 v[7:8], null, v7, s9, v[0:1]
	v_mad_u64_u32 v[8:9], null, v9, s9, v[0:1]
	v_mad_u64_u32 v[9:10], null, v10, s9, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v26, v46, 4, v38
	v_lshl_or_b32 v28, v47, 4, v39
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v11, s9, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v14.l
	v_and_b16 v0.h, 0xff, v13.l
	v_lshlrev_b16 v1.l, 8, v6.l
	v_and_b16 v2.l, 0xff, v5.l
	v_lshlrev_b16 v5.l, 8, v12.l
	v_and_b16 v5.h, 0xff, v17.l
	v_lshlrev_b16 v6.l, 8, v16.l
	v_and_b16 v6.h, 0xff, v15.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v18, v40, 4, v32
	v_lshl_or_b32 v19, v41, 4, v33
	v_lshl_or_b32 v21, v42, 4, v34
	v_lshl_or_b32 v22, v43, 4, v35
	v_lshl_or_b32 v25, v45, 4, v37
	v_lshl_or_b32 v35, v62, 4, v54
	v_lshl_or_b32 v36, v63, 4, v55
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v2.l, v1.l
	v_or_b16 v12.h, v5.h, v5.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v5.l, 8, v28.l
	v_and_b16 v5.h, 0xff, v26.l
	s_mov_b32 s12, s16
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v29, v56, 4, v48
	v_lshl_or_b32 v30, v57, 4, v49
	v_lshl_or_b32 v31, v58, 4, v50
	v_lshl_or_b32 v32, v59, 4, v51
	v_lshl_or_b32 v33, v60, 4, v52
	v_lshl_or_b32 v34, v61, 4, v53
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v43, v78, 4, v70
	v_lshl_or_b32 v23, v79, 4, v71
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v22.l
	v_and_b16 v0.h, 0xff, v21.l
	v_lshlrev_b16 v1.l, 8, v19.l
	v_and_b16 v2.l, 0xff, v18.l
	v_lshlrev_b16 v6.l, 8, v25.l
	v_and_b16 v6.h, 0xff, v24.l
	buffer_store_b64 v[11:12], v7, s[12:15], 0 offen
	v_or_b16 v12.h, v5.h, v5.l
	v_lshlrev_b16 v5.l, 8, v36.l
	v_and_b16 v5.h, 0xff, v35.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v37, v72, 4, v64
	v_lshl_or_b32 v38, v73, 4, v65
	v_lshl_or_b32 v39, v74, 4, v66
	v_lshl_or_b32 v40, v75, 4, v67
	v_lshl_or_b32 v41, v76, 4, v68
	v_lshl_or_b32 v42, v77, 4, v69
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v2.l, v1.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e32 v7, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v0.l, 8, v32.l
	v_and_b16 v0.h, 0xff, v31.l
	v_lshlrev_b16 v1.l, 8, v30.l
	v_and_b16 v2.l, 0xff, v29.l
	v_lshlrev_b16 v6.l, 8, v34.l
	v_and_b16 v6.h, 0xff, v33.l
	v_or_b16 v8.h, v5.h, v5.l
	v_lshlrev_b16 v5.l, 8, v23.l
	v_and_b16 v5.h, 0xff, v43.l
	buffer_store_b64 v[11:12], v7, s[12:15], 0 offen
	v_or_b16 v7.h, v0.h, v0.l
	v_or_b16 v7.l, v2.l, v1.l
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v0.l, 8, v40.l
	v_and_b16 v0.h, 0xff, v39.l
	v_lshlrev_b16 v1.l, 8, v38.l
	v_and_b16 v2.l, 0xff, v37.l
	v_lshlrev_b16 v6.l, 8, v42.l
	v_and_b16 v6.h, 0xff, v41.l
	v_or_b16 v12.h, v5.h, v5.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v5, 4, v103
	v_lshrrev_b32_e32 v4, 2, v4
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.l, v2.l, v1.l
	v_or_b16 v12.l, v6.h, v6.l
	v_dual_cndmask_b32 v0, 0x80000000, v10 :: v_dual_and_b32 v5, 2, v5
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v4
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[7:8], v9, s[12:15], 0 offen
	buffer_store_b64 v[11:12], v0, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v44
	v_mov_b16_e32 v2.l, v27.h
	v_mov_b16_e32 v1.l, v20.h
	v_add3_u32 v4, v4, v5, v44
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
	v_cmp_eq_u32_e32 vcc_lo, 0, v104
	s_and_b32 s13, s19, 0xffff
	s_mov_b32 s12, s18
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v1, v1, s37, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[12:15], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp67:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 368
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 42
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 368
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 30592
; TotalNumSgprs: 44
; NumVgprs: 256
; ScratchSize: 368
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
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
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 368
    .sgpr_count:     44
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 91
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
