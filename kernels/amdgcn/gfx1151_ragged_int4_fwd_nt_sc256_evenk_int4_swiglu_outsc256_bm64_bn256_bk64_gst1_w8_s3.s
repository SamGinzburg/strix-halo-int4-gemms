	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[36:37], s[0:1], 0x5c
	v_mov_b32_e32 v105, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_and_b32_e32 v11, 16, v105
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
	s_sub_i32 s4, s37, s8
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
	s_sub_i32 s37, s3, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s37, s9
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
	s_load_b64 s[28:29], s[4:5], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s4, s6, s2
	s_addc_u32 s5, s7, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s6, s8, s2
	s_addc_u32 s7, s9, s3
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s36, 0
	s_mov_b32 s8, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v5, 16, v105
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; ragged.py:0:22
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow588
	s_load_b128 s[20:23], s[0:1], 0x40
	s_load_b64 s[30:31], s[4:5], 0x0
	s_load_b64 s[34:35], s[6:7], 0x0
	v_dual_mov_b32 v87, 0 :: v_dual_and_b32 v106, 15, v105
	v_dual_mov_b32 v102, 0 :: v_dual_and_b32 v107, 0xf0, v105
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v136, 3, v105
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v243, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v249, 0
	v_mov_b32_e32 v244, 0
	v_mov_b32_e32 v248, 0
	v_mov_b32_e32 v250, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x2
	s_load_b64 s[4:5], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s9, s[0:1], 0x58
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v10, 2, v105
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s0, s28, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s29, 0, s0
	v_add_co_u32 v2, s0, s28, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_u32 v4, vcc_lo, v0, 16
	v_add_co_ci_u32_e64 v3, null, s29, 0, s0
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_add_u32 s10, s4, s2
	s_addc_u32 s11, s5, s3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v8, vcc_lo, v0, 48
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s10, s[10:11], 0x0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, 0, v1, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[30:31], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[34:35], v[2:3]
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v2, s28, v106
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[30:31], v[4:5]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[34:35], v[4:5]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[30:31], v[8:9]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_add_nc_u32_e32 v4, 16, v2
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[34:35], v[8:9]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[30:31], v[0:1]
	v_cmp_le_i64_e64 s2, s[30:31], v[6:7]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[34:35], v[0:1]
	v_cmp_gt_i64_e64 s7, s[34:35], v[6:7]
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v5, 32, v2
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v6, 48, v2
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v2, v2, s36
	v_mul_lo_u32 v4, v4, s36
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v145, 0 :: v_dual_and_b32 v0, 1, v105
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s3, s5, s8
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s5, s33, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s24, s37, 8
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s4, s9, s5
	v_dual_mov_b32 v137, 0 :: v_dual_lshlrev_b32 v146, 4, v0
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:256
	scratch_store_b32 off, v11, off offset:292
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s8, s4, s10
	v_bfe_u32 v7, v105, 4, 1
	v_cmp_eq_u32_e64 s4, 0, v11
	v_dual_mov_b32 v254, 0 :: v_dual_lshlrev_b32 v11, 2, v107
	v_dual_mov_b32 v243, 0 :: v_dual_lshlrev_b32 v0, 5, v0
	v_or_b32_e32 v12, s24, v105
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:260
	scratch_store_b32 off, v106, off offset:284
	v_mul_lo_u32 v4, v5, s36
	v_dual_mov_b32 v138, 0 :: v_dual_lshlrev_b32 v5, 1, v105
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_lshrrev_b32_e32 v1, 1, v105
	v_add3_u32 v0, 0, v11, v0
	v_mov_b32_e32 v252, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v251, 0 :: v_dual_and_b32 v8, 24, v5
	v_and_or_b32 v7, v5, 30, v7
	v_and_b32_e32 v5, 28, v5
	v_or_b32_e32 v3, s24, v1
	v_mov_b32_e32 v239, 0
	v_lshlrev_b32_e32 v9, 3, v105
	v_dual_mov_b32 v134, 0 :: v_dual_and_b32 v1, 24, v1
	v_add_nc_u32_e32 v0, v0, v5
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:264
	scratch_store_b32 off, v107, off offset:288
	v_mul_lo_u32 v4, v6, s36
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v2, 0x80, v3
	v_lshl_or_b32 v147, v106, 5, v8
	v_dual_mov_b32 v253, 0 :: v_dual_add_nc_u32 v6, s33, v3
	v_dual_mov_b32 v249, 0 :: v_dual_add_nc_u32 v10, s28, v10
	v_mad_u64_u32 v[129:130], null, v3, s9, s[8:9]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:268
	scratch_store_b32 off, v105, off offset:280
	v_dual_mov_b32 v255, 0 :: v_dual_add_nc_u32 v4, s33, v2
	v_dual_mov_b32 v247, 0 :: v_dual_lshlrev_b32 v152, 2, v7
	v_xor_b32_e32 v7, 8, v147
	v_xor_b32_e32 v8, 16, v147
	v_dual_mov_b32 v246, 0 :: v_dual_lshlrev_b32 v11, 1, v107
	v_mad_u64_u32 v[130:131], null, s9, v2, s[8:9]
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_xor_b32_e32 v1, v9, v1
	v_xor_b32_e32 v9, 24, v147
	v_mad_u64_u32 v[131:132], null, v6, s9, s[8:9]
	v_mul_lo_u32 v154, v10, s9
	v_mad_u64_u32 v[132:133], null, v4, s9, s[8:9]
	v_xor_b32_e32 v153, 4, v152
	v_dual_mov_b32 v250, 0 :: v_dual_add_nc_u32 v155, 0, v1
	v_dual_mov_b32 v245, 0 :: v_dual_add_nc_u32 v140, 0, v7
	v_dual_mov_b32 v248, 0 :: v_dual_add_nc_u32 v141, 0, v8
	v_dual_mov_b32 v241, 0 :: v_dual_add_nc_u32 v142, 0, v9
	v_dual_mov_b32 v244, 0 :: v_dual_add_nc_u32 v143, 0, v11
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v166, 0
	v_mov_b32_e32 v167, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v87, 0
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v102, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s6
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s6, s36, s10
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, s2, s7
	s_mov_b32 s7, 0
	s_mov_b32 s8, s12
	s_mov_b32 s9, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
	s_mov_b32 s24, s16
	s_mov_b32 s25, s17
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s10
	s_mov_b32 s19, s11
	scratch_store_b32 off, v12, off offset:272 ; 4-byte Folded Spill
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 20 is_stmt 0                ; ragged.py:0:20
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v188, off offset:252
	scratch_store_b32 off, v174, off offset:248
	scratch_store_b32 off, v173, off offset:244
	scratch_store_b32 off, v172, off offset:240
	scratch_store_b32 off, v169, off offset:236
	scratch_store_b32 off, v167, off offset:232
	scratch_store_b32 off, v166, off offset:228
	scratch_store_b32 off, v165, off offset:224
	scratch_store_b32 off, v163, off offset:220
	scratch_store_b32 off, v162, off offset:216
	scratch_store_b32 off, v161, off offset:212
	scratch_store_b32 off, v160, off offset:208
	scratch_store_b32 off, v159, off offset:204
	scratch_store_b32 off, v158, off offset:200
	scratch_store_b32 off, v156, off offset:196
	scratch_store_b32 off, v157, off offset:192
	scratch_store_b32 off, v151, off offset:188
	scratch_store_b32 off, v150, off offset:184
	scratch_store_b32 off, v149, off offset:180
	scratch_store_b32 off, v148, off offset:176
	scratch_store_b32 off, v164, off offset:172
	scratch_store_b32 off, v128, off offset:168
	scratch_store_b32 off, v127, off offset:164
	scratch_store_b32 off, v126, off offset:160
	scratch_store_b32 off, v125, off offset:156
	scratch_store_b32 off, v124, off offset:152
	scratch_store_b32 off, v115, off offset:148
	scratch_store_b32 off, v114, off offset:144
	scratch_store_b32 off, v123, off offset:140
	scratch_store_b32 off, v122, off offset:136
	scratch_store_b32 off, v121, off offset:132
	scratch_store_b32 off, v120, off offset:128
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v99, off offset:124
	scratch_store_b32 off, v98, off offset:120
	scratch_store_b32 off, v97, off offset:116
	scratch_store_b32 off, v96, off offset:112
	scratch_store_b32 off, v104, off offset:108
	scratch_store_b32 off, v113, off offset:104
	scratch_store_b32 off, v112, off offset:100
	scratch_store_b32 off, v103, off offset:96
	scratch_store_b32 off, v95, off offset:92
	scratch_store_b32 off, v94, off offset:88
	scratch_store_b32 off, v93, off offset:84
	scratch_store_b32 off, v92, off offset:80
	scratch_store_b32 off, v119, off offset:76
	scratch_store_b32 off, v118, off offset:72
	scratch_store_b32 off, v117, off offset:68
	scratch_store_b32 off, v116, off offset:64
	scratch_store_b32 off, v91, off offset:60
	scratch_store_b32 off, v90, off offset:56
	scratch_store_b32 off, v89, off offset:52
	scratch_store_b32 off, v83, off offset:48
	scratch_store_b32 off, v111, off offset:44
	scratch_store_b32 off, v110, off offset:40
	scratch_store_b32 off, v109, off offset:36
	scratch_store_b32 off, v108, off offset:32
	scratch_store_b32 off, v88, off offset:28
	scratch_store_b32 off, v86, off offset:24
	scratch_store_b32 off, v85, off offset:20
	scratch_store_b32 off, v84, off offset:16
	scratch_store_b32 off, v102, off offset:12
	scratch_store_b32 off, v87, off offset:8
	scratch_store_b32 off, v101, off offset:4
	scratch_store_b32 off, v100, off
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v145
	v_mov_b32_e32 v3, v145
	v_dual_mov_b32 v4, v145 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v5, v145
	v_dual_mov_b32 v6, v145 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v7, v145
	v_dual_mov_b32 v8, v145 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v10, v145 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v11, v145
	v_dual_mov_b32 v12, v145 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v13, v145
	v_dual_mov_b32 v14, v145 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v15, v145
	v_dual_mov_b32 v16, v145 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v18, v145 :: v_dual_mov_b32 v65, 0
	v_mov_b32_e32 v19, v145
	v_dual_mov_b32 v20, v145 :: v_dual_mov_b32 v73, 0
	v_mov_b32_e32 v21, v145
	v_dual_mov_b32 v22, v145 :: v_dual_mov_b32 v81, 0
	v_mov_b32_e32 v23, v145
	v_dual_mov_b32 v24, v145 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v26, v145 :: v_dual_mov_b32 v97, 0
	v_mov_b32_e32 v27, v145
	v_dual_mov_b32 v28, v145 :: v_dual_mov_b32 v105, 0
	v_mov_b32_e32 v29, v145
	v_dual_mov_b32 v30, v145 :: v_dual_mov_b32 v113, 0
	v_mov_b32_e32 v31, v145
	v_dual_mov_b32 v32, v145 :: v_dual_mov_b32 v121, 0
	v_mov_b32_e32 v34, v145
	v_mov_b32_e32 v35, v145
	v_mov_b32_e32 v36, v145
	v_mov_b32_e32 v37, v145
	v_mov_b32_e32 v38, v145
	v_mov_b32_e32 v39, v145
	v_mov_b32_e32 v40, v145
	v_mov_b32_e32 v42, v145
	v_mov_b32_e32 v43, v145
	v_mov_b32_e32 v44, v145
	v_mov_b32_e32 v45, v145
	v_mov_b32_e32 v46, v145
	v_mov_b32_e32 v47, v145
	v_mov_b32_e32 v48, v145
	v_mov_b32_e32 v50, v145
	v_mov_b32_e32 v51, v145
	v_mov_b32_e32 v52, v145
	v_mov_b32_e32 v53, v145
	v_mov_b32_e32 v54, v145
	v_mov_b32_e32 v55, v145
	v_mov_b32_e32 v56, v145
	v_mov_b32_e32 v58, v145
	v_mov_b32_e32 v59, v145
	v_mov_b32_e32 v60, v145
	v_mov_b32_e32 v61, v145
	v_mov_b32_e32 v62, v145
	v_mov_b32_e32 v63, v145
	v_mov_b32_e32 v64, v145
	v_mov_b32_e32 v66, v145
	v_mov_b32_e32 v67, v145
	v_mov_b32_e32 v68, v145
	v_mov_b32_e32 v69, v145
	v_mov_b32_e32 v70, v145
	v_mov_b32_e32 v71, v145
	v_mov_b32_e32 v72, v145
	v_mov_b32_e32 v74, v145
	v_mov_b32_e32 v75, v145
	v_mov_b32_e32 v76, v145
	v_mov_b32_e32 v77, v145
	v_mov_b32_e32 v78, v145
	v_mov_b32_e32 v79, v145
	v_mov_b32_e32 v80, v145
	v_mov_b32_e32 v82, v145
	v_mov_b32_e32 v83, v145
	v_mov_b32_e32 v84, v145
	v_mov_b32_e32 v85, v145
	v_mov_b32_e32 v86, v145
	v_mov_b32_e32 v87, v145
	v_mov_b32_e32 v88, v145
	v_mov_b32_e32 v90, v145
	v_mov_b32_e32 v91, v145
	v_mov_b32_e32 v92, v145
	v_mov_b32_e32 v93, v145
	v_mov_b32_e32 v94, v145
	v_mov_b32_e32 v95, v145
	v_mov_b32_e32 v96, v145
	v_mov_b32_e32 v98, v145
	v_mov_b32_e32 v99, v145
	v_mov_b32_e32 v100, v145
	v_mov_b32_e32 v101, v145
	v_mov_b32_e32 v102, v145
	v_mov_b32_e32 v103, v145
	v_mov_b32_e32 v104, v145
	v_mov_b32_e32 v106, v145
	v_mov_b32_e32 v107, v145
	v_mov_b32_e32 v108, v145
	v_mov_b32_e32 v109, v145
	v_mov_b32_e32 v110, v145
	v_mov_b32_e32 v111, v145
	v_mov_b32_e32 v112, v145
	v_mov_b32_e32 v114, v145
	v_mov_b32_e32 v115, v145
	v_mov_b32_e32 v116, v145
	v_mov_b32_e32 v117, v145
	v_mov_b32_e32 v118, v145
	v_mov_b32_e32 v119, v145
	v_mov_b32_e32 v120, v145
	v_mov_b32_e32 v122, v145
	v_mov_b32_e32 v123, v145
	v_mov_b32_e32 v124, v145
	v_mov_b32_e32 v125, v145
	v_mov_b32_e32 v126, v145
	v_mov_b32_e32 v127, v145
	v_mov_b32_e32 v128, v145
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s38, s7, 7
	s_mov_b32 s39, 0
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshlrev_b32_e32 v148, 3, v136
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_add_i32 s40, s39, s38
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_add_nc_u32_e32 v165, 0, v147
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v162, s40, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b32_e32 v148, s40, v148
	.loc	1 1200 21                       ; ragged.py:1200:21
	s_add_i32 s40, s39, 32
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cmpk_lt_u32 s39, 0x60
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v156, v130, v162
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v164, v131, v162
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_add_nc_u32_e32 v148, v154, v148
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v176, v132, v162
	s_mov_b32 s39, s40
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_dual_cndmask_b32 v148, 0x80000000, v148 :: v_dual_add_nc_u32 v149, v129, v162
	buffer_load_b64 v[160:161], v148, s[8:11], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1
	buffer_load_b128 v[148:151], v149, s[12:15], 0 offen
	buffer_load_b128 v[156:159], v156, s[12:15], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v155, v[160:161]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[160:163], v165 offset1:1
	ds_load_2addr_stride64_b64 v[168:171], v165 offset0:2 offset1:3
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1
	buffer_load_b128 v[164:167], v164, s[12:15], 0 offen
	buffer_load_b128 v[176:179], v176, s[12:15], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(3)
	ds_bpermute_b32 v172, v152, v148
	ds_bpermute_b32 v173, v152, v149
	ds_bpermute_b32 v174, v153, v148
	ds_bpermute_b32 v175, v153, v149
	s_waitcnt vmcnt(2)
	ds_bpermute_b32 v184, v152, v156
	ds_bpermute_b32 v185, v152, v157
	ds_bpermute_b32 v186, v153, v156
	ds_bpermute_b32 v187, v153, v157
	ds_bpermute_b32 v188, v153, v158
	ds_bpermute_b32 v189, v153, v159
	s_waitcnt lgkmcnt(7)
	v_cndmask_b32_e64 v148, v174, v172, s4
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v149, v175, v173, s4
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v156, v186, v184, s4
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v157, v187, v185, s4
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[97:104], v[148:149], v[168:169], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[148:149], v[170:171], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[148:149], v[160:161], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[148:149], v[162:163], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[156:157], v[168:169], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[156:157], v[170:171], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[156:157], v[160:161], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[156:157], v[162:163], v[89:96] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v180, v152, v164
	ds_bpermute_b32 v181, v153, v164
	ds_bpermute_b32 v182, v152, v165
	ds_bpermute_b32 v183, v153, v165
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v192, v152, v176
	ds_bpermute_b32 v193, v153, v176
	ds_bpermute_b32 v194, v152, v177
	ds_bpermute_b32 v195, v153, v177
	ds_bpermute_b32 v200, v152, v166
	ds_bpermute_b32 v190, v153, v166
	ds_bpermute_b32 v201, v152, v167
	ds_bpermute_b32 v202, v153, v167
	ds_bpermute_b32 v203, v152, v178
	ds_bpermute_b32 v178, v153, v178
	ds_bpermute_b32 v191, v152, v179
	ds_bpermute_b32 v179, v153, v179
	s_waitcnt lgkmcnt(14)
	v_cndmask_b32_e64 v164, v181, v180, s4
	s_waitcnt lgkmcnt(12)
	v_cndmask_b32_e64 v165, v183, v182, s4
	s_waitcnt lgkmcnt(10)
	v_cndmask_b32_e64 v176, v193, v192, s4
	s_waitcnt lgkmcnt(8)
	v_cndmask_b32_e64 v177, v195, v194, s4
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[33:40], v[164:165], v[168:169], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[164:165], v[170:171], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[164:165], v[160:161], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[164:165], v[162:163], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[176:177], v[160:161], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[176:177], v[162:163], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[176:177], v[168:169], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[176:177], v[170:171], v[57:64] neg_lo:[1,1,0]
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_bpermute_b32 v168, v152, v150
	ds_bpermute_b32 v169, v152, v151
	ds_bpermute_b32 v170, v153, v150
	ds_bpermute_b32 v171, v153, v151
	ds_bpermute_b32 v176, v152, v158
	ds_bpermute_b32 v177, v152, v159
	.loc	1 1155 34                       ; ragged.py:1155:34
	ds_load_2addr_stride64_b64 v[148:151], v140 offset1:1
	ds_load_2addr_stride64_b64 v[156:159], v140 offset0:2 offset1:3
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(14)
	v_cndmask_b32_e64 v164, v190, v200, s4
	s_waitcnt lgkmcnt(12)
	v_cndmask_b32_e64 v165, v202, v201, s4
	s_waitcnt lgkmcnt(10)
	v_cndmask_b32_e64 v166, v178, v203, s4
	s_waitcnt lgkmcnt(8)
	v_cndmask_b32_e64 v167, v179, v191, s4
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(5)
	v_cndmask_b32_e64 v160, v170, v168, s4
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v161, v171, v169, s4
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v162, v188, v176, s4
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v163, v189, v177, s4
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[164:165], v[148:149], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[166:167], v[148:149], v[9:16] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[65:72], v[160:161], v[148:149], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[160:161], v[150:151], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[162:163], v[148:149], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[162:163], v[150:151], v[89:96] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[164:165], v[150:151], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[166:167], v[150:151], v[25:32] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[97:104], v[160:161], v[156:157], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[160:161], v[158:159], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[162:163], v[156:157], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[162:163], v[158:159], v[121:128] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[33:40], v[164:165], v[156:157], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[164:165], v[158:159], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[166:167], v[156:157], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[166:167], v[158:159], v[57:64] neg_lo:[1,1,0]
	.loc	1 1155 34                       ; ragged.py:1155:34
	ds_load_2addr_stride64_b64 v[148:151], v141 offset1:1
	ds_load_2addr_stride64_b64 v[156:159], v141 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v160, v172, v174, s4
	v_cndmask_b32_e64 v161, v173, v175, s4
	v_cndmask_b32_e64 v162, v184, v186, s4
	v_cndmask_b32_e64 v163, v185, v187, s4
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v164, v180, v181, s4
	v_cndmask_b32_e64 v165, v182, v183, s4
	v_cndmask_b32_e64 v166, v192, v193, s4
	v_cndmask_b32_e64 v167, v194, v195, s4
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[160:161], v[148:149], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[162:163], v[148:149], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[160:161], v[150:151], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[162:163], v[150:151], v[89:96] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[164:165], v[148:149], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[166:167], v[148:149], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[164:165], v[150:151], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[166:167], v[150:151], v[25:32] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[97:104], v[160:161], v[156:157], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[160:161], v[158:159], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[162:163], v[156:157], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[162:163], v[158:159], v[121:128] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[33:40], v[164:165], v[156:157], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[164:165], v[158:159], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[166:167], v[156:157], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[166:167], v[158:159], v[57:64] neg_lo:[1,1,0]
	.loc	1 1155 34                       ; ragged.py:1155:34
	ds_load_2addr_stride64_b64 v[148:151], v142 offset1:1
	ds_load_2addr_stride64_b64 v[156:159], v142 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v160, v168, v170, s4
	v_cndmask_b32_e64 v161, v169, v171, s4
	v_cndmask_b32_e64 v162, v176, v188, s4
	v_cndmask_b32_e64 v163, v177, v189, s4
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v164, v200, v190, s4
	v_cndmask_b32_e64 v165, v201, v202, s4
	v_cndmask_b32_e64 v166, v203, v178, s4
	v_cndmask_b32_e64 v167, v191, v179, s4
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[160:161], v[148:149], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[162:163], v[148:149], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[160:161], v[150:151], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[162:163], v[150:151], v[89:96] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[164:165], v[148:149], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[166:167], v[148:149], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[164:165], v[150:151], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[166:167], v[150:151], v[25:32] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[97:104], v[160:161], v[156:157], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[160:161], v[158:159], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[162:163], v[156:157], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[162:163], v[158:159], v[121:128] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[33:40], v[164:165], v[156:157], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[164:165], v[158:159], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[166:167], v[156:157], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[166:167], v[158:159], v[57:64] neg_lo:[1,1,0]
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_scc1 .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v158, v73
	v_cvt_f32_i32_e32 v151, v74
	v_cvt_f32_i32_e32 v174, v83
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v74, v22
	v_cvt_f32_i32_e32 v73, v23
	v_cvt_f32_i32_e32 v83, v36
	v_cvt_f32_i32_e32 v23, v43
	v_cvt_f32_i32_e32 v22, v44
	v_cvt_f32_i32_e32 v36, v55
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v55, off, off offset:272
	scratch_load_b32 v43, off, off offset:256
	scratch_load_b32 v44, off, off offset:260
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v159, v69
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v69, v7
	v_cvt_f32_i32_e32 v7, v31
	v_cvt_f32_i32_e32 v31, v40
	v_cvt_f32_i32_e32 v40, v51
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v167, v68
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v68, v8
	v_cvt_f32_i32_e32 v8, v32
	v_cvt_f32_i32_e32 v32, v39
	v_cvt_f32_i32_e32 v39, v52
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s38, s7, s6
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v171, v70
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s38, s38, s5
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v70, v6
	v_cvt_f32_i32_e32 v6, v30
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v175, v84
	v_cvt_f32_i32_e32 v177, v86
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v86, v33
	v_cvt_f32_i32_e32 v84, v35
	v_cvt_f32_i32_e32 v33, v38
	v_cvt_f32_i32_e32 v38, v53
	v_cvt_f32_i32_e32 v35, v56
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v164, v65
	v_cvt_f32_i32_e32 v165, v66
	v_cvt_f32_i32_e32 v166, v67
	v_cvt_f32_i32_e32 v169, v72
	v_cvt_f32_i32_e32 v172, v81
	v_cvt_f32_i32_e32 v156, v91
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
	v_cvt_f32_i32_e32 v176, v85
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v85, v34
	v_cvt_f32_i32_e32 v34, v37
	v_cvt_f32_i32_e32 v37, v54
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v178, v87
	v_cvt_f32_i32_e32 v179, v88
	v_cvt_f32_i32_e32 v157, v90
	v_cvt_f32_i32_e32 v163, v92
	v_cvt_f32_i32_e32 v90, v93
	v_cvt_f32_i32_e32 v88, v95
	v_cvt_f32_i32_e32 v87, v96
	v_cvt_f32_i32_e32 v180, v97
	v_cvt_f32_i32_e32 v184, v101
	v_cvt_f32_i32_e32 v186, v103
	v_cvt_f32_i32_e32 v103, v105
	v_cvt_f32_i32_e32 v101, v107
	v_cvt_f32_i32_e32 v95, v109
	v_cvt_f32_i32_e32 v93, v111
	v_cvt_f32_i32_e32 v92, v112
	v_cvt_f32_i32_e32 v109, v114
	v_cvt_f32_i32_e32 v111, v116
	v_cvt_f32_i32_e32 v112, v117
	v_cvt_f32_i32_e32 v114, v119
	v_cvt_f32_i32_e32 v107, v121
	v_cvt_f32_i32_e32 v105, v123
	v_cvt_f32_i32_e32 v97, v127
	v_cvt_f32_i32_e32 v96, v128
	v_cvt_f32_i32_e32 v168, v89
	v_cvt_f32_i32_e32 v89, v94
	v_cvt_f32_i32_e32 v94, v110
	v_cvt_f32_i32_e32 v110, v115
	v_cvt_f32_i32_e32 v173, v82
	v_cvt_f32_i32_e32 v181, v98
	v_cvt_f32_i32_e32 v98, v126
	v_cvt_f32_i32_e32 v183, v100
	v_cvt_f32_i32_e32 v100, v108
	v_cvt_f32_i32_e32 v108, v113
	v_cvt_f32_i32_e32 v113, v118
	v_cvt_f32_i32_e32 v170, v71
	v_cvt_f32_i32_e32 v182, v99
	v_cvt_f32_i32_e32 v185, v102
	v_cvt_f32_i32_e32 v102, v106
	v_cvt_f32_i32_e32 v115, v120
	v_cvt_f32_i32_e32 v106, v122
	v_cvt_f32_i32_e32 v187, v104
	v_cvt_f32_i32_e32 v162, v75
	v_cvt_f32_i32_e32 v150, v76
	v_cvt_f32_i32_e32 v104, v124
	v_cvt_f32_i32_e32 v160, v78
	v_cvt_f32_i32_e32 v149, v79
	v_cvt_f32_i32_e32 v161, v77
	v_cvt_f32_i32_e32 v148, v80
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v78, v2
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v99, v125
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v77, v3
	v_cvt_f32_i32_e32 v76, v4
	v_cvt_f32_i32_e32 v82, v17
	v_cvt_f32_i32_e32 v80, v19
	v_cvt_f32_i32_e32 v79, v20
	v_cvt_f32_i32_e32 v71, v5
	v_cvt_f32_i32_e32 v17, v26
	v_cvt_f32_i32_e32 v4, v16
	v_cvt_f32_i32_e32 v75, v21
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
	v_add_lshl_u32 v30, v55, s38, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v43, s7, v43, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s7, v44, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v30, v30, s[16:19], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v43, 0x80000000, v43, s0
	v_cndmask_b32_e64 v44, 0x80000000, v44, s1
	s_clause 0x1
	buffer_load_u16 v43, v43, s[24:27], 0 offen
	buffer_load_u16 v51, v44, s[24:27], 0 offen
	scratch_load_b32 v44, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v51, 16, v51
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s7, v44, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v5, v51, v5
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v8, v51
	v_mul_f32_e32 v7, v7, v51
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v52, v44, s[24:27], 0 offen
	scratch_load_b32 v44, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s7, v44, 1
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s7, s7, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s7, s36
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v44, 0x80000000, v44, s3
	buffer_load_u16 v53, v44, s[24:27], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v56, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v56, v30
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v30, 16, v43
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[43:46], v143
	ds_load_b128 v[47:50], v143 offset:16
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v127, off, off offset:164
	scratch_load_b32 v128, off, off offset:168
	scratch_load_b32 v116, off, off offset:64
	scratch_load_b32 v117, off, off offset:68
	scratch_load_b32 v119, off, off offset:76
	scratch_load_b32 v121, off, off offset:132
	scratch_load_b32 v123, off, off offset:140
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v30, v164
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v164, off, off offset:172
	scratch_load_b32 v188, off, off offset:252
	scratch_load_b32 v126, off, off offset:160
	scratch_load_b32 v118, off, off offset:72
	scratch_load_b32 v120, off, off offset:128
	scratch_load_b32 v122, off, off offset:136
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v53, v39
	v_mul_f32_e32 v41, v53, v41
	v_mul_f32_e32 v15, v53, v15
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v224, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v30, v165
	scratch_load_b32 v165, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v225, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v30, v166
	scratch_load_b32 v166, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v227, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v30, v167
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v52, 16, v52
	scratch_load_b32 v167, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v42, v53, v42
	v_mul_f32_e32 v10, v30, v10
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v226, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v172
	scratch_load_b32 v172, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v2, v2, v30
	v_mul_f32_e32 v3, v3, v30
	v_mul_f32_e32 v4, v4, v30
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v172, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v173
	scratch_load_b32 v173, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v173, v54, v44 :: v_dual_mul_f32 v54, v51, v174
	scratch_load_b32 v174, off, off offset:248 ; 4-byte Folded Reload
	v_fmac_f32_e32 v188, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v175
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v174, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v180
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v126, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v127, v54, v44 :: v_dual_mul_f32 v54, v52, v182
	v_fmac_f32_e32 v164, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v183
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v128, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v53, v108
	scratch_load_b32 v108, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v116, v54, v43 :: v_dual_mul_f32 v43, v53, v109
	scratch_load_b32 v109, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v158, v30
	scratch_load_b32 v158, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v117, v43, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v110
	scratch_load_b32 v110, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v119, v43, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v111
	scratch_load_b32 v111, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v118, v43, v46 :: v_dual_mul_f32 v43, v30, v159
	scratch_load_b32 v159, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v216, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v30, v171
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v31, v52, v31
	v_mul_f32_e32 v34, v52, v34
	v_dual_mul_f32 v32, v52, v32 :: v_dual_mul_f32 v1, v30, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v217, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v30, v170
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v6, v6, v51
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v218, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v30, v169
	scratch_load_b32 v169, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v219, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v165, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v177
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v166, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v167, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v179
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v169, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v120, v43, v47 :: v_dual_mul_f32 v43, v52, v185
	v_fmac_f32_e32 v121, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v122, v43, v49 :: v_dual_mul_f32 v43, v52, v187
	v_fmac_f32_e32 v123, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v112
	scratch_load_b32 v112, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v108, v43, v47 :: v_dual_mul_f32 v43, v53, v113
	scratch_load_b32 v113, off, off offset:104 ; 4-byte Folded Reload
	v_fmac_f32_e32 v109, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v110, v43, v49 :: v_dual_mul_f32 v43, v53, v115
	v_fmac_f32_e32 v111, v43, v50
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[43:46], v143 offset:512
	ds_load_b128 v[47:50], v143 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v250, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v30, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v208, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v30, v162
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v209, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v30, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v210, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v168, v51
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v244, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v157
	scratch_load_b32 v157, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v157, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v156
	scratch_load_b32 v156, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v156, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v163
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v158, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v103, v52
	scratch_load_b32 v103, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v239, v54, v43 :: v_dual_mul_f32 v54, v52, v102
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
	v_fmac_f32_e32 v235, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v43, v53, v106 :: v_dual_mul_f32 v54, v30, v91
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v100, v43, v44 :: v_dual_mul_f32 v43, v53, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v101, v43, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v104
	scratch_load_b32 v104, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v102, v43, v46 :: v_dual_mul_f32 v43, v30, v161
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v211, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v160, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v249, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v149, v30
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v248, v43, v49 :: v_dual_mul_f32 v43, v148, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v245, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v90
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v159, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v89, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v242, v43, v48 :: v_dual_mul_f32 v43, v88, v51
	v_fmac_f32_e32 v241, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v87, v51
	scratch_load_b32 v87, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v240, v43, v50 :: v_dual_mul_f32 v43, v52, v95
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v104, v43, v47 :: v_dual_mul_f32 v43, v94, v52
	v_fmac_f32_e32 v238, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v93, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v237, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v92, v52
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v236, v43, v50 :: v_dual_mul_f32 v43, v53, v99
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v98, v53
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v234, v43, v48 :: v_dual_mul_f32 v43, v97, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v233, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v96, v53
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v232, v43, v50 :: v_dual_add_nc_u32 v43, s33, v55
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v43, v43, s38, 1
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
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v151, off, off offset:188
	scratch_load_b32 v150, off, off offset:184
	scratch_load_b32 v148, off, off offset:176
	scratch_load_b32 v149, off, off offset:180
	scratch_load_b32 v125, off, off offset:156
	scratch_load_b32 v124, off, off offset:152
	scratch_load_b32 v114, off, off offset:144
	scratch_load_b32 v115, off, off offset:148
	ds_load_b128 v[43:46], v143
	ds_load_b128 v[47:50], v143 offset:16
	s_clause 0xb                            ; 48-byte Folded Reload
	scratch_load_b32 v95, off, off offset:92
	scratch_load_b32 v93, off, off offset:84
	scratch_load_b32 v92, off, off offset:80
	scratch_load_b32 v99, off, off offset:124
	scratch_load_b32 v98, off, off offset:120
	scratch_load_b32 v97, off, off offset:116
	scratch_load_b32 v96, off, off offset:112
	scratch_load_b32 v94, off, off offset:88
	scratch_load_b32 v91, off, off offset:60
	scratch_load_b32 v90, off, off offset:56
	scratch_load_b32 v89, off, off offset:52
	scratch_load_b32 v88, off, off offset:28
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v40, v53, v40
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v163, off, off offset:220
	scratch_load_b32 v162, off, off offset:216
	scratch_load_b32 v160, off, off offset:208
	scratch_load_b32 v161, off, off offset:212
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v231, v54, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v30, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v230, v54, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v30, v77
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v228, v54, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v30, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v229, v54, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v51, v82
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v207, v54, v43 :: v_dual_mul_f32 v54, v51, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v206, v54, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v51, v80
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v205, v54, v45 :: v_dual_mul_f32 v54, v51, v79
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v204, v54, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v52, v86
	scratch_load_b32 v86, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(24)
	v_dual_fmac_f32 v151, v54, v43 :: v_dual_mul_f32 v54, v52, v85
	scratch_load_b32 v85, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(21) lgkmcnt(0)
	v_fmac_f32_e32 v125, v34, v47
	v_fmac_f32_e32 v150, v54, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v52, v84
	scratch_load_b32 v84, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(19)
	v_fmac_f32_e32 v115, v31, v50
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v31, v53, v38
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(16)
	v_fmac_f32_e32 v92, v39, v46
	v_fmac_f32_e32 v148, v54, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v52, v83
	scratch_load_b32 v83, off, off offset:48 ; 4-byte Folded Reload
	v_dual_mul_f32 v39, v30, v71 :: v_dual_fmac_f32 v114, v32, v49
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(11)
	v_fmac_f32_e32 v91, v31, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v31, v53, v37
	v_mul_f32_e32 v33, v52, v33
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v223, v39, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v30, v70
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(10)
	v_dual_fmac_f32 v95, v42, v43 :: v_dual_fmac_f32 v90, v31, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v31, v53, v36
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v124, v33, v48
	v_dual_fmac_f32 v222, v39, v48 :: v_dual_mul_f32 v39, v30, v69
	v_dual_fmac_f32 v149, v54, v46 :: v_dual_fmac_f32 v94, v41, v44
	s_waitcnt vmcnt(9)
	v_fmac_f32_e32 v89, v31, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v31, v53, v35 :: v_dual_fmac_f32 v220, v39, v49
	v_mul_f32_e32 v39, v30, v68
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v93, v40, v45
	v_fmac_f32_e32 v221, v39, v50
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v51, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v199, v39, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v51, v74
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v198, v39, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v51, v73
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v197, v39, v49
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v83, v31, v50
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[31:34], v143 offset:512
	ds_load_b128 v[35:38], v143 offset:528
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v213, v10, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v10, v18, v51 :: v_dual_mul_f32 v39, v51, v72
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v139, v2, v36 :: v_dual_fmac_f32 v138, v3, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v137, v4, v38 :: v_dual_fmac_f32 v0, v10, v31
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v51, v17
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v196, v39, v50 :: v_dual_fmac_f32 v161, v5, v35
	v_dual_fmac_f32 v134, v7, v37 :: v_dual_fmac_f32 v163, v10, v32
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v51, v16
	v_mul_f32_e32 v16, v21, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v162, v10, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v51, v14
	v_mul_f32_e32 v14, v20, v53
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v243, v16, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v160, v10, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v25, v52
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v246, v14, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v255, v10, v31 :: v_dual_mul_f32 v10, v52, v24
	v_dual_fmac_f32 v99, v10, v32 :: v_dual_mul_f32 v10, v52, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v39, v67, v30 :: v_dual_fmac_f32 v98, v10, v33
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v144, v39, v31 :: v_dual_mul_f32 v39, v30, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v10, v52, v22 :: v_dual_fmac_f32 v215, v39, v32
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v97, v10, v34 :: v_dual_mul_f32 v10, v29, v53
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v30, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v251, v10, v31 :: v_dual_mul_f32 v10, v53, v28
	v_fmac_f32_e32 v214, v39, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v10, v32
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v53, v27
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v86, v10, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v53, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v85, v10, v34 :: v_dual_mul_f32 v10, v11, v52
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v11, v12, v52
	v_dual_mul_f32 v12, v13, v52 :: v_dual_mul_f32 v9, v52, v9
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v212, v1, v35 :: v_dual_mul_f32 v13, v19, v53
	v_dual_fmac_f32 v133, v6, v36 :: v_dual_fmac_f32 v252, v12, v38
	v_dual_fmac_f32 v135, v8, v38 :: v_dual_fmac_f32 v254, v10, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v96, v9, v35 :: v_dual_fmac_f32 v253, v11, v37
	v_dual_fmac_f32 v84, v15, v35 :: v_dual_fmac_f32 v247, v13, v36
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v5, off, off offset:292
	scratch_load_b32 v105, off, off offset:280
	scratch_load_b32 v106, off, off offset:284
	scratch_load_b32 v107, off, off offset:288
.LBB0_9:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v1, 0xbfb8aa3b, v144 :: v_dual_mul_f32 v10, 0xbfb8aa3b, v231
	v_mul_f32_e32 v41, 0xbfb8aa3b, v206
	v_dual_mul_f32 v39, 0xbfb8aa3b, v204 :: v_dual_mul_f32 v48, 0xbfb8aa3b, v162
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_dual_mul_f32 v1, 0xbfb8aa3b, v139 :: v_dual_mul_f32 v2, 0xbfb8aa3b, v138
	v_mul_f32_e32 v56, 0xbfb8aa3b, v97
	v_dual_mul_f32 v6, 0xbfb8aa3b, v228 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v229
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_mul_f32_e32 v9, 0xbfb8aa3b, v230
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_dual_mul_f32 v23, 0xbfb8aa3b, v221 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v220
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v144
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v3, 0xbfb8aa3b, v137
	v_cndmask_b32_e64 v11, 0, 0x42800000, s0
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v14, v8
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v139
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v3
	v_dual_fmac_f32 v11, 0xbfb8aa3b, v138 :: v_dual_mul_f32 v8, 0xbfb8aa3b, v223
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v2, v2
	v_cndmask_b32_e64 v13, 0, 0x42800000, s1
	v_mul_f32_e32 v30, 0xbfb8aa3b, v222
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_ldexp_f32 v4, v14, v4
	v_dual_mul_f32 v14, 0xbfb8aa3b, v0 :: v_dual_mul_f32 v33, 0xbfb8aa3b, v205
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v137
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s1
	v_dual_mul_f32 v27, 0xbfb8aa3b, v243 :: v_dual_add_f32 v66, 1.0, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_exp_f32_e32 v13, v13
	v_mul_f32_e32 v14, 0xbfb8aa3b, v135
	v_ldexp_f32 v15, v2, v1
	v_mul_f32_e32 v2, 0xbfb8aa3b, v133
	v_ldexp_f32 v11, v11, v3
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v14
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_mul_f32_e32 v36, 0xbfb8aa3b, v197
	v_ldexp_f32 v12, v13, v12
	v_cndmask_b32_e64 v18, 0, 0x42800000, s1
	v_mul_f32_e32 v13, 0xbfb8aa3b, v134
	v_dual_fmac_f32 v3, 0xbfb8aa3b, v0 :: v_dual_mul_f32 v52, 0xbfb8aa3b, v199
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v135
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v13
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v3, v3
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s1
	v_exp_f32_e32 v18, v18
	v_cndmask_b32_e64 v16, 0, 0x42800000, s0
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v133
	v_mul_f32_e32 v49, 0xbfb8aa3b, v207
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s0
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v66, v66, v144
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v134
	v_exp_f32_e32 v13, v13
	v_ldexp_f32 v19, v3, v1
	v_mul_f32_e32 v1, 0xbfb8aa3b, v255
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v16, v16
	v_dual_mul_f32 v37, 0xbfb8aa3b, v214 :: v_dual_mul_f32 v38, 0xbfb8aa3b, v215
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_dual_mul_f32 v31, 0xbfb8aa3b, v212 :: v_dual_mul_f32 v32, 0xbfb8aa3b, v213
	v_ldexp_f32 v13, v13, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v254
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v14, v16, v14
	v_ldexp_f32 v16, v18, v17
	v_mul_f32_e32 v17, 0xbfb8aa3b, v253
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_dual_mul_f32 v18, 0xbfb8aa3b, v252 :: v_dual_fmac_f32 v3, 0xbfb8aa3b, v255
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v11, 1.0, v11 :: v_dual_add_f32 v14, 1.0, v14
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v60, 0xbfb8aa3b, v151
	v_exp_f32_e32 v3, v3
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v18
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v254
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v20, 0, 0x42800000, s0
	v_mul_f32_e32 v45, 0xbfb8aa3b, v115
	v_cndmask_b32_e64 v22, 0, 0x42800000, s1
	v_exp_f32_e32 v17, v17
	v_mul_f32_e32 v57, 0xbfb8aa3b, v125
	v_ldexp_f32 v34, v3, v1
	v_mul_f32_e32 v1, 0xbfb8aa3b, v251
	v_dual_mul_f32 v3, 0xbfb8aa3b, v246 :: v_dual_fmac_f32 v20, 0xbfb8aa3b, v253
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v252
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v19, 1.0, v19 :: v_dual_add_f32 v16, 1.0, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v17, v17, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v247
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v20, v20
	v_exp_f32_e32 v22, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, s1, v138, v11, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v19, v19, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v62, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v27
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v251
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v247
	v_cndmask_b32_e64 v65, 0, 0x42800000, s0
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v246
	v_exp_f32_e32 v2, v2
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, vcc_lo, v144, v66, v144
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v243
	v_exp_f32_e32 v68, v3
	v_ldexp_f32 v18, v20, v18
	v_ldexp_f32 v20, v22, v21
	v_mul_f32_e32 v3, 0xbfb8aa3b, v86
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v13, 1.0, v13 :: v_dual_add_f32 v34, 1.0, v34
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v69, v2, v1
	v_mul_f32_e32 v1, 0xbfb8aa3b, v84
	v_exp_f32_e32 v62, v62
	v_mul_f32_e32 v2, 0xbfb8aa3b, v85
	v_exp_f32_e32 v65, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_add_f32 v17, 1.0, v17
	v_dual_add_f32 v18, 1.0, v18 :: v_dual_mul_f32 v35, 0xbfb8aa3b, v196
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v42, 0xbfb8aa3b, v198 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v163
	v_mul_f32_e32 v44, 0xbfb8aa3b, v148
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v61, v62, v61
	v_ldexp_f32 v62, v68, v63
	v_ldexp_f32 v63, v65, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v67, v70, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v11, v11, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v69, 1.0, v69 :: v_dual_fmac_f32 v70, v64, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v15, v15, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v72, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v73, v71, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v64, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v40, 0xbfb8aa3b, v161 :: v_dual_mul_f32 v43, 0xbfb8aa3b, v160
	v_dual_mul_f32 v50, 0xbfb8aa3b, v149 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v150
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v67, v73, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v46, 0xbfb8aa3b, v114 :: v_dual_mul_f32 v53, 0xbfb8aa3b, v124
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v68, v72, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v65, v64, 1.0
	v_dual_fmac_f32 v73, v75, v70 :: v_dual_mul_f32 v54, 0xbfb8aa3b, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v59, 0xbfb8aa3b, v99 :: v_dual_fmac_f32 v72, v76, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v12, v12, v137
	v_fmac_f32_e32 v64, v74, v64
	v_div_scale_f32 v74, s0, v139, v15, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v78, v76
	v_fma_f32 v67, -v67, v73, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v58, 0xbfb8aa3b, v98 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v93
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v75, v74, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v55, 0xbfb8aa3b, v95 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v67, v67, v70, v73
	v_rcp_f32_e32 v70, v80
	v_fma_f32 v71, -v65, v75, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v73, -v76, v78, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v66, v67, v66, v144
	v_div_scale_f32 v67, s2, v137, v12, v137
	v_dual_fmac_f32 v75, v71, v64 :: v_dual_fmac_f32 v78, v73, v78
	v_mul_f32_e32 v79, v77, v72
	v_div_scale_f32 v73, s0, v0, v19, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v65, -v65, v75, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v28, 0xbfb8aa3b, v92 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v94
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v68, v79, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v21, 0xbfb8aa3b, v83 :: v_dual_mul_f32 v24, 0xbfb8aa3b, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v64, v65, v64, v75
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v79, v71, v72
	v_fma_f32 v71, -v80, v70, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v15, v64, v15, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v27, 0xbfb8aa3b, v91 :: v_dual_mul_f32 v4, 0xbfb8aa3b, v88
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v68, v79, v77
	v_mul_f32_e32 v68, v67, v78
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, null, v13, v13, v133
	v_div_scale_f32 v77, null, v14, v14, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v76, v68, v67
	v_mul_f32_e32 v75, v73, v70
	v_div_scale_f32 v82, null, v63, v63, v243
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp4:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v74, v78
	v_div_fmas_f32 v65, v65, v72, v79
	v_rcp_f32_e32 v72, v71
	v_fma_f32 v64, -v80, v75, v73
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v67, -v76, v68, v67
	v_div_fixup_f32 v11, v65, v11, v138
	v_rcp_f32_e32 v65, v77
	v_div_scale_f32 v76, null, v16, v16, v135
	v_fmac_f32_e32 v75, v64, v70
	v_div_scale_f32 v64, s1, v133, v13, v133
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v71, v72, 1.0
	v_div_fmas_f32 v67, v67, v78, v68
	v_fma_f32 v68, -v80, v75, v73
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v77, v65, 1.0
	v_fmac_f32_e32 v72, v74, v72
	v_rcp_f32_e32 v74, v76
	v_div_scale_f32 v78, s2, v134, v14, v134
	v_fmac_f32_e32 v65, v79, v65
	v_div_scale_f32 v80, null, v34, v34, v255
	v_div_fmas_f32 v68, v68, v70, v75
	v_div_scale_f32 v81, s0, v135, v16, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v75, v78, v65
	v_fma_f32 v79, -v76, v74, 1.0
	v_mul_f32_e32 v73, v64, v72
	v_div_fixup_f32 v0, v68, v19, v0
	v_div_scale_f32 v68, null, v17, v17, v254
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v74, v79, v74
	v_fma_f32 v70, -v71, v73, v64
	v_rcp_f32_e32 v79, v80
	v_div_fixup_f32 v12, v67, v12, v137
	v_fma_f32 v19, -v77, v75, v78
	v_mul_f32_e32 v67, v81, v74
	v_fmac_f32_e32 v73, v70, v72
	s_mov_b32 vcc_lo, s1
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v19, v65
	v_fma_f32 v19, -v76, v67, v81
	v_fma_f32 v64, -v71, v73, v64
	v_rcp_f32_e32 v71, v68
	v_fma_f32 v70, -v80, v79, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v67, v19, v74
	v_div_fmas_f32 v64, v64, v72, v73
	v_fma_f32 v72, -v77, v75, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v79, v70, v79
	v_div_scale_f32 v70, s3, v255, v34, v255
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v73, -v68, v71, 1.0
	v_div_fmas_f32 v65, v72, v65, v75
	v_mul_f32_e32 v19, v70, v79
	v_fma_f32 v72, -v76, v67, v81
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v71, v73, v71
	v_div_scale_f32 v73, null, v18, v18, v253
	v_fma_f32 v75, -v80, v19, v70
	v_div_scale_f32 v76, s1, v254, v17, v254
	v_div_fmas_f32 v67, v72, v74, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v72, v73
	v_fmac_f32_e32 v19, v75, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v74, v76, v71
	v_div_fixup_f32 v13, v64, v13, v133
	v_div_fixup_f32 v14, v65, v14, v134
	v_div_fixup_f32 v64, v67, v16, v135
	v_fma_f32 v16, -v80, v19, v70
	v_fma_f32 v65, -v68, v74, v76
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v67, null, v20, v20, v252
	v_fma_f32 v70, -v73, v72, 1.0
	v_div_fmas_f32 v16, v16, v79, v19
	v_fmac_f32_e32 v74, v65, v71
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v19, v67
	v_div_scale_f32 v65, s0, v253, v18, v253
	v_fmac_f32_e32 v72, v70, v72
	v_div_scale_f32 v70, null, v69, v69, v251
	v_div_fixup_f32 v34, v16, v34, v255
	v_fma_f32 v16, -v68, v74, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v68, v65, v72
	v_rcp_f32_e32 v76, v70
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v67, v19, 1.0
	v_div_fmas_f32 v16, v16, v71, v74
	v_fma_f32 v71, -v73, v68, v65
	v_div_scale_f32 v74, null, v61, v61, v247
	v_fmac_f32_e32 v19, v75, v19
	v_div_scale_f32 v75, s1, v252, v20, v252
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v77, -v70, v76, 1.0
	v_div_fixup_f32 v78, v16, v17, v254
	v_fmac_f32_e32 v68, v71, v72
	v_rcp_f32_e32 v16, v74
	v_dual_mul_f32 v17, v75, v19 :: v_dual_fmac_f32 v76, v77, v76
	v_div_scale_f32 v77, null, v62, v62, v246
	v_div_scale_f32 v71, s2, v251, v69, v251
	v_fma_f32 v65, -v73, v68, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v81, v77
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v73, -v67, v17, v75
	v_mul_f32_e32 v79, v71, v76
	v_fma_f32 v80, -v74, v16, 1.0
	v_div_fmas_f32 v65, v65, v72, v68
	v_rcp_f32_e32 v72, v82
	v_fmac_f32_e32 v17, v73, v19
	v_fma_f32 v68, -v70, v79, v71
	v_fmac_f32_e32 v16, v80, v16
	v_div_scale_f32 v73, s0, v247, v61, v247
	v_fma_f32 v80, -v77, v81, 1.0
	v_div_fixup_f32 v65, v65, v18, v253
	v_fma_f32 v18, -v67, v17, v75
	v_dual_fmac_f32 v79, v68, v76 :: v_dual_mul_f32 v14, v241, v14
	v_mul_f32_e32 v67, v73, v16
	v_fmac_f32_e32 v81, v80, v81
	v_div_scale_f32 v68, s3, v246, v62, v246
	v_fma_f32 v75, -v82, v72, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v17, v18, v19, v17
	v_fma_f32 v18, -v70, v79, v71
	v_fma_f32 v19, -v74, v67, v73
	v_mul_f32_e32 v70, v68, v81
	v_fmac_f32_e32 v72, v75, v72
	v_div_scale_f32 v71, s1, v243, v63, v243
	v_div_fixup_f32 v75, v17, v20, v252
	v_fmac_f32_e32 v67, v19, v16
	v_fma_f32 v17, -v77, v70, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v19, v71, v72
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v18, v18, v76, v79
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v17, v81
	v_fma_f32 v17, -v82, v19, v71
	v_fma_f32 v10, -v74, v67, v73
	v_div_fixup_f32 v69, v18, v69, v251
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v19, v17, v72
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v10, v10, v16, v67
	v_fma_f32 v16, -v77, v70, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v231
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v82, v19, v71
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v61, v10, v61, v247
	v_div_fmas_f32 v16, v16, v81, v70
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v9, v17, v72, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v62, v16, v62, v246
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v16, 0, 0x42800000, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v250, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v63, v9, v63, v243
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v230
	v_ldexp_f32 v7, v67, v18
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v229
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v18, v245, v12 :: v_dual_add_f32 v67, 1.0, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v7, v16
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v16, v244, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v0, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v12, v239, v34 :: v_dual_mul_f32 v17, v248, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v6, v7, v10
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v0, v0, v9
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v19, v249, v15 :: v_dual_add_f32 v34, 1.0, v6
	v_dual_mul_f32 v15, v242, v13 :: v_dual_add_f32 v70, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v67, v67, v231
	v_div_scale_f32 v71, vcc_lo, v231, v67, v231
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v228
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v66, v68
	v_div_scale_f32 v74, null, v70, v70, v229
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v0, v237, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v10
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v236, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v65, v74
	v_fma_f32 v6, -v68, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v66, v6, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v6, v234, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v61, v73, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v74, v65, 1.0
	v_dual_mul_f32 v76, v71, v66 :: v_dual_add_f32 v61, 1.0, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v75, -v68, v76, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v13, v240, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v64, null, v34, v34, v230
	v_fmac_f32_e32 v76, v75, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v72, v64
	v_fma_f32 v77, -v64, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v11, v238, v78 :: v_dual_fmac_f32 v72, v77, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v73, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v233, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v68, v76, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v235, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, s0, v230, v34, v230
	v_div_scale_f32 v71, s1, v229, v70, v229
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v62, v62, v66, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v232, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v61, v61, v228
	v_div_fixup_f32 v62, v62, v67, v231
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v66, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v69, v72
	v_fma_f32 v75, -v64, v68, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v67, -v73, v66, 1.0
	v_fmac_f32_e32 v68, v75, v72
	v_mul_f32_e32 v76, v71, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v66, v67, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v223
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v74, v76, v71
	v_fma_f32 v64, -v64, v68, v69
	v_div_scale_f32 v69, s2, v228, v61, v228
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v222
	v_exp_f32_e32 v30, v78
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v30, v30, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v63, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v64, v64, v72, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_exp_f32_e32 v26, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v69, v66
	v_fma_f32 v71, -v74, v76, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v67, v67, v223
	v_fma_f32 v30, -v73, v68, v69
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v26, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v63, v75
	v_div_fmas_f32 v65, v71, v65, v76
	v_fmac_f32_e32 v68, v30, v66
	v_div_fixup_f32 v30, v64, v34, v230
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v26, v65, v70, v229
	v_fma_f32 v34, -v73, v68, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v220
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v75, v63, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v63, v70, v63
	v_div_fmas_f32 v34, v34, v66, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, s0, v223, v67, v223
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v23, v34, v61, v228
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v65, v65, v72
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v23, v227, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v221
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v65, v65, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v74, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v61, v61, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v34, v224, v62 :: v_dual_add_f32 v61, 1.0, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v64, v64, v222
	v_fma_f32 v62, -v73, v74, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v66, v69
	v_fmac_f32_e32 v74, v62, v74
	v_mul_f32_e32 v70, v68, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v72, -v75, v70, v68
	v_fma_f32 v71, -v69, v66, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v70, v72, v63
	v_fmac_f32_e32 v66, v71, v66
	v_div_scale_f32 v71, s1, v222, v64, v222
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v68, -v75, v70, v68
	v_mul_f32_e32 v72, v71, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v63, v68, v63, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v61, v61, v221
	v_fma_f32 v75, -v69, v72, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v63, v63, v67, v223
	v_div_scale_f32 v38, s0, v220, v65, v220
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v75, v66
	v_rcp_f32_e32 v62, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v69, v72, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v71, v38, v74
	v_div_fmas_f32 v37, v67, v66, v72
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v72, -v68, v62, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_cndmask_b32_e64 v67, 0, 0x42800000, s2
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v37, v37, v64, v222
	v_fma_f32 v64, -v73, v71, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v215
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v62, v72, v62
	v_div_scale_f32 v72, s1, v221, v61, v221
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v71, v64, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v70
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v214
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v64, v72, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v73, v71, v38
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v217, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v67
	v_ldexp_f32 v32, v70, v69
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v68, v64, v72
	v_div_fmas_f32 v31, v38, v74, v71
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v67, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v73, v73, v215
	v_fmac_f32_e32 v64, v32, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v68, v64, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v212
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v38, v38, v62, v64
	v_div_scale_f32 v62, vcc_lo, v215, v73, v215
	v_div_fixup_f32 v38, v38, v61, v221
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v213
	v_exp_f32_e32 v61, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v32, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v61, v61, v68
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v32, v32, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v67, v70, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v26, v226, v26 :: v_dual_add_f32 v61, 1.0, v61
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v69, 1.0, v32 :: v_dual_fmac_f32 v70, v74, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v31, v65, v220
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v219, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v69, v69, v213
	v_mul_f32_e32 v71, v62, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v76, v74
	v_fma_f32 v38, -v67, v71, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v71, v38, v70 :: v_dual_mul_f32 v38, v216, v63
	v_fma_f32 v63, -v74, v76, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v62, -v67, v71, v62
	v_div_scale_f32 v67, null, v61, v61, v212
	v_div_fmas_f32 v62, v62, v70, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v49, v67
	v_div_fixup_f32 v62, v62, v73, v215
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v67, v49, 1.0
	v_dual_fmac_f32 v49, v71, v49 :: v_dual_add_f32 v66, 1.0, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v207
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v66, v66, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v72, v75
	v_fma_f32 v64, -v75, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v64, v72
	v_div_scale_f32 v64, s0, v214, v66, v214
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v30, v225, v30 :: v_dual_mul_f32 v65, v64, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v75, v65, v64
	v_fmac_f32_e32 v65, v68, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v75, v65, v64
	v_div_fmas_f32 v64, v64, v72, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_exp_f32_e32 v41, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, s0, v212, v61, v212
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v218, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v206
	v_ldexp_f32 v39, v41, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v41, v72, v49
	v_div_fixup_f32 v64, v64, v66, v214
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v71, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v67, v41, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v41, v39, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v39, v71, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v63, v76
	v_div_scale_f32 v63, s1, v213, v69, v213
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v63, v76
	v_fma_f32 v66, -v74, v65, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v65, v66, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v74, v65, v63
	v_div_scale_f32 v74, null, v73, v73, v207
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v204
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v205
	v_exp_f32_e32 v33, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v68, v74
	v_div_fmas_f32 v63, v63, v76, v65
	v_fma_f32 v65, -v67, v41, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_div_fmas_f32 v41, v65, v49, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v49, v71
	v_ldexp_f32 v33, v33, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v74, v68, 1.0
	v_div_scale_f32 v66, null, v67, v67, v206
	v_div_scale_f32 v72, vcc_lo, v207, v73, v207
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v71, 1.0, v33 :: v_dual_fmac_f32 v68, v39, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v65, v66
	v_div_fixup_f32 v33, v41, v61, v212
	v_div_fixup_f32 v39, v63, v69, v213
	v_div_scale_f32 v61, null, v71, v71, v204
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v49, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v63, v72, v68
	v_div_scale_f32 v75, s0, v206, v67, v206
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v69, v61
	v_fma_f32 v41, -v66, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v65, v41, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v41, v209, v64 :: v_dual_add_f32 v64, 1.0, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v74, v63, v72
	v_fma_f32 v76, -v61, v69, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v39, v210, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, null, v64, v64, v205
	v_fmac_f32_e32 v69, v76, v69
	v_div_scale_f32 v76, s1, v204, v71, v204
	v_fmac_f32_e32 v63, v70, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v49, v208, v62 :: v_dual_mul_f32 v70, v75, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v74, v63, v72
	v_rcp_f32_e32 v74, v77
	v_fma_f32 v72, -v66, v70, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v52, v62, v68, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, s2
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v72, v65
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v52, v52, v73, v207
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v199
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v77, v74, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v211, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v66, v70, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v63, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v72, v74
	v_div_scale_f32 v72, s2, v205, v64, v205
	v_div_fmas_f32 v42, v66, v65, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	v_cndmask_b32_e64 v70, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v65, v72, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v42, v42, v67, v206
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v62, v63, v62
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v77, v65, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v198
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v42, v173, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v76, v69
	v_fmac_f32_e32 v65, v36, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v70
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v62, v62, v199
	v_fma_f32 v73, -v61, v68, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v68, v73, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v36, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v61, v68, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v197
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v61, v61, v69, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v77, v65, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v35, v35, v74, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v196
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v68, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v70, v69, 1.0
	v_div_fixup_f32 v35, v35, v64, v205
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v36, v61, v71, v204
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v75, null, v73, v73, v197
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v174, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v72, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v63, v69
	v_div_scale_f32 v63, vcc_lo, v199, v62, v199
	v_rcp_f32_e32 v61, v75
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v63, v69
	v_div_scale_f32 v71, null, v66, v66, v196
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v70, v76, v63
	v_fmac_f32_e32 v76, v64, v69
	v_div_scale_f32 v68, null, v65, v65, v198
	v_div_scale_f32 v64, s0, v198, v65, v198
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v63, -v70, v76, v63
	v_rcp_f32_e32 v74, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v63, v63, v69, v76
	v_rcp_f32_e32 v69, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v68, v74, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v172, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v52, v63, v62, v199
	v_fmac_f32_e32 v74, v67, v74
	v_fma_f32 v67, -v75, v61, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v63, -v71, v69, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v163
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v70, v64, v74 :: v_dual_fmac_f32 v61, v67, v61
	v_div_scale_f32 v67, s1, v197, v73, v197
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v188, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v68, v70, v64
	v_fmac_f32_e32 v69, v63, v69
	v_mul_f32_e32 v76, v67, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v48, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v72, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v62, -v75, v76, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v68, v70, v64
	v_div_scale_f32 v68, s2, v196, v66, v196
	v_fmac_f32_e32 v76, v62, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v48, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v64, v64, v74, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	v_exp_f32_e32 v43, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v70, v68, v69 :: v_dual_add_f32 v63, 1.0, v48
	v_fma_f32 v67, -v75, v76, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v48, -v71, v70, v68
	v_div_fmas_f32 v61, v67, v61, v76
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v43, v43, v62
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v160
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v48, v69
	v_div_fixup_f32 v48, v64, v65, v198
	v_div_scale_f32 v75, null, v63, v63, v163
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v43, v61, v73, v197
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v62, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v64, v64, v162
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v167, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v71, v70, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v65, v65, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v61, v61, v69, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v75, v62, 1.0
	v_rcp_f32_e32 v69, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v40, v61, v66, v196
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v65, v65, v160
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v161
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v67, v69, 1.0
	v_rcp_f32_e32 v74, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v71, v69
	v_div_scale_f32 v71, s1, v162, v64, v162
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v61, v66, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v62, v68, v62
	v_div_scale_f32 v68, s0, v163, v63, v163
	v_fma_f32 v66, -v73, v74, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v70, v68, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v74, v66, v74
	v_fma_f32 v72, -v75, v70, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v70, v72, v62
	v_mul_f32_e32 v72, v71, v69
	v_fma_f32 v68, -v75, v70, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v75, -v67, v72, v71
	v_div_fmas_f32 v62, v68, v62, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v72, v75, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v60, s0, v160, v65, v160
	v_div_fixup_f32 v62, v62, v63, v163
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v63, -v67, v72, v71
	v_div_scale_f32 v67, null, v61, v61, v161
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v66, v67
	v_div_fmas_f32 v51, v63, v69, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v151
	v_cndmask_b32_e64 v69, 0, 0x42800000, s2
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v51, v64, v162
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v44
	v_exp_f32_e32 v70, v70
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v150
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v67, v66, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v51, v156, v51 :: v_dual_mul_f32 v40, v169, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v60, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v69, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v72, v66
	v_div_scale_f32 v72, s1, v161, v61, v161
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v64, -v73, v71, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v70, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v166, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v64, v74
	v_mul_f32_e32 v64, v72, v66
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v63, v69, v63
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v149
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v73, v71, v60
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v67, v64, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v44, v60, v74, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v50, v66
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v69, null, v73, v73, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v148
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v67, v64, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v63, v63, v150
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v60, v60, v66, v64
	v_div_scale_f32 v64, vcc_lo, v151, v73, v151
	v_rcp_f32_e32 v72, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v60, v60, v61, v161
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v75, v72, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v61, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v61, v157, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v50, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v69
	v_fmac_f32_e32 v72, v66, v72
	v_div_scale_f32 v66, s0, v150, v63, v150
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v50, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v69, v70, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v67, null, v62, v62, v148
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v74, v70
	v_div_fixup_f32 v50, v44, v65, v160
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v44, v159, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v65, v66, v72
	v_mul_f32_e32 v71, v64, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v60, -v69, v71, v64
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v52, v165, v52 :: v_dual_fmac_f32 v71, v60, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v75, v65, v66
	v_fma_f32 v64, -v69, v71, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v65, v60, v72
	v_div_fmas_f32 v64, v64, v70, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v75, v65, v66
	v_rcp_f32_e32 v57, v67
	v_div_fixup_f32 v64, v64, v73, v151
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v65, v66, v72, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, s0, v148, v62, v148
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v67, v57, 1.0
	v_div_fixup_f32 v63, v65, v63, v150
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v71, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v53, v70
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v124
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v46, v53, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v53, v72, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v67, v53, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v53, v46, v57
	v_div_scale_f32 v74, null, v68, v68, v149
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v46, v71, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v76, v74
	v_fma_f32 v60, -v74, v76, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v60, v76
	v_div_scale_f32 v60, s1, v149, v68, v149
	v_mul_f32_e32 v66, v60, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v74, v66, v60
	v_fmac_f32_e32 v66, v65, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	v_exp_f32_e32 v45, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v74, v66, v60
	v_div_scale_f32 v74, null, v73, v73, v125
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v69, v74
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v50, v158, v50 :: v_dual_fmac_f32 v71, 0xbfb8aa3b, v115
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v60, v60, v76, v66
	v_fma_f32 v66, -v67, v53, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v45, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v53, v66, v57, v53
	v_fma_f32 v46, -v74, v69, 1.0
	v_div_scale_f32 v65, null, v67, v67, v124
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v57, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v46, v69
	v_rcp_f32_e32 v66, v65
	v_div_fixup_f32 v46, v60, v68, v149
	v_div_scale_f32 v72, vcc_lo, v125, v73, v125
	v_div_scale_f32 v60, null, v71, v71, v114
	v_div_fixup_f32 v45, v53, v62, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v62, v72, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v57, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v68, v60
	v_fma_f32 v53, -v65, v66, 1.0
	v_div_scale_f32 v75, s0, v124, v67, v124
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v45, v164, v45 :: v_dual_fmac_f32 v66, v53, v66
	v_mul_f32_e32 v53, v127, v63
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v57
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v57, v126, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v74, v62, v72
	v_fma_f32 v76, -v60, v68, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v77, null, v63, v63, v115
	v_fmac_f32_e32 v68, v76, v68
	v_div_scale_f32 v76, s1, v114, v71, v114
	v_fmac_f32_e32 v62, v70, v69
	v_mul_f32_e32 v70, v75, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v64, -v74, v62, v72
	v_rcp_f32_e32 v74, v77
	v_fma_f32 v72, -v65, v70, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v59, v64, v69, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v72, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v59, v59, v73, v125
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v72, -v77, v74, 1.0
	v_fma_f32 v65, -v65, v70, v75
	v_fmac_f32_e32 v74, v72, v74
	v_div_scale_f32 v72, s2, v115, v63, v115
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v58, v65, v66, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v65, v72, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, s3
	v_exp_f32_e32 v64, v64
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v58, v58, v67, v124
	v_fma_f32 v56, -v77, v65, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v98
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v62, v64, v62
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v75, 1.0, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v76, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v60, v69, v76
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v46, v128, v46 :: v_dual_fmac_f32 v69, v73, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v60, -v60, v69, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v60, v60, v68, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	v_exp_f32_e32 v62, v73
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v96
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v56, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v75, v75, v99
	v_fma_f32 v54, -v77, v65, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v68, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v56, v56, v66
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v54, v54, v74, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v56, v62, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v70, v68, 1.0
	v_div_scale_f32 v73, vcc_lo, v99, v75, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v64, null, v65, v65, v98
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v56, v60, v71, v114
	v_div_fixup_f32 v54, v54, v63, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v74, v64
	v_fma_f32 v67, -v64, v74, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v74, v67, v74
	v_fmac_f32_e32 v68, v62, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v62, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v72, v72, v97
	v_mul_f32_e32 v76, v73, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v60, v69
	v_fma_f32 v63, -v70, v76, v73
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v62, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v62, v121, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v63, v68
	v_div_scale_f32 v63, s0, v98, v65, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v58, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v69, v60, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v70, v76, v73
	v_dual_mul_f32 v71, v63, v74 :: v_dual_mul_f32 v70, v120, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v73, null, v58, v58, v96
	v_fmac_f32_e32 v60, v67, v60
	v_div_scale_f32 v67, s1, v97, v72, v97
	v_div_fmas_f32 v66, v66, v68, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v55, v73
	v_fma_f32 v68, -v64, v71, v63
	v_mul_f32_e32 v76, v67, v60
	v_div_fixup_f32 v59, v66, v75, v99
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v68, v74
	v_fma_f32 v66, -v69, v76, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v73, v55, 1.0
	v_fma_f32 v63, -v64, v71, v63
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v76, v66, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v55, v68, v55
	v_div_scale_f32 v68, s2, v96, v58, v96
	v_div_fmas_f32 v63, v63, v74, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v54, v123, v54 :: v_dual_mul_f32 v71, v68, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v94
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v63, v63, v65, v98
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v69, v76, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v28, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v73, v71, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v92
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v60, v67, v60, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v71, v66, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v24
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v28, v28, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v73, v71, v68
	v_div_fixup_f32 v60, v60, v72, v97
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v55, v64, v55, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_ldexp_f32 v65, v65, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v28, v28, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v55, v55, v58, v96
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v93
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v73, v73, v92
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v104, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v64
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v113, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v60, v74
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v66, v71, 1.0
	v_fmac_f32_e32 v71, v69, v71
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v58, v72, v58
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v72, v103, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v74, v60, 1.0
	v_div_scale_f32 v69, s1, v94, v28, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v58, 1.0, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v60, v59, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v29, v78
	v_ldexp_f32 v29, v29, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v56, v122, v56 :: v_dual_add_f32 v29, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v29, v29, v95
	v_div_scale_f32 v25, s0, v95, v29, v95
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v67, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v75, v67, 1.0
	v_fmac_f32_e32 v67, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v25, v67
	v_fma_f32 v65, -v75, v68, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v68, v65, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v65, v112, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v75, v68, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v25, v25, v67, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, s2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, s0, v92, v73, v92
	v_div_fixup_f32 v25, v25, v29, v95
	v_mul_f32_e32 v76, v69, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v90
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v66, v76, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v91
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v63, v71
	v_div_scale_f32 v63, null, v58, v58, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v66, v76, v69
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v59, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v69, v27, v60
	v_div_fmas_f32 v24, v29, v71, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v22, v67, v66
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v63, v59, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v68, v29
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v59, v71, v59
	v_div_scale_f32 v71, s1, v93, v58, v93
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v24, v28, v94
	v_fma_f32 v28, -v74, v69, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, s0, v90, v29, v90
	v_dual_fmac_f32 v69, v28, v60 :: v_dual_mul_f32 v28, v71, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v74, v69, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v74, -v63, v28, v71
	v_div_fmas_f32 v27, v27, v60, v69
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v28, v74, v59
	v_div_scale_f32 v74, null, v29, v29, v90
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v63, v28, v71
	v_rcp_f32_e32 v71, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v27, v73, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v28, v60, v59, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v59, v67, v66
	v_dual_fmac_f32 v63, 0xbfb8aa3b, v83 :: v_dual_mul_f32 v66, v117, v24
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v67, v116, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v74, v71, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v59, 1.0, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v60, v71
	v_div_fixup_f32 v28, v28, v58, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v78, null, v59, v59, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v60, v118, v27 :: v_dual_mul_f32 v63, v119, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v73, v77, v71
	v_rcp_f32_e32 v79, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v27, v58, v69
	v_cndmask_b32_e64 v69, 0, 0x42800000, s2
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v78, v79, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_fmac_f32 v69, 0xbfb8aa3b, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v79, v27, v79
	v_div_scale_f32 v68, null, v22, v22, v91
	v_div_scale_f32 v27, s1, v89, v59, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v68
	v_fma_f32 v75, -v68, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v75, v21
	v_div_scale_f32 v75, vcc_lo, v91, v22, v91
	v_mul_f32_e32 v76, v75, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v68, v76, v75
	v_fmac_f32_e32 v76, v28, v21
	v_fma_f32 v28, -v74, v73, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v68, v76, v75
	v_fmac_f32_e32 v73, v28, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v21, v25, v21, v76
	v_fma_f32 v25, -v74, v73, v77
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v21, v21, v22, v91
	v_div_fmas_f32 v4, v25, v71, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v25, v27, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v4, v4, v29, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v3, -v78, v25, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v86
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v25, v3, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v3, v69
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_exp_f32_e32 v1, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v78, v25, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v85
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v3, v3, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v68, v71
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v84
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v1, v1, v22
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v3, 1.0, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v29
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v1, 1.0, v1
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v28, null, v24, v24, v83
	v_div_scale_f32 v73, s0, v83, v24, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v68, v68, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v58, v28
	v_div_scale_f32 v29, null, v3, v3, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, -v28, v58, 1.0
	v_fmac_f32_e32 v58, v2, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v25, v27, v79, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v27, v73, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v2, v22, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v22, null, v1, v1, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v25, v25, v59, v89
	v_fma_f32 v71, -v28, v27, v73
	v_rcp_f32_e32 v59, v29
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v75, v22
	v_div_scale_f32 v79, s0, v86, v1, v86
	v_fmac_f32_e32 v27, v71, v58
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v28, v27, v73
	v_div_scale_f32 v74, null, v71, v71, v85
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v68, -v29, v59, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v28, v58, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v76, v74
	v_div_scale_f32 v58, vcc_lo, v88, v3, v88
	v_fmac_f32_e32 v59, v68, v59
	v_div_scale_f32 v28, null, v2, v2, v84
	v_fma_f32 v68, -v22, v75, 1.0
	v_div_fixup_f32 v24, v27, v24, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v78, v58, v59
	v_rcp_f32_e32 v77, v28
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v27, -v74, v76, 1.0
	v_fmac_f32_e32 v75, v68, v75
	v_div_scale_f32 v82, s2, v84, v2, v84
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v73, v109, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v27, v76
	v_div_scale_f32 v27, s1, v85, v71, v85
	v_mul_f32_e32 v80, v79, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v69, -v28, v77, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v111, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v29, v78, v58
	v_mul_f32_e32 v81, v27, v76
	v_fmac_f32_e32 v77, v69, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v69, v110, v25 :: v_dual_fmac_f32 v78, v24, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v22, v80, v79
	v_fma_f32 v25, -v74, v81, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v83, v82, v77
	v_fma_f32 v4, -v29, v78, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v24, v75
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v29, |v57|, |v53|
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v28, v83, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v4, v4, v59, v78
	v_fma_f32 v22, -v22, v80, v79
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v83, v24, v77
	s_mov_b32 s0, 0x76543210
	v_div_fixup_f32 v3, v4, v3, v88
	v_fmac_f32_e32 v81, v25, v76
	v_div_fmas_f32 v22, v22, v75, v80
	v_fma_f32 v25, -v28, v83, v82
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v75, v108, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v74, v81, v27
	v_div_fixup_f32 v1, v22, v1, v86
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v21, |v34|, |v30|
	v_max3_f32 v22, |v26|, |v38|, |v37|
	v_max3_f32 v27, |v61|, |v51|, |v50|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v24, v24, v76, v81
	s_mov_b32 vcc_lo, s2
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v28, |v44|, |v15|, |v14|
.Ltmp12:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v77, v83
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v74, |v72|, |v65|, |v64|
.Ltmp14:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v4, v24, v71, v85
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v24, |v49|, |v41|, |v39|
	v_max3_f32 v71, |v46|, |v70|, |v62|
.Ltmp16:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v2, v25, v2, v84
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, |v33|, |v19|, |v17|
.Ltmp18:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v59, v102, v4
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v21, |v23|, v22
	v_max_f32_e64 v22, |v47|, |v42|
	v_max3_f32 v76, |v55|, |v11|, |v0|
	v_max3_f32 v21, v24, v25, |v18|
	v_max3_f32 v24, |v36|, |v52|, |v48|
.Ltmp20:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v58, v87, v2
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, |v32|, |v31|, |v20|
	v_max3_f32 v25, |v43|, |v40|, |v16|
	s_delay_alu instid0(VALU_DEP_4)
	v_max3_f32 v22, v22, |v35|, v24
	v_max3_f32 v24, v27, v28, |v13|
	v_max3_f32 v28, v29, |v45|, v71
	v_max3_f32 v29, v74, v76, |v10|
.Ltmp22:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v71, v101, v1 :: v_dual_mul_f32 v74, v100, v3
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v27, |v56|, |v54|, |v12|
	v_max3_f32 v1, v4, v2, v21
	v_max3_f32 v2, v22, v25, v24
	v_max_f32_e64 v4, |v67|, |v66|
	v_max3_f32 v21, |v60|, |v75|, |v73|
	v_max3_f32 v24, |v74|, |v71|, |v59|
	v_max3_f32 v25, |v58|, |v6|, |v7|
	v_max3_f32 v3, v28, v27, v29
	v_max3_f32 v22, |v69|, |v68|, |v9|
	v_max3_f32 v4, v4, |v63|, v21
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v21, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v24, v24, v25, |v8|
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v27, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v3, s0, 0xfedcba98 op_sel:[1,0]
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v29, 0x80, v105
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v21, v21, v21
	v_max3_f32 v4, v4, v22, v24
	v_max_f32_e32 v25, v27, v27
	v_dual_max_f32 v27, v28, v28 :: v_dual_and_b32 v22, 4, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v1, v1, v21
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v21, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v24, v136, 9, 0
	v_and_b32_e32 v28, 0x60, v105
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v25 :: v_dual_max_f32 v3, v3, v27
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v76, 8, v105
	v_lshlrev_b32_e32 v27, 4, v105
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v21, v21, v21
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v25, 5, v136
	v_lshl_add_u32 v24, v22, 2, v24
	v_lshrrev_b32_e32 v79, 3, v29
	v_lshl_add_u32 v80, v22, 6, 0
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v21
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v77, 0x680, v27, v25
	v_lshlrev_b32_e32 v27, 1, v29
	v_xor_b32_e32 v78, v25, v28
	v_lshl_add_u32 v24, v76, 4, v24
	v_lshlrev_b32_e32 v76, 3, v76
	v_xor_b32_e32 v77, v77, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v21, v24, v27, v78
	v_add3_u32 v24, v80, v79, v77
	ds_store_b128 v21, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v24
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v21, v1 :: v_dual_max_f32 v78, v4, v4
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v24, v2 :: v_dual_max_f32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v24, v24 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v78, v4 :: v_dual_max_f32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v24, v24, v24
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v78, v4 :: v_dual_max_f32 v1, v1, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v24
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v24, v1 :: v_dual_mov_b32 v77, v3
	v_add_nc_u32_e32 v29, 0, v29
	v_mov_b32_dpp v24, v24 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v24, v24, v24
	v_dual_max_f32 v1, v1, v24 :: v_dual_max_f32 v24, v78, v78
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v77, v77 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v24 :: v_dual_max_f32 v21, v77, v77
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v24, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v24, v24 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v77, v2 :: v_dual_max_f32 v24, v24, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v24 :: v_dual_max_f32 v77, v77, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v2, v2, v77
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v77, v1 :: v_dual_mov_b32 v78, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v77, v77, v77 :: v_dual_max_f32 v78, v78, v78
	v_max_f32_e32 v3, v3, v21
	v_max_f32_e32 v1, v1, v77
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v77, 1, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v78 :: v_dual_mov_b32 v21, v3
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v24, v29, v77, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v3, v3, v21
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v21, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v3, v3, v21
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v21, 5, v22
	v_lshl_add_u32 v22, v136, 4, 0
	ds_store_b128 v24, v[1:4]
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v21, v22, v21, v76
	s_barrier
.Ltmp55:
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v24, 4, v107
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[76:79], v21
.Ltmp57:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v21, 63, v105
	v_or_b32_e32 v3, 48, v24
	v_or_b32_e32 v81, 32, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v78, v78, v78 :: v_dual_max_f32 v77, v77, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v78, 0x2b8cbccc, v78 :: v_dual_max_f32 v77, 0x2b8cbccc, v77
	v_div_scale_f32 v83, null, 0x40e00000, 0x40e00000, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v87, null, 0x40e00000, 0x40e00000, v77
	v_rcp_f32_e32 v85, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v83, v85, 1.0
	v_fmac_f32_e32 v85, v86, v85
	v_max_f32_e32 v1, v76, v76
	v_div_scale_f32 v86, s6, v78, 0x40e00000, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v22, 0x2b8cbccc, v1
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s28, v21
	v_add_co_ci_u32_e64 v2, null, s29, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v29, null, 0x40e00000, 0x40e00000, v22
	v_div_scale_f32 v82, vcc_lo, v22, 0x40e00000, v22
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s0, s28, v3
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v76, v29
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s29, 0, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[34:35], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v80, -v29, v76, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v80, v76
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v80, s0, s28, v81
	v_add_co_ci_u32_e64 v81, null, s29, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v84, v82, v76
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[30:31], v[3:4]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 16, v24
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[30:31], v[80:81]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v29, v84, v82
	v_fmac_f32_e32 v84, v3, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s3, s28, v4
	v_add_co_ci_u32_e64 v4, null, s29, 0, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v29, -v29, v84, v82
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[34:35], v[80:81]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v81.h, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[30:31], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[34:35], v[3:4]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_fmas_f32 v29, v29, v76, v84
	v_mul_f32_e32 v76, v86, v85
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v82, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v22, v29, 0x40e00000, v22
	v_fma_f32 v29, -v83, v76, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v76, v29, v85
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v29.l, v22.h
	v_mov_b16_e32 v29.h, v81.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v79, v79, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v87, v82, 1.0
	v_fma_f32 v3, -v83, v76, v86
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v82, v80, v82
	v_div_fmas_f32 v76, v3, v85, v76
	v_div_scale_f32 v80, s7, v77, 0x40e00000, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v22, v22, v4, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v76, v76, 0x40e00000, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v90, v80, v82
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s28, v24
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v85, 0xffff0000, v22
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v81.l, v76.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_max_f32_e32 v79, 0x2b8cbccc, v79
	v_fma_f32 v29, -v87, v90, v80
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s29, 0, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v88, null, 0x40e00000, 0x40e00000, v79
	v_fmac_f32_e32 v90, v29, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[30:31], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[34:35], v[3:4]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_rcp_f32_e32 v84, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v78, -v87, v90, v80
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v87, null, v85, v85, v23
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v89, -v88, v84, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v89, v84
	v_div_scale_f32 v89, s8, v79, 0x40e00000, v79
	v_mul_f32_e32 v83, v89, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v88, v83, v89
	v_fmac_f32_e32 v83, v29, v84
	v_div_fmas_f32 v29, v78, v82, v90
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v78, -v88, v83, v89
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v88, v87
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v29, v29, 0x40e00000, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v77, v78, v84, v83
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v78, 1, v81
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v77, v77, 0x40e00000, v79
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v92, -v87, v88, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v79.l, v29.h
	v_mov_b16_e32 v79.h, v81.h
	v_add3_u32 v3, v76, v78, 0x7fff
	v_mov_b16_e32 v81.l, v77.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v80, null, v85, v85, v34
	v_div_scale_f32 v83, null, v85, v85, v30
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v82, v80
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v78, 1, v81
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v86, v83
	v_div_scale_f32 v89, null, v85, v85, v26
	v_div_scale_f32 v92, s9, v23, v85, v23
	v_div_scale_f32 v90, s8, v30, v85, v30
	v_div_scale_f32 v94, null, v85, v85, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v84, -v80, v82, 1.0
	v_fma_f32 v76, -v83, v86, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v29, v29, v4, 0x7fff
	v_add3_u32 v4, v77, v78, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v84, v82
	v_div_scale_f32 v84, vcc_lo, v34, v85, v34
	v_fmac_f32_e32 v86, v76, v86
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v78, 0xffff0000, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v79, v84, v82 :: v_dual_and_b32 v76, 0xffff0000, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v80, v79, v84
	v_fmac_f32_e32 v79, v81, v82
	v_rcp_f32_e32 v81, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v80, v79, v84
	v_div_fmas_f32 v79, v80, v82, v79
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v89, v81, 1.0
	v_mul_f32_e32 v80, v92, v88
	v_rcp_f32_e32 v82, v94
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v34, v79, v85, v34
	v_fmac_f32_e32 v81, v93, v81
	v_mul_f32_e32 v91, v90, v86
	v_div_scale_f32 v93, null, v85, v85, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v83, v91, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v95, v93
	v_fma_f32 v96, -v94, v82, 1.0
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v77, 0xffff0000, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v84, v86
	v_div_scale_f32 v84, s10, v26, v85, v26
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v96, null, v85, v85, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v79, -v83, v91, v90
	v_fma_f32 v83, -v87, v80, v92
	v_mul_f32_e32 v90, v84, v81
	v_fmac_f32_e32 v80, v83, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v89, v90, v84
	v_fmac_f32_e32 v90, v83, v81
	v_div_fmas_f32 v79, v79, v86, v91
	v_div_scale_f32 v86, s8, v38, v85, v38
	v_fma_f32 v91, -v93, v95, 1.0
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v30, v79, v85, v30
	v_fma_f32 v79, -v87, v80, v92
	v_mul_f32_e32 v83, v86, v82
	v_fmac_f32_e32 v95, v91, v95
	v_div_scale_f32 v87, s11, v37, v85, v37
	v_div_fmas_f32 v79, v79, v88, v80
	v_fma_f32 v80, -v89, v90, v84
	v_div_scale_f32 v92, null, v85, v85, v31
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v91, null, v85, v85, v32
	v_fma_f32 v84, -v94, v83, v86
	v_mul_f32_e32 v89, v87, v95
	v_div_fmas_f32 v80, v80, v81, v90
	v_rcp_f32_e32 v81, v92
	v_rcp_f32_e32 v88, v91
	v_fmac_f32_e32 v83, v84, v82
	v_fma_f32 v84, -v93, v89, v87
	v_div_fixup_f32 v23, v79, v85, v23
	v_div_fixup_f32 v26, v80, v85, v26
	v_div_scale_f32 v80, s9, v32, v85, v32
	v_fma_f32 v79, -v94, v83, v86
	v_fmac_f32_e32 v89, v84, v95
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v84, -v92, v81, 1.0
	v_div_scale_f32 v86, null, v85, v85, v20
	v_fma_f32 v90, -v91, v88, 1.0
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v81, v84, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v84, v86
	v_div_fmas_f32 v79, v79, v82, v83
	v_fmac_f32_e32 v88, v90, v88
	v_fma_f32 v82, -v93, v89, v87
	v_div_scale_f32 v87, s8, v31, v85, v31
	v_div_scale_f32 v90, null, v85, v85, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v83, v80, v88
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v94, -v86, v84, 1.0
	v_mul_f32_e32 v93, v87, v81
	v_div_fixup_f32 v38, v79, v85, v38
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v23, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v94, v84
	v_div_fmas_f32 v82, v82, v95, v89
	v_fma_f32 v89, -v91, v83, v80
	v_rcp_f32_e32 v95, v90
	v_fma_f32 v79, -v92, v93, v87
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v37, v82, v85, v37
	v_fmac_f32_e32 v83, v89, v88
	v_div_scale_f32 v89, null, v85, v85, v41
	v_div_scale_f32 v82, s10, v20, v85, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v80, -v91, v83, v80
	v_fma_f32 v94, -v90, v95, 1.0
	v_fmac_f32_e32 v93, v79, v81
	v_rcp_f32_e32 v91, v89
	v_mul_f32_e32 v79, v82, v84
	v_div_fmas_f32 v80, v80, v88, v83
	v_fmac_f32_e32 v95, v94, v95
	v_div_scale_f32 v94, s11, v49, v85, v49
	v_fma_f32 v83, -v92, v93, v87
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v87, -v86, v79, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v88, v94, v95
	v_fma_f32 v92, -v89, v91, 1.0
	v_div_fmas_f32 v81, v83, v81, v93
	v_rcp_f32_e32 v83, v96
	v_fmac_f32_e32 v79, v87, v84
	v_fma_f32 v87, -v90, v88, v94
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, s8, v41, v85, v41
	v_div_fixup_f32 v32, v80, v85, v32
	v_div_fixup_f32 v31, v81, v85, v31
	v_fma_f32 v80, -v86, v79, v82
	v_fmac_f32_e32 v88, v87, v95
	v_mul_f32_e32 v81, v92, v91
	v_fma_f32 v82, -v96, v83, 1.0
	v_div_scale_f32 v86, null, v85, v85, v33
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v87, s9, v39, v85, v39
	v_div_fmas_f32 v79, v80, v84, v79
	v_fma_f32 v80, -v90, v88, v94
	v_fma_f32 v84, -v89, v81, v92
	v_fmac_f32_e32 v83, v82, v83
	v_rcp_f32_e32 v82, v86
	v_div_scale_f32 v90, null, v85, v85, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v84, v91
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v20, v79, v85, v20
	v_rcp_f32_e32 v84, v90
	v_div_fmas_f32 v80, v80, v95, v88
	v_mul_f32_e32 v88, v87, v83
	v_fma_f32 v79, -v89, v81, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v86, v82, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v49, v80, v85, v49
	v_fma_f32 v80, -v96, v88, v87
	v_div_scale_f32 v89, s10, v33, v85, v33
	v_fmac_f32_e32 v82, v93, v82
	v_fma_f32 v92, -v90, v84, 1.0
	v_div_scale_f32 v93, null, v85, v85, v17
	v_div_fmas_f32 v79, v79, v91, v81
	v_fmac_f32_e32 v88, v80, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v84, v92, v84
	v_rcp_f32_e32 v81, v93
	v_div_scale_f32 v92, null, v85, v85, v18
	v_mul_f32_e32 v80, v89, v82
	v_div_scale_f32 v91, s8, v19, v85, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v95, v92
	v_div_fixup_f32 v41, v79, v85, v41
	v_fma_f32 v79, -v96, v88, v87
	v_fma_f32 v87, -v86, v80, v89
	v_mul_f32_e32 v94, v91, v84
	v_fma_f32 v96, -v93, v81, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v83, v88
	v_fmac_f32_e32 v80, v87, v82
	v_fma_f32 v83, -v90, v94, v91
	v_fmac_f32_e32 v81, v96, v81
	v_div_scale_f32 v87, s9, v17, v85, v17
	v_fma_f32 v88, -v92, v95, 1.0
	v_div_fixup_f32 v39, v79, v85, v39
	v_fma_f32 v79, -v86, v80, v89
	v_fmac_f32_e32 v94, v83, v84
	v_mul_f32_e32 v83, v87, v81
	v_fmac_f32_e32 v95, v88, v95
	v_div_scale_f32 v88, null, v78, v78, v47
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v86, s11, v18, v85, v18
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v90, v94, v91
	v_fma_f32 v82, -v93, v83, v87
	v_rcp_f32_e32 v89, v88
	v_div_scale_f32 v91, null, v78, v78, v42
	v_mul_f32_e32 v90, v86, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v82, v81
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v82, v91
	v_div_fmas_f32 v80, v80, v84, v94
	v_fma_f32 v84, -v92, v90, v86
	v_div_fixup_f32 v33, v79, v85, v33
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v88, v89, 1.0
	v_fma_f32 v79, -v93, v83, v87
	v_div_fixup_f32 v19, v80, v85, v19
	v_fmac_f32_e32 v90, v84, v95
	v_div_scale_f32 v80, s8, v47, v78, v47
	v_fmac_f32_e32 v89, v94, v89
	v_fma_f32 v84, -v91, v82, 1.0
	v_div_scale_f32 v87, null, v78, v78, v35
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v81, v83
	v_fma_f32 v81, -v92, v90, v86
	v_mul_f32_e32 v83, v80, v89
	v_fmac_f32_e32 v82, v84, v82
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v86, s9, v42, v78, v42
	v_div_scale_f32 v92, null, v78, v78, v36
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v93, v86, v82
	v_div_fmas_f32 v81, v81, v95, v90
	v_fma_f32 v90, -v88, v83, v80
	v_rcp_f32_e32 v95, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v87, v84, 1.0
	v_div_fixup_f32 v17, v79, v85, v17
	v_fma_f32 v79, -v91, v93, v86
	v_fmac_f32_e32 v83, v90, v89
	v_div_fixup_f32 v18, v81, v85, v18
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v81, s10, v35, v78, v35
	v_div_scale_f32 v85, null, v78, v78, v52
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v92, v95, 1.0
	v_fma_f32 v80, -v88, v83, v80
	v_fmac_f32_e32 v93, v79, v82
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v79, v81, v84
	v_rcp_f32_e32 v88, v85
	v_fmac_f32_e32 v95, v90, v95
	v_div_scale_f32 v90, s11, v36, v78, v36
	v_div_fmas_f32 v80, v80, v89, v83
	v_fma_f32 v83, -v91, v93, v86
	v_div_scale_f32 v94, null, v78, v78, v48
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v86, -v87, v79, v81
	v_mul_f32_e32 v89, v90, v95
	v_div_fmas_f32 v82, v83, v82, v93
	v_rcp_f32_e32 v83, v94
	v_fma_f32 v91, -v85, v88, 1.0
	v_fmac_f32_e32 v79, v86, v84
	v_fma_f32 v86, -v92, v89, v90
	v_div_fixup_f32 v42, v82, v78, v42
	v_div_fixup_f32 v47, v80, v78, v47
	v_fmac_f32_e32 v88, v91, v88
	v_div_scale_f32 v91, s8, v52, v78, v52
	v_fmac_f32_e32 v89, v86, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v94, v83, 1.0
	v_div_scale_f32 v86, null, v78, v78, v43
	v_fma_f32 v80, -v87, v79, v81
	v_mul_f32_e32 v81, v91, v88
	v_fmac_f32_e32 v83, v82, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v82, v86
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v87, s9, v48, v78, v48
	v_div_fmas_f32 v79, v80, v84, v79
	v_fma_f32 v80, -v92, v89, v90
	v_fma_f32 v84, -v85, v81, v91
	v_div_scale_f32 v90, null, v78, v78, v40
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v86, v82, 1.0
	v_fmac_f32_e32 v81, v84, v88
	v_rcp_f32_e32 v84, v90
	v_div_fmas_f32 v80, v80, v95, v89
	v_mul_f32_e32 v89, v87, v83
	v_div_fixup_f32 v35, v79, v78, v35
	v_fma_f32 v79, -v85, v81, v91
	v_fmac_f32_e32 v82, v92, v82
	v_div_scale_f32 v92, null, v78, v78, v16
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v36, v80, v78, v36
	v_fma_f32 v80, -v94, v89, v87
	v_div_scale_f32 v85, s10, v43, v78, v43
	v_fma_f32 v91, -v90, v84, 1.0
	v_div_fmas_f32 v79, v79, v88, v81
	v_rcp_f32_e32 v81, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v89, v80, v83 :: v_dual_mul_f32 v80, v85, v82
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v88, s8, v40, v78, v40
	v_div_scale_f32 v91, null, v78, v78, v61
	v_div_fixup_f32 v52, v79, v78, v52
	v_fma_f32 v79, -v94, v89, v87
	v_fma_f32 v87, -v86, v80, v85
	v_mul_f32_e32 v93, v88, v84
	v_rcp_f32_e32 v94, v91
	v_fma_f32 v95, -v92, v81, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v80, v87, v82
	v_div_fmas_f32 v79, v79, v83, v89
	v_fma_f32 v83, -v90, v93, v88
	v_fmac_f32_e32 v81, v95, v81
	v_div_scale_f32 v87, s9, v16, v78, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v48, v79, v78, v48
	v_fma_f32 v89, -v91, v94, 1.0
	v_fma_f32 v79, -v86, v80, v85
	v_fmac_f32_e32 v93, v83, v84
	v_mul_f32_e32 v83, v87, v81
	v_div_scale_f32 v86, null, v78, v78, v51
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v94, v89, v94
	v_div_scale_f32 v85, s11, v61, v78, v61
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v90, v93, v88
	v_fma_f32 v82, -v92, v83, v87
	v_rcp_f32_e32 v88, v86
	v_div_scale_f32 v90, null, v78, v78, v50
	v_mul_f32_e32 v89, v85, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v82, v81
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v82, v90
	v_div_fmas_f32 v80, v80, v84, v93
	v_fma_f32 v84, -v91, v89, v85
	v_div_fixup_f32 v43, v79, v78, v43
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v86, v88, 1.0
	v_fma_f32 v79, -v92, v83, v87
	v_div_fixup_f32 v40, v80, v78, v40
	v_fmac_f32_e32 v89, v84, v94
	v_div_scale_f32 v80, s8, v51, v78, v51
	v_fmac_f32_e32 v88, v93, v88
	v_fma_f32 v84, -v90, v82, 1.0
	v_div_scale_f32 v87, null, v78, v78, v44
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v95, null, v78, v78, v13
	v_div_fmas_f32 v79, v79, v81, v83
	v_fma_f32 v81, -v91, v89, v85
	v_mul_f32_e32 v83, v80, v88
	v_fmac_f32_e32 v82, v84, v82
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v85, s9, v50, v78, v50
	v_div_scale_f32 v91, null, v78, v78, v15
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v92, v85, v82
	v_div_fmas_f32 v81, v81, v94, v89
	v_fma_f32 v89, -v86, v83, v80
	v_rcp_f32_e32 v94, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v87, v84, 1.0
	v_div_fixup_f32 v16, v79, v78, v16
	v_fma_f32 v79, -v90, v92, v85
	v_fmac_f32_e32 v83, v89, v88
	v_div_fixup_f32 v61, v81, v78, v61
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v81, s10, v44, v78, v44
	v_div_scale_f32 v89, null, v78, v78, v14
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v91, v94, 1.0
	v_fma_f32 v80, -v86, v83, v80
	v_fmac_f32_e32 v92, v79, v82
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v79, v81, v84
	v_rcp_f32_e32 v86, v89
	v_fmac_f32_e32 v94, v93, v94
	v_div_scale_f32 v93, s11, v15, v78, v15
	v_div_fmas_f32 v80, v80, v88, v83
	v_fma_f32 v83, -v90, v92, v85
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v85, -v87, v79, v81
	v_mul_f32_e32 v88, v93, v94
	v_div_fixup_f32 v51, v80, v78, v51
	v_div_fmas_f32 v82, v83, v82, v92
	v_rcp_f32_e32 v83, v95
	v_fma_f32 v90, -v89, v86, 1.0
	v_fmac_f32_e32 v79, v85, v84
	v_fma_f32 v85, -v91, v88, v93
	v_div_fixup_f32 v50, v82, v78, v50
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v86, v90, v86
	v_div_scale_f32 v90, s8, v14, v78, v14
	v_fmac_f32_e32 v88, v85, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v95, v83, 1.0
	v_div_scale_f32 v85, null, v77, v77, v57
	v_fma_f32 v80, -v87, v79, v81
	v_mul_f32_e32 v81, v90, v86
	v_fmac_f32_e32 v83, v82, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v87, s9, v13, v78, v13
	v_div_fmas_f32 v79, v80, v84, v79
	v_fma_f32 v80, -v91, v88, v93
	v_fma_f32 v84, -v89, v81, v90
	v_div_scale_f32 v91, null, v77, v77, v53
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v44, v79, v78, v44
	v_fmac_f32_e32 v81, v84, v86
	v_rcp_f32_e32 v84, v91
	v_fma_f32 v92, -v85, v82, 1.0
	v_div_fmas_f32 v80, v80, v94, v88
	v_mul_f32_e32 v88, v87, v83
	v_fma_f32 v79, -v89, v81, v90
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v82, v92, v82
	v_div_scale_f32 v92, null, v77, v77, v45
	v_div_fixup_f32 v15, v80, v78, v15
	v_fma_f32 v80, -v95, v88, v87
	v_div_scale_f32 v89, s10, v57, v77, v57
	v_fma_f32 v90, -v91, v84, 1.0
	v_div_fmas_f32 v79, v79, v86, v81
	v_rcp_f32_e32 v81, v92
	v_fmac_f32_e32 v88, v80, v83
	v_mul_f32_e32 v80, v89, v82
	v_fmac_f32_e32 v84, v90, v84
	v_div_scale_f32 v86, s8, v53, v77, v53
	v_div_scale_f32 v90, null, v77, v77, v46
	v_div_fixup_f32 v14, v79, v78, v14
	v_fma_f32 v79, -v95, v88, v87
	v_fma_f32 v87, -v85, v80, v89
	v_mul_f32_e32 v93, v86, v84
	v_rcp_f32_e32 v94, v90
	v_fma_f32 v95, -v92, v81, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v80, v87, v82
	v_div_fmas_f32 v79, v79, v83, v88
	v_fma_f32 v83, -v91, v93, v86
	v_fmac_f32_e32 v81, v95, v81
	v_div_scale_f32 v87, s9, v45, v77, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v13, v79, v78, v13
	v_fma_f32 v88, -v90, v94, 1.0
	v_fma_f32 v78, -v85, v80, v89
	v_fmac_f32_e32 v93, v83, v84
	v_mul_f32_e32 v79, v87, v81
	v_div_scale_f32 v85, null, v77, v77, v70
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v94, v88, v94
	v_div_scale_f32 v83, s11, v46, v77, v46
	v_div_fmas_f32 v78, v78, v82, v80
	v_fma_f32 v80, -v91, v93, v86
	v_fma_f32 v82, -v92, v79, v87
	v_rcp_f32_e32 v86, v85
	v_div_scale_f32 v89, null, v77, v77, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v88, v83, v94 :: v_dual_fmac_f32 v79, v82, v81
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v82, v89
	v_div_fmas_f32 v80, v80, v84, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v84, -v90, v88, v83
	v_div_fixup_f32 v57, v78, v77, v57
	v_fma_f32 v91, -v85, v86, 1.0
	v_fma_f32 v78, -v92, v79, v87
	v_div_fixup_f32 v53, v80, v77, v53
	v_fmac_f32_e32 v88, v84, v94
	v_div_scale_f32 v80, s8, v70, v77, v70
	v_fmac_f32_e32 v86, v91, v86
	v_fma_f32 v84, -v89, v82, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v87, null, v77, v77, v56
	v_div_fmas_f32 v78, v78, v81, v79
	v_fma_f32 v79, -v90, v88, v83
	v_mul_f32_e32 v81, v80, v86
	v_fmac_f32_e32 v82, v84, v82
	v_div_scale_f32 v84, s9, v62, v77, v62
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v45, v78, v77, v45
	v_div_fmas_f32 v79, v79, v94, v88
	v_fma_f32 v88, -v85, v81, v80
	v_mul_f32_e32 v91, v84, v82
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v94, null, v77, v77, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v88, v86
	v_fma_f32 v78, -v89, v91, v84
	v_rcp_f32_e32 v83, v87
	v_div_scale_f32 v90, null, v77, v77, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v80, -v85, v81, v80
	v_fmac_f32_e32 v91, v78, v82
	v_div_scale_f32 v88, null, v77, v77, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v93, v90
	v_div_fmas_f32 v80, v80, v86, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v81, -v89, v91, v84
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v92, -v87, v83, 1.0
	v_div_fixup_f32 v46, v79, v77, v46
	v_div_scale_f32 v79, s10, v56, v77, v56
	v_div_fmas_f32 v81, v81, v82, v91
	v_rcp_f32_e32 v82, v94
	v_rcp_f32_e32 v85, v88
	v_div_fixup_f32 v70, v80, v77, v70
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v62, v81, v77, v62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v94, v82, 1.0
	v_fma_f32 v89, -v88, v85, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v82, v81, v82 :: v_dual_fmac_f32 v83, v92, v83
	v_fma_f32 v92, -v90, v93, 1.0
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v89, s8, v12, v77, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v78, v79, v83 :: v_dual_fmac_f32 v93, v92, v93
	v_div_scale_f32 v92, s11, v54, v77, v54
	v_mul_f32_e32 v80, v89, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v87, v78, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v86, v92, v93
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v14, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v78, v84, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v90, v86, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v87, v78, v79
	v_div_scale_f32 v87, s9, v72, v77, v72
	v_fmac_f32_e32 v86, v84, v93
	v_div_scale_f32 v84, null, v77, v77, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v78, v79, v83, v78
	v_fma_f32 v83, -v88, v80, v89
	v_fma_f32 v79, -v90, v86, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v90, null, v77, v77, v64
	v_fmac_f32_e32 v80, v83, v85
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v56, v78, v77, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v83, v90
	v_div_fmas_f32 v79, v79, v93, v86
	v_mul_f32_e32 v86, v87, v82
	v_fma_f32 v78, -v88, v80, v89
	v_fma_f32 v91, -v84, v81, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v54, v79, v77, v54
	v_fma_f32 v79, -v94, v86, v87
	v_div_scale_f32 v88, s10, v65, v77, v65
	v_fmac_f32_e32 v81, v91, v81
	v_fma_f32 v89, -v90, v83, 1.0
	v_div_scale_f32 v91, null, v77, v77, v55
	v_div_fmas_f32 v78, v78, v85, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v79, v82 :: v_dual_fmac_f32 v83, v89, v83
	v_rcp_f32_e32 v80, v91
	v_div_scale_f32 v89, null, v77, v77, v11
	v_mul_f32_e32 v79, v88, v81
	v_div_scale_f32 v85, s8, v64, v77, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v93, v89
	v_div_fixup_f32 v12, v78, v77, v12
	v_fma_f32 v78, -v94, v86, v87
	v_fma_f32 v87, -v84, v79, v88
	v_mul_f32_e32 v92, v85, v83
	v_fma_f32 v94, -v91, v80, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v82, v86
	v_fmac_f32_e32 v79, v87, v81
	v_fma_f32 v82, -v90, v92, v85
	v_fmac_f32_e32 v80, v94, v80
	v_div_scale_f32 v86, s9, v55, v77, v55
	v_fma_f32 v87, -v89, v93, 1.0
	v_div_fixup_f32 v72, v78, v77, v72
	v_fma_f32 v78, -v84, v79, v88
	v_fmac_f32_e32 v92, v82, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v82, v86, v80 :: v_dual_fmac_f32 v93, v87, v93
	v_div_scale_f32 v87, null, v77, v77, v0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v84, s11, v11, v77, v11
	v_div_fmas_f32 v78, v78, v81, v79
	v_fma_f32 v79, -v90, v92, v85
	v_fma_f32 v81, -v91, v82, v86
	v_rcp_f32_e32 v85, v87
	v_div_scale_f32 v90, null, v77, v77, v10
	v_mul_f32_e32 v88, v84, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v81, v80
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v81, v90
	v_div_fmas_f32 v79, v79, v83, v92
	v_fma_f32 v83, -v89, v88, v84
	v_div_fixup_f32 v65, v78, v77, v65
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v87, v85, 1.0
	v_fma_f32 v78, -v91, v82, v86
	v_div_fixup_f32 v64, v79, v77, v64
	v_fmac_f32_e32 v88, v83, v93
	v_div_scale_f32 v79, s8, v0, v77, v0
	v_fmac_f32_e32 v85, v92, v85
	v_fma_f32 v83, -v90, v81, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v91, null, v76, v76, v66
	v_div_fmas_f32 v78, v78, v80, v82
	v_fma_f32 v80, -v89, v88, v84
	v_mul_f32_e32 v82, v79, v85
	v_fmac_f32_e32 v81, v83, v81
	v_div_scale_f32 v83, null, v76, v76, v67
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v84, s9, v10, v77, v10
	v_div_fmas_f32 v80, v80, v93, v88
	v_rcp_f32_e32 v86, v83
	v_fma_f32 v88, -v87, v82, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v89, v84, v81
	v_div_fixup_f32 v55, v78, v77, v55
	v_div_fixup_f32 v11, v80, v77, v11
	v_rcp_f32_e32 v80, v91
	v_fmac_f32_e32 v82, v88, v85
	v_fma_f32 v78, -v90, v89, v84
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v93, null, v76, v76, v60
	v_fma_f32 v88, -v83, v86, 1.0
	v_fma_f32 v79, -v87, v82, v79
	v_div_scale_f32 v87, null, v76, v76, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v89, v78, v81 :: v_dual_fmac_f32 v86, v88, v86
	v_div_scale_f32 v78, s10, v67, v76, v67
	v_rcp_f32_e32 v88, v87
	v_fma_f32 v92, -v91, v80, 1.0
	v_div_fmas_f32 v79, v79, v85, v82
	v_fma_f32 v82, -v90, v89, v84
	v_mul_f32_e32 v84, v78, v86
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v80, v92, v80
	v_div_scale_f32 v85, s8, v66, v76, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v92, -v83, v84, v78
	v_fma_f32 v90, -v87, v88, 1.0
	v_rcp_f32_e32 v95, v93
	v_div_fmas_f32 v81, v82, v81, v89
	v_mul_f32_e32 v94, v85, v80
	v_fmac_f32_e32 v84, v92, v86
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s11, v63, v76, v63
	v_div_fixup_f32 v0, v79, v77, v0
	v_div_fixup_f32 v10, v81, v77, v10
	v_fma_f32 v77, -v83, v84, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v89, v90, v88
	v_div_scale_f32 v81, null, v76, v76, v75
	v_fma_f32 v82, -v91, v94, v85
	v_fma_f32 v79, -v93, v95, 1.0
	v_fma_f32 v78, -v87, v89, v90
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v94, v82, v80 :: v_dual_fmac_f32 v95, v79, v95
	v_fmac_f32_e32 v89, v78, v88
	v_rcp_f32_e32 v78, v81
	v_div_scale_f32 v79, s9, v60, v76, v60
	v_div_fmas_f32 v77, v77, v86, v84
	v_fma_f32 v82, -v91, v94, v85
	v_div_scale_f32 v84, null, v76, v76, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v83, v79, v95
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v67, v77, v76, v67
	v_fma_f32 v85, -v81, v78, 1.0
	v_div_fmas_f32 v80, v82, v80, v94
	v_fma_f32 v82, -v87, v89, v90
	v_rcp_f32_e32 v86, v84
	v_fma_f32 v87, -v93, v83, v79
	v_fmac_f32_e32 v78, v85, v78
	v_div_scale_f32 v85, s8, v75, v76, v75
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v83, v87, v95
	v_div_fmas_f32 v82, v82, v88, v89
	v_mul_f32_e32 v77, v85, v78
	v_div_fixup_f32 v66, v80, v76, v66
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v80, -v84, v86, 1.0
	v_fma_f32 v79, -v93, v83, v79
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v87, -v81, v77, v85
	v_div_fixup_f32 v63, v82, v76, v63
	v_div_scale_f32 v82, null, v76, v76, v69
	v_fmac_f32_e32 v86, v80, v86
	v_div_scale_f32 v80, s10, v73, v76, v73
	v_div_fmas_f32 v79, v79, v95, v83
	v_fmac_f32_e32 v77, v87, v78
	v_rcp_f32_e32 v88, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v83, v80, v86
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v60, v79, v76, v60
	v_fma_f32 v79, -v81, v77, v85
	v_div_scale_f32 v87, null, v76, v76, v68
	v_fma_f32 v81, -v84, v83, v80
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v79, v78, v77
	v_div_scale_f32 v78, null, v76, v76, v9
	v_fma_f32 v85, -v82, v88, 1.0
	v_rcp_f32_e32 v89, v87
	v_fmac_f32_e32 v83, v81, v86
	v_rcp_f32_e32 v81, v78
	v_div_scale_f32 v79, s8, v69, v76, v69
	v_fmac_f32_e32 v88, v85, v88
	v_div_scale_f32 v85, null, v76, v76, v74
	v_div_fixup_f32 v75, v77, v76, v75
	v_fma_f32 v80, -v84, v83, v80
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v77, -v87, v89, 1.0
	v_rcp_f32_e32 v91, v85
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v78, v81, 1.0
	v_mul_f32_e32 v84, v79, v88
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v89, v77, v89
	v_div_scale_f32 v77, s9, v68, v76, v68
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v90, null, v76, v76, v71
	v_div_fmas_f32 v80, v80, v86, v83
	v_fma_f32 v83, -v82, v84, v79
	v_mul_f32_e32 v86, v77, v89
	v_div_scale_f32 v92, s10, v9, v76, v9
	v_fma_f32 v93, -v85, v91, 1.0
	v_rcp_f32_e32 v94, v90
	v_fmac_f32_e32 v84, v83, v88
	v_fma_f32 v83, -v87, v86, v77
	v_mul_f32_e32 v95, v92, v81
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, s11, v74, v76, v74
	v_div_fixup_f32 v73, v80, v76, v73
	v_fma_f32 v79, -v82, v84, v79
	v_fmac_f32_e32 v86, v83, v89
	v_fma_f32 v80, -v78, v95, v92
	v_mul_f32_e32 v82, v93, v91
	v_fma_f32 v83, -v90, v94, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v77, -v87, v86, v77
	v_div_fmas_f32 v79, v79, v88, v84
	v_fmac_f32_e32 v95, v80, v81
	v_fma_f32 v80, -v85, v82, v93
	v_fmac_f32_e32 v94, v83, v94
	v_div_scale_f32 v83, s8, v71, v76, v71
	v_div_scale_f32 v84, null, v76, v76, v59
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v82, v80, v91
	v_mul_f32_e32 v80, v83, v94
	v_div_fmas_f32 v77, v77, v89, v86
	v_rcp_f32_e32 v86, v84
	v_fma_f32 v78, -v78, v95, v92
	v_div_fixup_f32 v69, v79, v76, v69
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v68, v77, v76, v68
	v_div_scale_f32 v88, null, v76, v76, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v84, v86, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v51, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v79, v86
	v_div_fmas_f32 v78, v78, v81, v95
	v_fma_f32 v81, -v85, v82, v93
	v_fma_f32 v85, -v90, v80, v83
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v79, null, v76, v76, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v81, v81, v91, v82
	v_fmac_f32_e32 v80, v85, v94
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v9, v78, v76, v9
	v_div_scale_f32 v78, null, v76, v76, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v77, -v90, v80, v83
	v_div_fixup_f32 v74, v81, v76, v74
	v_div_scale_f32 v81, null, v76, v76, v7
	v_rcp_f32_e32 v83, v79
	v_div_fmas_f32 v77, v77, v94, v80
	v_div_scale_f32 v82, vcc_lo, v59, v76, v59
	v_rcp_f32_e32 v80, v78
	v_rcp_f32_e32 v85, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v71, v77, v76, v71
	v_mul_f32_e32 v87, v82, v86
	v_rcp_f32_e32 v90, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v79, v83, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v84, v87, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v78, v80, 1.0
	v_fma_f32 v92, -v81, v85, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v91, v86
	v_fma_f32 v94, -v88, v90, 1.0
	v_fmac_f32_e32 v80, v77, v80
	v_div_scale_f32 v77, s8, v58, v76, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v84, v87, v82
	v_fmac_f32_e32 v85, v92, v85
	v_div_scale_f32 v92, s10, v7, v76, v7
	v_fmac_f32_e32 v90, v94, v90
	v_div_fmas_f32 v82, v82, v86, v87
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	v_mul_f32_e32 v96, v92, v85
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v94, s11, v8, v76, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v93, v77, v80
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v89, v83
	v_div_scale_f32 v89, s9, v6, v76, v6
	v_fma_f32 v91, -v78, v93, v77
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v33, v33
	v_med3_f32 v35, v35, s8, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v95, v89, v83
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v52, v52, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v91, v80
	v_fma_f32 v91, -v81, v96, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v10, v10, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v79, v95, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v52, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v78, v93, v77
	v_fmac_f32_e32 v96, v91, v85
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v84, v83
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v91, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v80, v93
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v10, 15, v38
	v_and_b32_e32 v38, 15, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v79, v95, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v58, v77, v76, v58
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v77, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v97, v94, v90
	s_mov_b32 vcc_lo, s9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v40, v40, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v83, v95
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v78, -v88, v97, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v6, v79, v76, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v97, v78, v90
	v_fma_f32 v78, -v81, v96, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v79, v40
	v_and_b32_e32 v40, 15, v43
	v_med3_f32 v30, v30, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v88, v97, v94
	v_div_fmas_f32 v78, v78, v85, v96
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v90, v97
	v_div_fixup_f32 v7, v78, v76, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v7
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v59, v82, v76, v59
	v_div_fixup_f32 v8, v80, v76, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v60, v60
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v18, v18
	v_and_b32_e32 v43, 15, v61
	v_and_b32_e32 v61, 15, v64
	v_and_b32_e32 v64, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v105
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v75, v75
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v74, v74
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v6, v6
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_cvt_i32_f32_e32 v83, v14
	v_cvt_i32_f32_e32 v84, v13
	v_cvt_i32_f32_e32 v103, v7
	v_and_b32_e32 v13, 15, v31
	v_and_b32_e32 v14, 15, v20
	v_and_b32_e32 v31, 15, v19
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v19, 6, v5
	v_lshlrev_b32_e32 v20, 6, v105
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v7, 15, v30
	v_and_b32_e32 v30, 15, v33
	v_and_b32_e32 v33, 15, v18
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v18, 4, v106
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v58, v58
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v75, v75, s8, 0x40e00000
	v_med3_f32 v9, v9, s8, 0x40e00000
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v11, v11, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v6, v6, s8, 0x40e00000
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v78, v36
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v85, v45
	v_cvt_i32_f32_e32 v86, v46
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v92, v66
	v_cvt_i32_f32_e32 v93, v63
	v_cvt_i32_f32_e32 v94, v60
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v18, v18, v28
	v_add3_u32 v0, 0, v0, v19
	v_and_or_b32 v19, 0x1b00, v20, v25
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v76, v17
	v_cvt_i32_f32_e32 v80, v16
	v_cvt_i32_f32_e32 v81, v44
	v_cvt_i32_f32_e32 v82, v15
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v88, v12
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v97, v9
	v_cvt_i32_f32_e32 v98, v74
	v_cvt_i32_f32_e32 v99, v71
	v_cvt_i32_f32_e32 v100, v59
	v_cvt_i32_f32_e32 v90, v11
	v_cvt_i32_f32_e32 v95, v69
	v_cvt_i32_f32_e32 v96, v68
	v_cvt_i32_f32_e32 v102, v6
	v_cvt_i32_f32_e32 v104, v8
	v_and_b32_e32 v6, 15, v34
	v_and_b32_e32 v8, 15, v23
	v_and_b32_e32 v9, 15, v26
	v_and_b32_e32 v11, 15, v37
	v_and_b32_e32 v12, 15, v32
	v_and_b32_e32 v16, 15, v41
	v_and_b32_e32 v17, 15, v39
	v_and_b32_e32 v34, 15, v47
	v_and_b32_e32 v35, 15, v42
	v_and_b32_e32 v36, 15, v77
	v_and_b32_e32 v37, 15, v78
	v_and_b32_e32 v39, 15, v48
	v_and_b32_e32 v41, 15, v79
	v_and_b32_e32 v44, 15, v51
	v_and_b32_e32 v45, 15, v50
	v_and_b32_e32 v50, 15, v57
	v_and_b32_e32 v51, 15, v53
	v_and_b32_e32 v52, 15, v85
	v_and_b32_e32 v53, 15, v86
	v_and_b32_e32 v66, 15, v67
	v_and_b32_e32 v67, 15, v92
	v_and_b32_e32 v68, 15, v93
	v_and_b32_e32 v69, 15, v94
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v18, v27
	v_xad_u32 v18, v19, v107, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v87, v54
	v_cvt_i32_f32_e32 v101, v58
	v_and_b32_e32 v15, 15, v49
	v_and_b32_e32 v32, 15, v76
	v_and_b32_e32 v42, 15, v80
	v_and_b32_e32 v46, 15, v81
	v_and_b32_e32 v47, 15, v82
	v_and_b32_e32 v48, 15, v83
	v_and_b32_e32 v49, 15, v84
	v_and_b32_e32 v54, 15, v70
	v_and_b32_e32 v58, 15, v88
	v_and_b32_e32 v59, 15, v72
	v_and_b32_e32 v60, 15, v65
	v_and_b32_e32 v70, 15, v75
	v_and_b32_e32 v74, 15, v97
	v_and_b32_e32 v75, 15, v98
	v_and_b32_e32 v76, 15, v99
	v_and_b32_e32 v77, 15, v100
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v55, v55
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[6:9]
	ds_store_b128 v0, v[14:17] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v18
	ds_load_b128 v[14:17], v18 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[34:37]
	ds_store_b128 v0, v[42:45] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v18
	ds_load_b128 v[34:37], v18 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[50:53]
	ds_store_b128 v0, v[58:61] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[42:45], v18
	ds_load_b128 v[50:53], v18 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[66:69]
	ds_store_b128 v0, v[74:77] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[58:61], v18
	ds_load_b128 v[66:69], v18 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[10:13]
	ds_store_b128 v0, v[30:33] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v18
	ds_load_b128 v[30:33], v18 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[38:41]
	ds_store_b128 v0, v[46:49] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[38:41], v18
	ds_load_b128 v[46:49], v18 offset:1024
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v73
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_and_b32_e32 v57, 15, v87
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v89, v55
	v_and_b32_e32 v63, 15, v90
	v_cvt_i32_f32_e32 v73, v73
	v_and_b32_e32 v55, 15, v62
	v_and_b32_e32 v56, 15, v56
	v_and_b32_e32 v62, 15, v89
	v_and_b32_e32 v65, 15, v91
	v_and_b32_e32 v71, 15, v73
	v_and_b32_e32 v72, 15, v95
	v_and_b32_e32 v73, 15, v96
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[54:57]
	ds_store_b128 v0, v[62:65] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[54:57], v18
	ds_load_b128 v[62:65], v18 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v78, 15, v101
	v_and_b32_e32 v79, 15, v102
	v_and_b32_e32 v80, 15, v103
	v_and_b32_e32 v81, 15, v104
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v20, v35, 4, v26
	v_lshl_or_b32 v26, v46, 4, v38
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v46, 3, v106
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v6, v14, 4, v6
	v_lshl_or_b32 v14, v16, 4, v8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, s28, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[70:73]
	ds_store_b128 v0, v[78:81] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[70:73], v18
	ds_load_b128 v[74:77], v18 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s37, 7, v46
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v16, v30, 4, v10
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 16, v8
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v7, v15, 4, v7
	v_lshl_or_b32 v15, v17, 4, v9
	v_lshl_or_b32 v17, v31, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 32, v8
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v18, v32, 4, v12
	v_lshl_or_b32 v13, v33, 4, v13
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 48, v8
	v_mad_u64_u32 v[8:9], null, v8, s8, v[0:1]
	v_mad_u64_u32 v[9:10], null, v10, s8, v[0:1]
	v_mad_u64_u32 v[10:11], null, v11, s8, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v19, v34, 4, v25
	v_lshl_or_b32 v25, v37, 4, v28
	v_lshl_or_b32 v28, v48, 4, v40
	v_lshl_or_b32 v30, v49, 4, v41
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[11:12], null, v12, s8, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v15.l
	v_and_b16 v0.h, 0xff, v14.l
	v_lshlrev_b16 v3.l, 8, v7.l
	v_and_b16 v4.l, 0xff, v6.l
	v_lshlrev_b16 v6.l, 8, v13.l
	v_and_b16 v6.h, 0xff, v18.l
	v_lshlrev_b16 v7.l, 8, v17.l
	v_and_b16 v7.h, 0xff, v16.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v23, v36, 4, v27
	v_lshl_or_b32 v27, v47, 4, v39
	v_lshl_or_b32 v37, v64, 4, v56
	v_lshl_or_b32 v38, v65, 4, v57
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v0.h, v0.l
	v_or_b16 v12.l, v4.l, v3.l
	v_or_b16 v13.h, v6.h, v6.l
	v_or_b16 v13.l, v7.h, v7.l
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v6.l, 8, v30.l
	v_and_b16 v6.h, 0xff, v28.l
	s_and_b32 s9, s21, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s20
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v31, v50, 4, v42
	v_lshl_or_b32 v32, v51, 4, v43
	v_lshl_or_b32 v33, v52, 4, v44
	v_lshl_or_b32 v34, v53, 4, v45
	v_lshl_or_b32 v35, v62, 4, v54
	v_lshl_or_b32 v36, v63, 4, v55
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v45, v76, 4, v72
	v_lshl_or_b32 v24, v77, 4, v73
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v25.l
	v_and_b16 v0.h, 0xff, v23.l
	v_lshlrev_b16 v3.l, 8, v20.l
	v_and_b16 v4.l, 0xff, v19.l
	v_lshlrev_b16 v7.l, 8, v27.l
	v_and_b16 v7.h, 0xff, v26.l
	buffer_store_b64 v[12:13], v8, s[8:11], 0 offen
	v_or_b16 v13.h, v6.h, v6.l
	v_lshlrev_b16 v6.l, 8, v38.l
	v_and_b16 v6.h, 0xff, v37.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v39, v66, 4, v58
	v_lshl_or_b32 v40, v67, 4, v59
	v_lshl_or_b32 v41, v68, 4, v60
	v_lshl_or_b32 v42, v69, 4, v61
	v_lshl_or_b32 v43, v74, 4, v70
	v_lshl_or_b32 v44, v75, 4, v71
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v0.h, v0.l
	v_or_b16 v12.l, v4.l, v3.l
	v_or_b16 v13.l, v7.h, v7.l
	v_cndmask_b32_e32 v8, 0x80000000, v9, vcc_lo
	v_lshlrev_b16 v0.l, 8, v34.l
	v_and_b16 v0.h, 0xff, v33.l
	v_lshlrev_b16 v3.l, 8, v32.l
	v_and_b16 v4.l, 0xff, v31.l
	v_lshlrev_b16 v7.l, 8, v36.l
	v_and_b16 v7.h, 0xff, v35.l
	v_or_b16 v9.h, v6.h, v6.l
	v_lshlrev_b16 v6.l, 8, v24.l
	v_and_b16 v6.h, 0xff, v45.l
	buffer_store_b64 v[12:13], v8, s[8:11], 0 offen
	v_or_b16 v8.h, v0.h, v0.l
	v_or_b16 v8.l, v4.l, v3.l
	v_or_b16 v9.l, v7.h, v7.l
	v_lshlrev_b16 v0.l, 8, v42.l
	v_and_b16 v0.h, 0xff, v41.l
	v_lshlrev_b16 v3.l, 8, v40.l
	v_and_b16 v4.l, 0xff, v39.l
	v_lshlrev_b16 v7.l, 8, v44.l
	v_and_b16 v7.h, 0xff, v43.l
	v_or_b16 v13.h, v6.h, v6.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v105
	v_lshrrev_b32_e32 v5, 2, v5
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v0.h, v0.l
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.l, v4.l, v3.l
	v_or_b16 v13.l, v7.h, v7.l
	v_cndmask_b32_e32 v0, 0x80000000, v11, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v6
	v_add_nc_u32_e32 v5, 0, v5
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[8:9], v10, s[8:11], 0 offen
	buffer_store_b64 v[12:13], v0, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v46
	v_mov_b16_e32 v4.l, v29.h
	v_mov_b16_e32 v3.l, v22.h
	v_add3_u32 v5, v5, v6, v46
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1254 13 is_stmt 0             ; ragged.py:1254:13
	v_add_nc_u32_e32 v7, s28, v21
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
	v_and_b32_e32 v4, 0xc0, v105
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[30:31], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[34:35], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	v_cmp_eq_u32_e64 s1, 0, v4
	v_add_lshl_u32 v1, v3, s37, 1
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
.Ltmp58:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 300
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 300
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 27396
; TotalNumSgprs: 43
; NumVgprs: 256
; ScratchSize: 300
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
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 300
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 74
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
