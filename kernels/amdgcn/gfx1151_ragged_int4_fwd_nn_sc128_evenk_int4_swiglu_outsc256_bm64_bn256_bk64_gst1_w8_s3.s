	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[36:37], s[0:1], 0x5c
	v_mov_b32_e32 v98, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v99, 15, v98
	v_lshlrev_b32_e32 v11, 4, v98
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
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 4, v98
	s_branch .LBB0_3
.Ltmp4:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow629
	s_load_b128 s[20:23], s[0:1], 0x40
	s_load_b64 s[30:31], s[4:5], 0x0
	s_load_b64 s[34:35], s[6:7], 0x0
	v_dual_mov_b32 v87, 0 :: v_dual_and_b32 v100, 0xf0, v98
	v_dual_mov_b32 v104, 0 :: v_dual_lshlrev_b32 v101, 4, v99
	v_dual_mov_b32 v103, 0 :: v_dual_and_b32 v84, 3, v98
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v243, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v191, 0
	v_mov_b32_e32 v184, 0
	v_mov_b32_e32 v172, 0
	v_mov_b32_e32 v190, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x2
	s_load_b64 s[4:5], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s9, s[0:1], 0x58
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v10, 2, v98
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s0, s28, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s29, 0, s0
	v_add_co_u32 v2, s0, s28, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_u32 v4, vcc_lo, v0, 16
	v_add_co_ci_u32_e64 v3, null, s29, 0, s0
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 32
	v_mov_b32_e32 v195, 0
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_add_u32 s0, s4, s2
	s_addc_u32 s1, s5, s3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v8, vcc_lo, v0, 48
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[10:11], s[0:1], 0x0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[30:31], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[34:35], v[0:1]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_add_nc_u32_e32 v0, s28, v99
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, 0, v1, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[30:31], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[34:35], v[2:3]
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v194, 0 :: v_dual_add_nc_u32 v1, 16, v0
	v_dual_mov_b32 v201, 0 :: v_dual_add_nc_u32 v2, 32, v0
	v_dual_mov_b32 v200, 0 :: v_dual_add_nc_u32 v3, 48, v0
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v0, v0, s36
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s40, s37, 8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[30:31], v[4:5]
	v_or_b32_e32 v14, s40, v98
	v_cmp_le_i64_e64 s3, s[30:31], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[34:35], v[4:5]
	v_cmp_gt_i64_e64 s7, s[34:35], v[6:7]
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_lshrrev_b32_e32 v196, 3, v100
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:296
	scratch_store_b32 off, v101, off offset:332
	v_mul_lo_u32 v0, v1, s36
	v_dual_mov_b32 v189, 0 :: v_dual_lshlrev_b32 v206, 3, v84
	v_dual_mov_b32 v193, 0 :: v_dual_and_b32 v6, 0xe00, v11
	v_mov_b32_e32 v199, 0
	v_lshrrev_b32_e32 v1, 1, v98
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v5, v206, v196
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:300
	scratch_store_b32 off, v84, off offset:336
	scratch_store_b32 off, v98, off offset:320
	v_mul_lo_u32 v0, v2, s36
	v_dual_mov_b32 v187, 0 :: v_dual_lshlrev_b32 v2, 5, v99
	v_dual_mov_b32 v180, 0 :: v_dual_lshlrev_b32 v13, 2, v100
	v_dual_mov_b32 v186, 0 :: v_dual_and_b32 v1, 24, v1
	v_mov_b32_e32 v198, 0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:304
	scratch_store_b32 off, v11, off offset:340
	scratch_store_b32 off, v99, off offset:324
	v_mul_lo_u32 v0, v3, s36
	v_lshlrev_b32_e32 v11, 5, v98
	v_dual_mov_b32 v188, 0 :: v_dual_lshlrev_b32 v3, 3, v98
	v_lshl_or_b32 v208, v99, 9, v5
	v_mov_b32_e32 v181, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v192, 0 :: v_dual_and_b32 v11, 32, v11
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:308
	scratch_store_b32 off, v100, off offset:328
	v_lshlrev_b32_e32 v0, 1, v98
	v_add3_u32 v11, 0, v13, v11
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[30:31], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[34:35], v[8:9]
	v_xor_b32_e32 v1, v3, v1
	v_xor_b32_e32 v4, v0, v10
	v_and_or_b32 v207, v0, 24, v2
	v_dual_mov_b32 v191, 0 :: v_dual_and_b32 v0, 28, v0
	v_dual_mov_b32 v173, 0 :: v_dual_add_nc_u32 v10, s28, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v4, 24, v4
	v_xor_b32_e32 v3, 8, v207
	v_xor_b32_e32 v5, 16, v207
	v_xor_b32_e32 v7, 0x198, v208
	v_dual_mov_b32 v178, 0 :: v_dual_lshlrev_b32 v13, 1, v100
	v_or3_b32 v209, v6, v4, v2
	v_xor_b32_e32 v2, 24, v207
	v_xor_b32_e32 v4, 0x88, v208
	v_xor_b32_e32 v6, 0x110, v208
	v_dual_mov_b32 v175, 0 :: v_dual_add_nc_u32 v0, v11, v0
	v_xor_b32_e32 v8, 8, v209
	v_xor_b32_e32 v9, 16, v209
	v_xor_b32_e32 v12, 24, v209
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, s2, s5
	.loc	1 1049 17 is_stmt 1             ; ragged.py:1049:17
	s_lshl_b32 s5, s33, 1
	v_mul_lo_u32 v197, v10, s9
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s4
	s_and_b32 s4, s6, s8
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s6, s5, s9
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v14, off offset:312
	scratch_store_b32 off, v0, off offset:316
	v_dual_mov_b32 v179, 0 :: v_dual_add_nc_u32 v202, 0, v1
	v_dual_mov_b32 v170, 0 :: v_dual_add_nc_u32 v203, 0, v3
	v_dual_mov_b32 v171, 0 :: v_dual_add_nc_u32 v204, 0, v5
	v_dual_mov_b32 v185, 0 :: v_dual_add_nc_u32 v214, 0, v2
	v_dual_mov_b32 v190, 0 :: v_dual_add_nc_u32 v215, 0, v4
	v_dual_mov_b32 v172, 0 :: v_dual_add_nc_u32 v205, 0, v6
	v_dual_mov_b32 v183, 0 :: v_dual_add_nc_u32 v216, 0, v7
	v_dual_mov_b32 v184, 0 :: v_dual_add_nc_u32 v217, 0, v8
	v_dual_mov_b32 v177, 0 :: v_dual_add_nc_u32 v210, 0, v9
	v_dual_mov_b32 v182, 0 :: v_dual_add_nc_u32 v211, 0, v12
	v_dual_mov_b32 v169, 0 :: v_dual_add_nc_u32 v212, 0, v13
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v243, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v87, 0
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v102, 0
	v_mov_b32_e32 v104, 0
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v161, s40, v101
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s3, s3, s7
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s6, s6, s10
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s7, s36, s10
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	.loc	1 1180 33                       ; ragged.py:1180:33
	s_mov_b32 s38, 0
	s_add_u32 s39, s6, s33
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
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 33 is_stmt 0                ; ragged.py:0:33
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v158, off offset:292
	scratch_store_b32 off, v157, off offset:288
	scratch_store_b32 off, v156, off offset:284
	scratch_store_b32 off, v155, off offset:280
	scratch_store_b32 off, v154, off offset:276
	scratch_store_b32 off, v153, off offset:272
	scratch_store_b32 off, v224, off offset:268
	scratch_store_b32 off, v223, off offset:264
	scratch_store_b32 off, v222, off offset:260
	scratch_store_b32 off, v221, off offset:256
	scratch_store_b32 off, v152, off offset:252
	scratch_store_b32 off, v151, off offset:248
	scratch_store_b32 off, v150, off offset:244
	scratch_store_b32 off, v149, off offset:240
	scratch_store_b32 off, v144, off offset:236
	scratch_store_b32 off, v143, off offset:232
	scratch_store_b32 off, v142, off offset:228
	scratch_store_b32 off, v141, off offset:224
	scratch_store_b32 off, v140, off offset:220
	scratch_store_b32 off, v139, off offset:216
	scratch_store_b32 off, v138, off offset:212
	scratch_store_b32 off, v137, off offset:208
	scratch_store_b32 off, v136, off offset:204
	scratch_store_b32 off, v135, off offset:200
	scratch_store_b32 off, v134, off offset:196
	scratch_store_b32 off, v133, off offset:192
	scratch_store_b32 off, v132, off offset:188
	scratch_store_b32 off, v131, off offset:184
	scratch_store_b32 off, v130, off offset:180
	scratch_store_b32 off, v129, off offset:176
	scratch_store_b32 off, v148, off offset:172
	scratch_store_b32 off, v147, off offset:168
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v146, off offset:164
	scratch_store_b32 off, v145, off offset:160
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
	scratch_store_b32 off, v107, off offset:116
	scratch_store_b32 off, v106, off offset:112
	scratch_store_b32 off, v105, off offset:108
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
	scratch_store_b32 off, v104, off offset:12
	scratch_store_b32 off, v87, off offset:8
	scratch_store_b32 off, v103, off offset:4
	scratch_store_b32 off, v102, off
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v195
	v_mov_b32_e32 v3, v195
	v_dual_mov_b32 v4, v195 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v5, v195
	v_dual_mov_b32 v6, v195 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v7, v195
	v_dual_mov_b32 v8, v195 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v10, v195 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v11, v195
	v_dual_mov_b32 v12, v195 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v13, v195
	v_dual_mov_b32 v14, v195 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v15, v195
	v_dual_mov_b32 v16, v195 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v18, v195 :: v_dual_mov_b32 v65, 0
	v_mov_b32_e32 v19, v195
	v_dual_mov_b32 v20, v195 :: v_dual_mov_b32 v73, 0
	v_mov_b32_e32 v21, v195
	v_dual_mov_b32 v22, v195 :: v_dual_mov_b32 v81, 0
	v_mov_b32_e32 v23, v195
	v_dual_mov_b32 v24, v195 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v26, v195 :: v_dual_mov_b32 v97, 0
	v_mov_b32_e32 v27, v195
	v_dual_mov_b32 v28, v195 :: v_dual_mov_b32 v105, 0
	v_mov_b32_e32 v29, v195
	v_dual_mov_b32 v30, v195 :: v_dual_mov_b32 v113, 0
	v_mov_b32_e32 v31, v195
	v_dual_mov_b32 v32, v195 :: v_dual_mov_b32 v121, 0
	v_mov_b32_e32 v34, v195
	v_mov_b32_e32 v35, v195
	v_mov_b32_e32 v36, v195
	v_mov_b32_e32 v37, v195
	v_mov_b32_e32 v38, v195
	v_mov_b32_e32 v39, v195
	v_mov_b32_e32 v40, v195
	v_mov_b32_e32 v42, v195
	v_mov_b32_e32 v43, v195
	v_mov_b32_e32 v44, v195
	v_mov_b32_e32 v45, v195
	v_mov_b32_e32 v46, v195
	v_mov_b32_e32 v47, v195
	v_mov_b32_e32 v48, v195
	v_mov_b32_e32 v50, v195
	v_mov_b32_e32 v51, v195
	v_mov_b32_e32 v52, v195
	v_mov_b32_e32 v53, v195
	v_mov_b32_e32 v54, v195
	v_mov_b32_e32 v55, v195
	v_mov_b32_e32 v56, v195
	v_mov_b32_e32 v58, v195
	v_mov_b32_e32 v59, v195
	v_mov_b32_e32 v60, v195
	v_mov_b32_e32 v61, v195
	v_mov_b32_e32 v62, v195
	v_mov_b32_e32 v63, v195
	v_mov_b32_e32 v64, v195
	v_mov_b32_e32 v66, v195
	v_mov_b32_e32 v67, v195
	v_mov_b32_e32 v68, v195
	v_mov_b32_e32 v69, v195
	v_mov_b32_e32 v70, v195
	v_mov_b32_e32 v71, v195
	v_mov_b32_e32 v72, v195
	v_mov_b32_e32 v74, v195
	v_mov_b32_e32 v75, v195
	v_mov_b32_e32 v76, v195
	v_mov_b32_e32 v77, v195
	v_mov_b32_e32 v78, v195
	v_mov_b32_e32 v79, v195
	v_mov_b32_e32 v80, v195
	v_mov_b32_e32 v82, v195
	v_mov_b32_e32 v83, v195
	v_mov_b32_e32 v84, v195
	v_mov_b32_e32 v85, v195
	v_mov_b32_e32 v86, v195
	v_mov_b32_e32 v87, v195
	v_mov_b32_e32 v88, v195
	v_mov_b32_e32 v90, v195
	v_mov_b32_e32 v91, v195
	v_mov_b32_e32 v92, v195
	v_mov_b32_e32 v93, v195
	v_mov_b32_e32 v94, v195
	v_mov_b32_e32 v95, v195
	v_mov_b32_e32 v96, v195
	v_mov_b32_e32 v98, v195
	v_mov_b32_e32 v99, v195
	v_mov_b32_e32 v100, v195
	v_mov_b32_e32 v101, v195
	v_mov_b32_e32 v102, v195
	v_mov_b32_e32 v103, v195
	v_mov_b32_e32 v104, v195
	v_mov_b32_e32 v106, v195
	v_mov_b32_e32 v107, v195
	v_mov_b32_e32 v108, v195
	v_mov_b32_e32 v109, v195
	v_mov_b32_e32 v110, v195
	v_mov_b32_e32 v111, v195
	v_mov_b32_e32 v112, v195
	v_mov_b32_e32 v114, v195
	v_mov_b32_e32 v115, v195
	v_mov_b32_e32 v116, v195
	v_mov_b32_e32 v117, v195
	v_mov_b32_e32 v118, v195
	v_mov_b32_e32 v119, v195
	v_mov_b32_e32 v120, v195
	v_mov_b32_e32 v122, v195
	v_mov_b32_e32 v123, v195
	v_mov_b32_e32 v124, v195
	v_mov_b32_e32 v125, v195
	v_mov_b32_e32 v126, v195
	v_mov_b32_e32 v127, v195
	v_mov_b32_e32 v128, v195
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s40, s38, 6
	s_mov_b32 s41, -1
	s_mov_b32 s42, 0
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v130, 1, v196
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s42, s42, s40
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_add_nc_u32_e32 v228, 0, v208
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s42, v196
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_add_nc_u32_e32 v235, 0, v209
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s42, v130
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_and_b32 vcc_lo, exec_lo, s41
	s_mov_b32 s41, 0
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[137:138], null, v129, s5, v[161:162]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[138:139], null, v130, s5, v[161:162]
	v_add_nc_u32_e32 v129, s6, v137
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v213, s39, v137
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v133, s6, v138
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v226, s39, v138
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1
	buffer_load_b128 v[129:132], v129, s[12:15], 0 offen
	buffer_load_b128 v[133:136], v133, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_perm_b32 v139, v133, v129, 0x5010400
	v_perm_b32 v133, v133, v129, 0x7030602
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s42, v206
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_perm_b32 v140, v134, v130, 0x5010400
	v_perm_b32 v134, v134, v130, 0x7030602
	v_perm_b32 v141, v135, v131, 0x5010400
	v_perm_b32 v131, v135, v131, 0x7030602
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_add_nc_u32_e32 v129, v197, v129
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_perm_b32 v135, v136, v132, 0x5010400
	v_perm_b32 v132, v136, v132, 0x7030602
	s_mov_b32 s42, 32
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v129, 0x80000000, v129, s0
	buffer_load_b64 v[129:130], v129, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v202, v[129:130]
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshrrev_b32_e32 v129, 8, v139
	v_and_b16 v129.h, 0xff, v139.l
	v_lshrrev_b32_e32 v130, 24, v139
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshlrev_b16 v129.l, 8, v129.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v218.l, v129.h, v129.l
	v_and_b16 v129.l, 0xff, v139.h
	v_lshlrev_b16 v129.h, 8, v130.l
	v_lshrrev_b32_e32 v130, 24, v133
	v_or_b16 v218.h, v129.l, v129.h
	v_lshrrev_b32_e32 v129, 8, v133
	v_and_b16 v129.h, 0xff, v133.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v129.l, 8, v129.l
	v_or_b16 v219.l, v129.h, v129.l
	v_and_b16 v129.l, 0xff, v133.h
	v_lshlrev_b16 v129.h, 8, v130.l
	v_lshrrev_b32_e32 v130, 24, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v219.h, v129.l, v129.h
	v_lshrrev_b32_e32 v129, 8, v140
	v_and_b16 v129.h, 0xff, v140.l
	v_lshlrev_b16 v129.l, 8, v129.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v220.l, v129.h, v129.l
	v_and_b16 v129.l, 0xff, v140.h
	v_lshlrev_b16 v129.h, 8, v130.l
	v_lshrrev_b32_e32 v130, 24, v134
	v_or_b16 v220.h, v129.l, v129.h
	v_lshrrev_b32_e32 v129, 8, v134
	v_and_b16 v129.h, 0xff, v134.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v129.l, 8, v129.l
	v_or_b16 v221.l, v129.h, v129.l
	v_and_b16 v129.l, 0xff, v134.h
	v_lshlrev_b16 v129.h, 8, v130.l
	v_lshrrev_b32_e32 v130, 24, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v221.h, v129.l, v129.h
	v_lshrrev_b32_e32 v129, 8, v141
	v_and_b16 v129.h, 0xff, v141.l
	v_lshlrev_b16 v129.l, 8, v129.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v222.l, v129.h, v129.l
	v_and_b16 v129.l, 0xff, v141.h
	v_lshlrev_b16 v129.h, 8, v130.l
	v_lshrrev_b32_e32 v130, 24, v131
	v_or_b16 v222.h, v129.l, v129.h
	v_lshrrev_b32_e32 v129, 8, v131
	v_and_b16 v129.h, 0xff, v131.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v129.l, 8, v129.l
	v_or_b16 v223.l, v129.h, v129.l
	v_and_b16 v129.l, 0xff, v131.h
	v_lshlrev_b16 v129.h, 8, v130.l
	v_lshrrev_b32_e32 v130, 24, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v223.h, v129.l, v129.h
	v_lshrrev_b32_e32 v129, 8, v135
	v_and_b16 v129.h, 0xff, v135.l
	v_lshlrev_b16 v129.l, 8, v129.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v224.l, v129.h, v129.l
	v_and_b16 v129.l, 0xff, v135.h
	v_lshlrev_b16 v129.h, 8, v130.l
	v_lshrrev_b32_e32 v130, 24, v132
	v_or_b16 v224.h, v129.l, v129.h
	v_lshrrev_b32_e32 v129, 8, v132
	v_and_b16 v129.h, 0xff, v132.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v129.l, 8, v129.l
	v_or_b16 v225.l, v129.h, v129.l
	v_and_b16 v129.l, 0xff, v132.h
	v_lshlrev_b16 v129.h, 8, v130.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v225.h, v129.l, v129.h
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_add_nc_u32_e32 v129, 0, v207
	ds_load_2addr_stride64_b64 v[157:160], v129 offset1:1
	ds_load_2addr_stride64_b64 v[153:156], v129 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[149:152], v203 offset1:1
	ds_load_2addr_stride64_b64 v[145:148], v203 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[141:144], v204 offset1:1
	ds_load_2addr_stride64_b64 v[137:140], v204 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[133:136], v214 offset1:1
	ds_load_2addr_stride64_b64 v[129:132], v214 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v228, v218
	ds_store_b16_d16_hi v228, v218 offset:32
	ds_store_b16 v228, v219 offset:64
	ds_store_b16_d16_hi v228, v219 offset:96
	ds_store_b16 v215, v220
	ds_store_b16_d16_hi v215, v220 offset:32
	ds_store_b16 v215, v221 offset:64
	ds_store_b16_d16_hi v215, v221 offset:96
	ds_store_b16 v205, v222
	ds_store_b16_d16_hi v205, v222 offset:32
	ds_store_b16 v205, v223 offset:64
	ds_store_b16_d16_hi v205, v223 offset:96
	ds_store_b16 v216, v224
	ds_store_b16_d16_hi v216, v224 offset:32
	ds_store_b16 v216, v225 offset:64
	ds_store_b16_d16_hi v216, v225 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1
	buffer_load_b128 v[222:225], v213, s[12:15], 0 offen
	buffer_load_b128 v[230:233], v226, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_perm_b32 v213, v230, v222, 0x5010400
	v_perm_b32 v219, v230, v222, 0x7030602
	v_perm_b32 v229, v231, v223, 0x5010400
	v_perm_b32 v238, v231, v223, 0x7030602
	v_perm_b32 v239, v232, v224, 0x5010400
	v_lshrrev_b32_e32 v218, 8, v213
	v_and_b16 v218.h, 0xff, v213.l
	v_lshrrev_b32_e32 v220, 24, v213
	v_perm_b32 v240, v232, v224, 0x7030602
	v_perm_b32 v241, v233, v225, 0x5010400
	v_lshlrev_b16 v218.l, 8, v218.l
	v_perm_b32 v234, v233, v225, 0x7030602
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[222:225], v235 offset1:8
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v226.l, v218.h, v218.l
	v_and_b16 v218.l, 0xff, v213.h
	v_lshlrev_b16 v218.h, 8, v220.l
	v_lshrrev_b32_e32 v213, 8, v219
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v226.h, v218.l, v218.h
	v_lshlrev_b16 v218.l, 8, v213.l
	v_and_b16 v218.h, 0xff, v219.l
	v_lshrrev_b32_e32 v213, 24, v219
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v227.l, v218.h, v218.l
	v_and_b16 v218.l, 0xff, v219.h
	v_lshlrev_b16 v218.h, 8, v213.l
	v_lshrrev_b32_e32 v213, 8, v229
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[222:223], v[157:158], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[224:225], v[157:158], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[222:223], v[159:160], v[81:88] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v227.h, v218.l, v218.h
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[89:96], v[224:225], v[159:160], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[222:223], v[153:154], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[224:225], v[153:154], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[222:223], v[155:156], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[224:225], v[155:156], v[121:128] neg_lo:[1,1,0]
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[222:225], v217 offset1:8
	ds_load_2addr_stride64_b64 v[230:233], v210 offset1:8
	ds_load_2addr_stride64_b64 v[218:221], v211 offset1:8
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v228, v226
	ds_store_b16_d16_hi v228, v226 offset:32
	ds_store_b16 v228, v227 offset:64
	ds_store_b16_d16_hi v228, v227 offset:96
	v_lshlrev_b16 v226.l, 8, v213.l
	v_and_b16 v226.h, 0xff, v229.l
	v_lshrrev_b32_e32 v213, 24, v229
	v_and_b16 v227.h, 0xff, v238.l
	v_and_b16 v228.h, 0xff, v239.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or_b16 v226.l, v226.h, v226.l
	v_and_b16 v226.h, 0xff, v229.h
	v_lshlrev_b16 v227.l, 8, v213.l
	v_lshrrev_b32_e32 v213, 8, v238
	v_and_b16 v229.h, 0xff, v240.l
	v_or_b16 v226.h, v226.h, v227.l
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b16 v227.l, 8, v213.l
	v_lshrrev_b32_e32 v213, 24, v238
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[97:104], v[222:223], v[145:146], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[224:225], v[145:146], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[222:223], v[147:148], v[113:120] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v227.l, v227.h, v227.l
	v_and_b16 v227.h, 0xff, v238.h
	v_lshlrev_b16 v228.l, 8, v213.l
	v_lshrrev_b32_e32 v213, 8, v239
	v_lshrrev_b32_e32 v238, 8, v241
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[121:128], v[224:225], v[147:148], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[230:231], v[137:138], v[97:104] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v227.h, v227.h, v228.l
	v_lshlrev_b16 v228.l, 8, v213.l
	v_lshrrev_b32_e32 v213, 24, v239
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[105:112], v[232:233], v[137:138], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[230:231], v[139:140], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[232:233], v[139:140], v[121:128] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v228.l, v228.h, v228.l
	v_and_b16 v228.h, 0xff, v239.h
	v_lshlrev_b16 v229.l, 8, v213.l
	v_lshrrev_b32_e32 v213, 8, v240
	v_lshrrev_b32_e32 v239, 24, v234
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[65:72], v[222:223], v[149:150], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[224:225], v[149:150], v[73:80] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v228.h, v228.h, v229.l
	v_lshlrev_b16 v229.l, 8, v213.l
	v_lshrrev_b32_e32 v213, 24, v240
	v_lshlrev_b16 v213.h, 8, v238.l
	v_lshrrev_b32_e32 v238, 24, v241
	v_lshlrev_b16 v239.l, 8, v239.l
	v_or_b16 v229.l, v229.h, v229.l
	v_and_b16 v229.h, 0xff, v240.h
	v_lshlrev_b16 v213.l, 8, v213.l
	v_lshlrev_b16 v238.l, 8, v238.l
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[81:88], v[222:223], v[151:152], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[224:225], v[151:152], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[230:231], v[141:142], v[65:72] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v213.l, v229.h, v213.l
	v_and_b16 v229.h, 0xff, v241.l
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[73:80], v[232:233], v[141:142], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[230:231], v[143:144], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[232:233], v[143:144], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[218:219], v[133:134], v[65:72] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v213.h, v229.h, v213.h
	v_and_b16 v229.h, 0xff, v241.h
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[73:80], v[220:221], v[133:134], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[218:219], v[135:136], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[220:221], v[135:136], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[218:219], v[129:130], v[97:104] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v229.h, v229.h, v238.l
	v_lshrrev_b32_e32 v238, 8, v234
	v_and_b16 v238.h, 0xff, v234.l
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[105:112], v[220:221], v[129:130], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[218:219], v[131:132], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[220:221], v[131:132], v[121:128] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_lshlrev_b16 v238.l, 8, v238.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v238.l, v238.h, v238.l
	v_and_b16 v238.h, 0xff, v234.h
	v_or_b16 v238.h, v238.h, v239.l
	ds_store_b16 v215, v226
	ds_store_b16_d16_hi v215, v226 offset:32
	ds_store_b16 v215, v227 offset:64
	ds_store_b16_d16_hi v215, v227 offset:96
	ds_store_b16 v205, v228
	ds_store_b16_d16_hi v205, v228 offset:32
	ds_store_b16 v205, v229 offset:64
	ds_store_b16 v205, v213 offset:96
	ds_store_b16_d16_hi v216, v213
	ds_store_b16_d16_hi v216, v229 offset:32
	ds_store_b16 v216, v238 offset:64
	ds_store_b16_d16_hi v216, v238 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[226:229], v235 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[226:227], v[153:154], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[228:229], v[153:154], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[226:227], v[155:156], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[228:229], v[155:156], v[57:64] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[153:156], v217 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[226:227], v[157:158], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[228:229], v[157:158], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[226:227], v[159:160], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[228:229], v[159:160], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[153:154], v[145:146], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[155:156], v[145:146], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[153:154], v[147:148], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[155:156], v[147:148], v[57:64] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[145:148], v210 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[153:154], v[149:150], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[155:156], v[149:150], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[153:154], v[151:152], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[155:156], v[151:152], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[145:146], v[137:138], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[147:148], v[137:138], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[145:146], v[139:140], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[147:148], v[139:140], v[57:64] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[137:140], v211 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[145:146], v[141:142], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[147:148], v[141:142], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[145:146], v[143:144], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[147:148], v[143:144], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[137:138], v[133:134], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[139:140], v[133:134], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[137:138], v[135:136], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[139:140], v[135:136], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[137:138], v[129:130], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[139:140], v[129:130], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[137:138], v[131:132], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[139:140], v[131:132], v[57:64] neg_lo:[1,1,0]
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_vccnz .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v140, v73
	v_cvt_f32_i32_e32 v135, v74
	v_cvt_f32_i32_e32 v151, v83
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
	v_cvt_f32_i32_e32 v144, v69
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v69, v7
	v_cvt_f32_i32_e32 v7, v31
	v_cvt_f32_i32_e32 v31, v40
	v_cvt_f32_i32_e32 v40, v51
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v148, v68
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v68, v8
	v_cvt_f32_i32_e32 v8, v32
	v_cvt_f32_i32_e32 v32, v39
	v_cvt_f32_i32_e32 v39, v52
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s40, s38, s7
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v143, v70
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s40, s40, s5
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v70, v6
	v_cvt_f32_i32_e32 v6, v30
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v152, v84
	v_cvt_f32_i32_e32 v154, v86
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v86, v33
	v_cvt_f32_i32_e32 v84, v35
	v_cvt_f32_i32_e32 v33, v38
	v_cvt_f32_i32_e32 v38, v53
	v_cvt_f32_i32_e32 v35, v56
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v145, v65
	v_cvt_f32_i32_e32 v146, v66
	v_cvt_f32_i32_e32 v147, v67
	v_cvt_f32_i32_e32 v141, v72
	v_cvt_f32_i32_e32 v149, v81
	v_cvt_f32_i32_e32 v137, v91
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
	v_cvt_f32_i32_e32 v153, v85
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v85, v34
	v_cvt_f32_i32_e32 v34, v37
	v_cvt_f32_i32_e32 v37, v54
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v156, v88
	v_cvt_f32_i32_e32 v88, v95
	v_cvt_f32_i32_e32 v95, v109
	v_cvt_f32_i32_e32 v109, v114
	v_cvt_f32_i32_e32 v138, v90
	v_cvt_f32_i32_e32 v136, v92
	v_cvt_f32_i32_e32 v90, v93
	v_cvt_f32_i32_e32 v218, v102
	v_cvt_f32_i32_e32 v102, v106
	v_cvt_f32_i32_e32 v93, v111
	v_cvt_f32_i32_e32 v92, v112
	v_cvt_f32_i32_e32 v111, v116
	v_cvt_f32_i32_e32 v112, v117
	v_cvt_f32_i32_e32 v114, v119
	v_cvt_f32_i32_e32 v106, v122
	v_cvt_f32_i32_e32 v139, v89
	v_cvt_f32_i32_e32 v89, v94
	v_cvt_f32_i32_e32 v94, v110
	v_cvt_f32_i32_e32 v110, v115
	v_cvt_f32_i32_e32 v160, v100
	v_cvt_f32_i32_e32 v100, v108
	v_cvt_f32_i32_e32 v108, v113
	v_cvt_f32_i32_e32 v113, v118
	v_cvt_f32_i32_e32 v150, v82
	v_cvt_f32_i32_e32 v220, v104
	v_cvt_f32_i32_e32 v104, v124
	v_cvt_f32_i32_e32 v157, v97
	v_cvt_f32_i32_e32 v142, v71
	v_cvt_f32_i32_e32 v158, v98
	v_cvt_f32_i32_e32 v159, v99
	v_cvt_f32_i32_e32 v213, v101
	v_cvt_f32_i32_e32 v219, v103
	v_cvt_f32_i32_e32 v103, v105
	v_cvt_f32_i32_e32 v101, v107
	v_cvt_f32_i32_e32 v107, v121
	v_cvt_f32_i32_e32 v105, v123
	v_cvt_f32_i32_e32 v155, v87
	v_cvt_f32_i32_e32 v134, v75
	v_cvt_f32_i32_e32 v115, v120
	v_cvt_f32_i32_e32 v133, v76
	v_cvt_f32_i32_e32 v132, v77
	v_cvt_f32_i32_e32 v131, v78
	v_cvt_f32_i32_e32 v130, v79
	v_cvt_f32_i32_e32 v129, v80
	v_cvt_f32_i32_e32 v87, v96
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v78, v2
	v_cvt_f32_i32_e32 v77, v3
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v99, v125
	v_cvt_f32_i32_e32 v98, v126
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v76, v4
	v_cvt_f32_i32_e32 v82, v17
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v97, v127
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v80, v19
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v96, v128
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v79, v20
	v_cvt_f32_i32_e32 v71, v5
	v_cvt_f32_i32_e32 v17, v26
	v_cvt_f32_i32_e32 v4, v16
	v_cvt_f32_i32_e32 v16, v27
	v_cvt_f32_i32_e32 v2, v14
	v_cvt_f32_i32_e32 v14, v28
	v_cvt_f32_i32_e32 v75, v21
	v_cvt_f32_i32_e32 v27, v59
	v_cvt_f32_i32_e32 v26, v60
	v_cvt_f32_i32_e32 v5, v29
	v_cvt_f32_i32_e32 v29, v57
	v_cvt_f32_i32_e32 v28, v58
	v_cvt_f32_i32_e32 v3, v15
	v_cvt_f32_i32_e32 v20, v63
	v_cvt_f32_i32_e32 v15, v61
	v_cvt_f32_i32_e32 v19, v62
	v_cvt_f32_i32_e32 v21, v64
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v30, v55, s40, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v43, s38, v43, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s38, v44, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v30, v30, s[16:19], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v43, 0x80000000, v43, s1
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	s_clause 0x1
	buffer_load_u16 v43, v43, s[24:27], 0 offen
	buffer_load_u16 v51, v44, s[24:27], 0 offen
	scratch_load_b32 v44, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v51, 16, v51
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s38, v44, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v8, v51
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v44, 0x80000000, v44, s3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v7, v7, v51
	v_mul_f32_e32 v5, v51, v5
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v52, v44, s[24:27], 0 offen
	scratch_load_b32 v44, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v52, 16, v52
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s38, v44, 1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v6, v6, v51
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s38, s38, 1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v34, v52, v34
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v44, 0x80000000, v44, s4
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v52, v32
	v_mul_f32_e32 v31, v52, v31
	v_mul_f32_e32 v33, v52, v33
	v_mul_f32_e32 v9, v52, v9
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v53, v44, s[24:27], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v56, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s38, s36
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v56, v30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v221, off, off offset:256
	scratch_load_b32 v222, off, off offset:260
	scratch_load_b32 v224, off, off offset:268
	scratch_load_b32 v223, off, off offset:264
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v30, 16, v43
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[43:46], v212
	ds_load_b128 v[47:50], v212 offset:16
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v116, off, off offset:64
	scratch_load_b32 v117, off, off offset:68
	scratch_load_b32 v119, off, off offset:76
	scratch_load_b32 v122, off, off offset:132
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v30, v145
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v145, off, off offset:160
	scratch_load_b32 v118, off, off offset:72
	scratch_load_b32 v121, off, off offset:128
	scratch_load_b32 v123, off, off offset:136
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v53, v39
	v_mul_f32_e32 v42, v53, v42
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v254, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v30, v146
	scratch_load_b32 v146, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v255, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v30, v147
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v147, off, off offset:168
	scratch_load_b32 v124, off, off offset:140
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v163, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v30, v148
	scratch_load_b32 v148, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v40, v53, v40
	v_mul_f32_e32 v10, v30, v10
	v_mul_f32_e32 v2, v2, v30
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v164, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v149
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v3, v3, v30
	v_dual_mul_f32 v4, v4, v30 :: v_dual_mul_f32 v1, v30, v1
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(15)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v221, v54, v43 :: v_dual_mul_f32 v54, v51, v150
	s_waitcnt vmcnt(14)
	v_fmac_f32_e32 v222, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v151
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(13)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v224, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v152
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(12)
	v_dual_fmac_f32 v223, v54, v46 :: v_dual_mul_f32 v54, v52, v157
	scratch_load_b32 v157, off, off offset:288 ; 4-byte Folded Reload
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v145, v54, v43 :: v_dual_mul_f32 v54, v52, v158
	scratch_load_b32 v158, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v146, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v159
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v148, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v160
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v147, v54, v46 :: v_dual_mul_f32 v54, v53, v108
	scratch_load_b32 v108, off, off offset:32 ; 4-byte Folded Reload
	v_dual_fmac_f32 v116, v54, v43 :: v_dual_mul_f32 v43, v53, v109
	scratch_load_b32 v109, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v54, v140, v30 :: v_dual_fmac_f32 v117, v43, v44
	v_mul_f32_e32 v43, v53, v110
	scratch_load_b32 v110, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v119, v43, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v111
	scratch_load_b32 v111, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v118, v43, v46 :: v_dual_mul_f32 v43, v30, v144
	scratch_load_b32 v144, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v246, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v30, v143
	scratch_load_b32 v143, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v247, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v30, v142
	scratch_load_b32 v142, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v248, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v30, v141
	scratch_load_b32 v141, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v249, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v153
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v141, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v154
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v142, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v155
	scratch_load_b32 v155, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v143, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v156
	scratch_load_b32 v156, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v144, v43, v50 :: v_dual_mul_f32 v43, v52, v213
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v121, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v218
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v122, v43, v48 :: v_dual_mul_f32 v43, v52, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v123, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v220
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v124, v43, v50 :: v_dual_mul_f32 v43, v53, v112
	scratch_load_b32 v112, off, off offset:96 ; 4-byte Folded Reload
	v_dual_fmac_f32 v108, v43, v47 :: v_dual_mul_f32 v43, v53, v113
	scratch_load_b32 v113, off, off offset:100 ; 4-byte Folded Reload
	v_fmac_f32_e32 v109, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v110, v43, v49 :: v_dual_mul_f32 v43, v53, v115
	v_fmac_f32_e32 v111, v43, v50
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[43:46], v212 offset:512
	ds_load_b128 v[47:50], v212 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v191, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v30, v135
	scratch_load_b32 v135, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v155, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v30, v134
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v134, off, off offset:196
	scratch_load_b32 v114, off, off offset:104
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v156, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v30, v133
	scratch_load_b32 v133, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v157, v54, v46 :: v_dual_mul_f32 v54, v139, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v171, v54, v43 :: v_dual_mul_f32 v54, v51, v138
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v133, v54, v44 :: v_dual_mul_f32 v54, v51, v137
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v134, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v136
	scratch_load_b32 v136, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v135, v54, v46 :: v_dual_mul_f32 v54, v103, v52
	scratch_load_b32 v103, off, off offset:4 ; 4-byte Folded Reload
	v_fmac_f32_e32 v182, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v102
	scratch_load_b32 v102, off, off         ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v112, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v113, v54, v45 :: v_dual_mul_f32 v54, v52, v100
	v_fmac_f32_e32 v114, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v107, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v174, v54, v43 :: v_dual_mul_f32 v43, v53, v106
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v30, v91
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v102, v43, v44 :: v_dual_mul_f32 v43, v53, v105
	scratch_load_b32 v105, off, off offset:108 ; 4-byte Folded Reload
	v_fmac_f32_e32 v103, v43, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v104
	scratch_load_b32 v104, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v104, v43, v46 :: v_dual_mul_f32 v43, v30, v132
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v158, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v131, v30
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v190, v43, v48 :: v_dual_mul_f32 v43, v130, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v179, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v129, v30
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v172, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v136, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v89, v51
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v185, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v88, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v184, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v87, v51
	scratch_load_b32 v87, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v183, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v95
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v105, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v94, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v177, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v93, v52
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v176, v43, v49 :: v_dual_mul_f32 v43, v92, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v175, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v99
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v87, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v98, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v169, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v97, v53
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v168, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v96, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v167, v43, v50
	v_add_nc_u32_e32 v43, s33, v55
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v43, v43, s40, 1
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
	scratch_load_b32 v154, off, off offset:276
	scratch_load_b32 v153, off, off offset:272
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
	scratch_load_b32 v107, off, off offset:116
	scratch_load_b32 v106, off, off offset:112
	scratch_load_b32 v96, off, off offset:88
	scratch_load_b32 v93, off, off offset:60
	scratch_load_b32 v92, off, off offset:56
	scratch_load_b32 v91, off, off offset:52
	scratch_load_b32 v90, off, off offset:48
	scratch_load_b32 v89, off, off offset:28
	scratch_load_b32 v88, off, off offset:24
	scratch_load_b32 v152, off, off offset:252
	scratch_load_b32 v151, off, off offset:248
	scratch_load_b32 v150, off, off offset:244
	scratch_load_b32 v149, off, off offset:240
	scratch_load_b32 v140, off, off offset:220
	scratch_load_b32 v139, off, off offset:216
	scratch_load_b32 v137, off, off offset:208
	scratch_load_b32 v138, off, off offset:212
	ds_load_b128 v[43:46], v212
	ds_load_b128 v[47:50], v212 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v41, v53, v41 :: v_dual_fmac_f32 v0, v54, v43
	v_mul_f32_e32 v54, v30, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v166, v54, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v30, v77
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v162, v54, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v30, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v165, v54, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v51, v82
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v237, v54, v43 :: v_dual_mul_f32 v54, v51, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v236, v54, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v51, v80
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(31)
	v_fmac_f32_e32 v154, v54, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v51, v79
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(30)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v153, v54, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v52, v86
	scratch_load_b32 v86, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(23) lgkmcnt(0)
	v_dual_fmac_f32 v125, v32, v49 :: v_dual_fmac_f32 v126, v31, v50
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v31, v53, v38 :: v_dual_fmac_f32 v132, v54, v43
	v_mul_f32_e32 v54, v52, v85
	scratch_load_b32 v85, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(21)
	v_dual_fmac_f32 v94, v39, v46 :: v_dual_mul_f32 v39, v30, v71
	v_fmac_f32_e32 v128, v34, v47
	s_waitcnt vmcnt(15)
	v_fmac_f32_e32 v93, v31, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v31, v53, v37
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v127, v33, v48
	v_fmac_f32_e32 v253, v39, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v30, v70
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v131, v54, v44
	s_waitcnt vmcnt(14)
	v_fmac_f32_e32 v92, v31, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v31, v53, v36
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v95, v40, v45 :: v_dual_fmac_f32 v252, v39, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v54, v52, v84 :: v_dual_fmac_f32 v97, v42, v43
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(13)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v96, v41, v44 :: v_dual_fmac_f32 v91, v31, v49
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v31, v53, v35
	v_mul_f32_e32 v39, v30, v69
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v129, v54, v45 :: v_dual_mul_f32 v54, v52, v83
	s_waitcnt vmcnt(12)
	v_fmac_f32_e32 v90, v31, v50
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v250, v39, v49 :: v_dual_mul_f32 v39, v30, v68
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[31:34], v212 offset:512
	ds_load_b128 v[35:38], v212 offset:528
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v15, v53, v15 :: v_dual_fmac_f32 v130, v54, v46
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v251, v39, v50
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v51, v75
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(9)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v152, v39, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v51, v74
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v243, v10, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v10, v18, v51 :: v_dual_fmac_f32 v151, v39, v48
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(2) lgkmcnt(0)
	v_dual_fmac_f32 v201, v3, v37 :: v_dual_fmac_f32 v138, v5, v35
	v_fmac_f32_e32 v200, v4, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v188, v10, v31
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v51, v17
	v_mul_f32_e32 v39, v51, v73
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v199, v6, v36 :: v_dual_fmac_f32 v198, v7, v37
	v_dual_fmac_f32 v187, v8, v38 :: v_dual_fmac_f32 v106, v9, v35
	v_fmac_f32_e32 v140, v10, v32
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v51, v16
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v150, v39, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v139, v10, v33 :: v_dual_mul_f32 v10, v51, v14
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v14, v20, v53 :: v_dual_fmac_f32 v137, v10, v34
	v_mul_f32_e32 v10, v25, v52
	v_mul_f32_e32 v39, v51, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v173, v14, v37
	v_dual_fmac_f32 v186, v10, v31 :: v_dual_fmac_f32 v149, v39, v50
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v10, v52, v24 :: v_dual_mul_f32 v39, v67, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v120, v10, v32
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v52, v23
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v194, v39, v31 :: v_dual_mul_f32 v39, v30, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v115, v10, v33 :: v_dual_mul_f32 v10, v52, v22
	v_fmac_f32_e32 v245, v39, v32
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v30, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v107, v10, v34 :: v_dual_mul_f32 v10, v29, v53
	v_fmac_f32_e32 v192, v10, v31
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v53, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v244, v39, v33 :: v_dual_fmac_f32 v89, v10, v32
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v53, v27
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v88, v10, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v53, v26
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v86, v10, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v11, v52
	v_mul_f32_e32 v11, v12, v52
	v_dual_mul_f32 v12, v13, v52 :: v_dual_mul_f32 v13, v19, v53
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v242, v1, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v16, v21, v53 :: v_dual_fmac_f32 v189, v2, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v193, v10, v36 :: v_dual_fmac_f32 v180, v12, v38
	v_dual_fmac_f32 v181, v11, v37 :: v_dual_fmac_f32 v178, v13, v36
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v85, v15, v35 :: v_dual_fmac_f32 v170, v16, v38
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v1, off, off offset:340
	scratch_load_b32 v98, off, off offset:320
	scratch_load_b32 v99, off, off offset:324
	scratch_load_b32 v100, off, off offset:328
	scratch_load_b32 v101, off, off offset:332
	scratch_load_b32 v84, off, off offset:336
.LBB0_9:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v2, 0xbfb8aa3b, v194 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v0
	v_dual_mul_f32 v8, 0xbfb8aa3b, v166 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v201
	v_mul_f32_e32 v47, 0xbfb8aa3b, v139
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_mul_f32_e32 v59, 0xbfb8aa3b, v115
	v_dual_mul_f32 v5, 0xbfb8aa3b, v162 :: v_dual_mul_f32 v6, 0xbfb8aa3b, v165
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v3
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v2, 0xbfb8aa3b, v189
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v29, 0xbfb8aa3b, v252 :: v_dual_mul_f32 v32, 0xbfb8aa3b, v154
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v194
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cndmask_b32_e64 v11, 0, 0x42800000, s0
	v_dual_mul_f32 v22, 0xbfb8aa3b, v251 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v250
	v_mul_f32_e32 v36, 0xbfb8aa3b, v244
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v4, 0xbfb8aa3b, v200
	v_exp_f32_e32 v14, v7
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v201
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v189
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v4
	v_mul_f32_e32 v7, 0xbfb8aa3b, v253
	v_exp_f32_e32 v11, v11
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, s0
	v_exp_f32_e32 v3, v3
	v_cndmask_b32_e64 v13, 0, 0x42800000, s1
	v_ldexp_f32 v10, v14, v10
	v_mul_f32_e32 v14, 0xbfb8aa3b, v188
	v_mul_f32_e32 v30, 0xbfb8aa3b, v242
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v13, 0xbfb8aa3b, v200 :: v_dual_add_f32 v10, 1.0, v10
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_ldexp_f32 v11, v11, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v15, v3, v2
	v_exp_f32_e32 v13, v13
	v_dual_mul_f32 v3, 0xbfb8aa3b, v199 :: v_dual_mul_f32 v48, 0xbfb8aa3b, v237
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_dual_mul_f32 v37, 0xbfb8aa3b, v245 :: v_dual_mul_f32 v40, 0xbfb8aa3b, v236
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_mul_f32_e32 v14, 0xbfb8aa3b, v187
	v_dual_mul_f32 v31, 0xbfb8aa3b, v243 :: v_dual_mul_f32 v38, 0xbfb8aa3b, v153
	v_ldexp_f32 v12, v13, v12
	v_mul_f32_e32 v13, 0xbfb8aa3b, v198
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v14
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_dual_add_f32 v11, 1.0, v11 :: v_dual_add_f32 v12, 1.0, v12
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v13
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v188
	v_cndmask_b32_e64 v18, 0, 0x42800000, s1
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v16, 0, 0x42800000, s0
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v199
	v_exp_f32_e32 v4, v4
	v_dual_fmac_f32 v18, 0xbfb8aa3b, v187 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v152
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v16, 0xbfb8aa3b, v198 :: v_dual_mul_f32 v41, 0xbfb8aa3b, v151
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v18, v18
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s0
	v_exp_f32_e32 v16, v16
	v_dual_mul_f32 v34, 0xbfb8aa3b, v149 :: v_dual_mul_f32 v35, 0xbfb8aa3b, v150
	v_ldexp_f32 v19, v4, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v186
	v_dual_mul_f32 v46, 0xbfb8aa3b, v140 :: v_dual_mul_f32 v43, 0xbfb8aa3b, v129
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v13, v13, v3
	v_mul_f32_e32 v3, 0xbfb8aa3b, v193
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v14, v16, v14
	v_ldexp_f32 v16, v18, v17
	v_dual_mul_f32 v18, 0xbfb8aa3b, v180 :: v_dual_add_f32 v13, 1.0, v13
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v17, 0xbfb8aa3b, v181
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v18
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v186
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v60, 0xbfb8aa3b, v132
	v_cndmask_b32_e64 v23, 0, 0x42800000, s1
	v_exp_f32_e32 v4, v4
	v_cndmask_b32_e64 v20, 0, 0x42800000, s0
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v193
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v180
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v181
	v_exp_f32_e32 v17, v17
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s1
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v33, v4, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v192
	v_exp_f32_e32 v20, v20
	v_mul_f32_e32 v4, 0xbfb8aa3b, v173
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, s1, v201, v11, v201
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_ldexp_f32 v17, v17, v3
	v_dual_mul_f32 v3, 0xbfb8aa3b, v178 :: v_dual_add_f32 v16, 1.0, v16
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v18, v20, v18
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v3
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_ldexp_f32 v20, v23, v21
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v28, 0, 0x42800000, s0
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v21, 0xbfb8aa3b, v170
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v192
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v178
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v173
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v21
	v_exp_f32_e32 v3, v3
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v17, 1.0, v17 :: v_dual_add_f32 v18, 1.0, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v21, 0, 0x42800000, s0
	v_mul_f32_e32 v28, 0xbfb8aa3b, v93
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s0
	v_exp_f32_e32 v67, v4
	v_dual_mul_f32 v4, 0xbfb8aa3b, v88 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v170
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v69, v3, v2
	v_dual_mul_f32 v39, 0xbfb8aa3b, v138 :: v_dual_mul_f32 v42, 0xbfb8aa3b, v137
	v_ldexp_f32 v62, v65, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v68, v21
	v_mul_f32_e32 v21, 0xbfb8aa3b, v89
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v10, v10, v194
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v63, v67, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v15, v15, v189
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v70, v66
	v_div_scale_f32 v71, vcc_lo, v194, v10, v194
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v64, v68, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v11, v11, v201
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_mul_f32 v49, 0xbfb8aa3b, v130
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v50, 0xbfb8aa3b, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v68
	v_fma_f32 v65, -v66, v70, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v19, 1.0, v19 :: v_dual_mul_f32 v56, 0xbfb8aa3b, v128
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v55, 0xbfb8aa3b, v107 :: v_dual_add_f32 v64, 1.0, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v65, v70
	v_rcp_f32_e32 v65, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v19, v19, v188
	v_mul_f32_e32 v73, v71, v70
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v68, v72, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v83, null, v64, v64, v170
	v_fma_f32 v75, -v66, v73, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v72, v76, v72
	v_div_scale_f32 v76, null, v12, v12, v200
	v_fma_f32 v74, -v67, v65, 1.0
	v_dual_fmac_f32 v73, v75, v70 :: v_dual_mul_f32 v52, 0xbfb8aa3b, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v53, 0xbfb8aa3b, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v78, v76
	v_fmac_f32_e32 v65, v74, v65
	v_div_scale_f32 v74, s0, v189, v15, v189
	v_fma_f32 v66, -v66, v73, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v44, 0xbfb8aa3b, v126 :: v_dual_mul_f32 v45, 0xbfb8aa3b, v125
	v_dual_mul_f32 v61, 0xbfb8aa3b, v120 :: v_dual_mul_f32 v54, 0xbfb8aa3b, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v66, v66, v70, v73
	v_fma_f32 v73, -v76, v78, 1.0
	v_mul_f32_e32 v75, v74, v65
	v_rcp_f32_e32 v70, v80
	v_mul_f32_e32 v79, v77, v72
	v_div_fixup_f32 v10, v66, v10, v194
	v_fmac_f32_e32 v78, v73, v78
	v_fma_f32 v71, -v67, v75, v74
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v73, s0, v188, v19, v188
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v27, 0xbfb8aa3b, v95 :: v_dual_mul_f32 v58, 0xbfb8aa3b, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v71, v65
	v_fma_f32 v71, -v68, v79, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v57, 0xbfb8aa3b, v96 :: v_dual_mul_f32 v24, 0xbfb8aa3b, v91
	v_dual_mul_f32 v23, 0xbfb8aa3b, v90 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v92
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v67, v75, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v79, v71, v72
	v_fma_f32 v71, -v80, v70, 1.0
	v_div_scale_f32 v67, s2, v200, v12, v200
	v_div_fmas_f32 v65, v66, v65, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v68, v79, v77
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, null, v13, v13, v199
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v63, 1.0, v63 :: v_dual_mul_f32 v68, v67, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v66, v66, v72, v79
	v_rcp_f32_e32 v72, v71
	v_div_scale_f32 v77, null, v14, v14, v198
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v76, v68, v67
	v_div_fixup_f32 v15, v65, v15, v189
	v_div_fixup_f32 v11, v66, v11, v201
	v_rcp_f32_e32 v66, v77
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v68, v74, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v2, 0xbfb8aa3b, v85 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v86
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v71, v72, 1.0
	v_mul_f32_e32 v75, v73, v70
	v_fma_f32 v67, -v76, v68, v67
	v_div_scale_f32 v76, null, v16, v16, v187
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v72, v74, v72
	v_fma_f32 v65, -v80, v75, v73
	v_fma_f32 v79, -v77, v66, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v74, v76
	v_div_fmas_f32 v67, v67, v78, v68
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v75, v65, v70
	v_div_scale_f32 v65, s1, v199, v13, v199
	v_fmac_f32_e32 v66, v79, v66
	v_div_scale_f32 v78, s2, v198, v14, v198
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v68, -v80, v75, v73
	v_mul_f32_e32 v73, v65, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v76, v74, 1.0
	v_div_scale_f32 v80, null, v33, v33, v186
	v_div_fmas_f32 v68, v68, v70, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v71, v73, v65
	v_fmac_f32_e32 v74, v79, v74
	v_mul_f32_e32 v75, v78, v66
	v_rcp_f32_e32 v79, v80
	v_div_scale_f32 v81, s0, v187, v16, v187
	v_fmac_f32_e32 v73, v70, v72
	v_div_scale_f32 v70, null, v17, v17, v193
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v67, v12, v200
	v_fma_f32 v65, -v71, v73, v65
	v_rcp_f32_e32 v71, v70
	v_div_fixup_f32 v67, v68, v19, v188
	v_fma_f32 v19, -v77, v75, v78
	v_mul_f32_e32 v68, v81, v74
	v_div_fmas_f32 v65, v65, v72, v73
	v_fma_f32 v82, -v80, v79, 1.0
	s_mov_b32 vcc_lo, s2
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v13, v65, v13, v199
	v_fma_f32 v73, -v70, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v71, v73, v71
	v_fmac_f32_e32 v75, v19, v66
	v_fma_f32 v19, -v76, v68, v81
	v_fmac_f32_e32 v79, v82, v79
	v_div_scale_f32 v82, s3, v186, v33, v186
	v_fma_f32 v72, -v77, v75, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v68, v19, v74
	v_div_scale_f32 v73, null, v18, v18, v181
	v_div_fmas_f32 v66, v72, v66, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v72, -v76, v68, v81
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v76, s1, v193, v17, v193
	v_div_fixup_f32 v14, v66, v14, v198
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v68, v72, v74, v68
	v_rcp_f32_e32 v72, v73
	v_mul_f32_e32 v19, v82, v79
	v_mul_f32_e32 v74, v76, v71
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v65, v68, v16, v187
	v_div_scale_f32 v68, null, v20, v20, v180
	v_fma_f32 v75, -v80, v19, v82
	v_fma_f32 v66, -v70, v74, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_dual_mul_f32 v14, v184, v14 :: v_dual_fmac_f32 v19, v75, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v73, v72, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v74, v66, v71
	v_div_scale_f32 v66, s0, v181, v18, v181
	v_fma_f32 v16, -v80, v19, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v72, v75, v72
	v_div_scale_f32 v75, null, v69, v69, v192
	v_div_fmas_f32 v16, v16, v79, v19
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v77, v75
	v_rcp_f32_e32 v19, v68
	v_div_fixup_f32 v33, v16, v33, v186
	v_fma_f32 v16, -v70, v74, v76
	v_mul_f32_e32 v70, v66, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v16, v16, v71, v74
	v_div_scale_f32 v74, null, v62, v62, v178
	v_fma_f32 v71, -v73, v70, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v75, v77, 1.0
	v_div_fixup_f32 v79, v16, v17, v193
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v16, v74
	v_fma_f32 v76, -v68, v19, 1.0
	v_fmac_f32_e32 v70, v71, v72
	v_div_scale_f32 v71, s2, v192, v69, v192
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v66, -v73, v70, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v81, -v74, v16, 1.0
	v_div_fmas_f32 v66, v66, v72, v70
	v_rcp_f32_e32 v72, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v16, v81, v16 :: v_dual_fmac_f32 v77, v78, v77
	v_fmac_f32_e32 v19, v76, v19
	v_div_scale_f32 v76, s1, v180, v20, v180
	v_div_scale_f32 v78, null, v63, v63, v173
	v_mul_f32_e32 v80, v71, v77
	v_div_fixup_f32 v66, v66, v18, v181
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v82, v78
	v_fma_f32 v70, -v75, v80, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v17, v76, v19 :: v_dual_fmac_f32 v80, v70, v77
	v_fma_f32 v73, -v68, v17, v76
	v_div_scale_f32 v70, s3, v173, v63, v173
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v81, -v78, v82, 1.0
	v_fmac_f32_e32 v17, v73, v19
	v_div_scale_f32 v73, s0, v178, v62, v178
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v18, -v68, v17, v76
	v_fma_f32 v76, -v83, v72, 1.0
	v_mul_f32_e32 v68, v73, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v72, v76, v72
	v_div_fmas_f32 v17, v18, v19, v17
	v_fma_f32 v18, -v75, v80, v71
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v19, -v74, v68, v73
	v_div_scale_f32 v75, s1, v170, v64, v170
	v_fmac_f32_e32 v82, v81, v82
	v_div_fmas_f32 v18, v18, v77, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v76, v17, v20, v180
	v_fmac_f32_e32 v68, v19, v16
	v_mul_f32_e32 v19, v75, v72
	v_div_fixup_f32 v69, v18, v69, v192
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v70, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v8
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v78, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v71, v17, v82
	v_fma_f32 v9, -v74, v68, v73
	v_fma_f32 v17, -v83, v19, v75
	v_div_fmas_f32 v9, v9, v16, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v16, -v78, v71, v70
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v19, v17, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v191, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v16, v16, v82, v71
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v17, -v83, v19, v75
	v_div_fixup_f32 v62, v9, v62, v178
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v63, v16, v63, v173
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v16, 0, 0x42800000, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v8, v17, v72, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_ldexp_f32 v6, v68, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v19, v190, v15 :: v_dual_fmac_f32 v16, 0xbfb8aa3b, v166
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v64, v8, v64, v170
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v68, 1.0, v6 :: v_dual_mul_f32 v17, v179, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v6, v16
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v68, v68, v0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v18, v172, v12 :: v_dual_mul_f32 v15, v185, v13
	v_mul_f32_e32 v13, v183, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v41
	v_ldexp_f32 v5, v6, v9
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v165
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v16, v171, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v67, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v12, v182, v33
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v162
	v_exp_f32_e32 v10, v10
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, vcc_lo, v0, v68, v0
	v_div_scale_f32 v65, null, v33, v33, v166
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v73, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v10, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v70, v67, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v10, v175, v76 :: v_dual_add_f32 v71, 1.0, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v67, v8, v67 :: v_dual_mul_f32 v8, v174, v69
	v_div_scale_f32 v69, s0, v166, v33, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v75, null, v71, v71, v165
	v_fma_f32 v78, -v65, v73, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v77, v72, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v5, v169, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v62, v74, v6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v11, v177, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v78, v73
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v176, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v66, v75
	v_fma_f32 v76, -v70, v77, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v6, v168, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v75, v66, 1.0
	v_dual_fmac_f32 v77, v76, v67 :: v_dual_fmac_f32 v66, v74, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v63, -v70, v77, v72
	v_div_scale_f32 v74, null, v62, v62, v162
	v_div_scale_f32 v72, s1, v165, v71, v165
	v_div_fmas_f32 v63, v63, v67, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v67, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v167, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v63, v68, v0
	v_div_scale_f32 v68, s2, v162, v62, v162
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v74, v67, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v253
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v64, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v29, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v252
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v69, v73
	v_fma_f32 v76, -v65, v70, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v29, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v77, v72, v66
	v_fmac_f32_e32 v70, v76, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v63, -v75, v77, v72
	v_fma_f32 v65, -v65, v70, v69
	v_mul_f32_e32 v69, v68, v67
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v77, v63, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v65, v65, v73, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_exp_f32_e32 v25, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v75, v77, v72
	v_fma_f32 v29, -v74, v69, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v64, v64, v253
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v69, v29, v67
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v25, v63
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v63, v75
	v_div_fmas_f32 v66, v70, v66, v77
	v_div_fixup_f32 v29, v65, v33, v166
	v_fma_f32 v33, -v74, v69, v68
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v66, v71, v165
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v33, v67, v69
	v_div_scale_f32 v69, s0, v253, v64, v253
	v_fma_f32 v70, -v75, v63, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v33, v62, v162
	v_div_scale_f32 v68, null, v65, v65, v252
	v_fmac_f32_e32 v63, v70, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v67, v68
	s_mov_b32 vcc_lo, s0
	v_dual_mul_f32 v70, v69, v63 :: v_dual_fmac_f32 v73, 0xbfb8aa3b, v250
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v251
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v22, v163, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v62, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v68, v67, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v66, v72
	v_ldexp_f32 v62, v62, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v75, v70, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v33, v254, v0 :: v_dual_add_f32 v66, 1.0, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v72, v63
	v_div_scale_f32 v73, null, v66, v66, v250
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v69, -v75, v70, v69
	v_rcp_f32_e32 v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v63, v69, v63, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, s0, v250, v66, v250
	v_div_fixup_f32 v63, v63, v64, v253
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v73, v74, 1.0
	v_fmac_f32_e32 v67, v71, v67
	v_div_scale_f32 v71, s1, v252, v65, v252
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v74, v62, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v245
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v72, v71, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v68, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v25, v164, v25 :: v_dual_fmac_f32 v72, v75, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v68, v72, v71
	v_div_scale_f32 v68, null, v0, v0, v251
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v64, v67, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v62, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v36, v36, v65, v252
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v244
	v_ldexp_f32 v31, v70, v69
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v30
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v247, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v68, v62, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v255, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v62, v72, v62
	v_div_scale_f32 v72, s1, v251, v0, v251
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v243
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v64, v67, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v71, v37, v74 :: v_dual_add_f32 v64, 1.0, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v65, -v73, v71, v37
	v_div_scale_f32 v75, null, v64, v64, v244
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v71, v65, v74
	v_mul_f32_e32 v65, v72, v62
	v_fma_f32 v37, -v73, v71, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v68, v65, v72
	v_div_fmas_f32 v30, v37, v74, v71
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v65, v31, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v70
	v_cndmask_b32_e64 v71, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v68, v65, v72
	v_rcp_f32_e32 v72, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v37, v37, v62, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v31, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v37, v0, v251
	v_fma_f32 v65, -v75, v72, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v30, v66, v250
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v30, v249, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v65, v72
	v_div_scale_f32 v67, null, v73, v73, v245
	v_div_scale_f32 v62, vcc_lo, v245, v73, v245
	v_div_scale_f32 v65, s0, v244, v64, v244
	v_rcp_f32_e32 v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v71, 0xbfb8aa3b, v242 :: v_dual_mul_f32 v66, v65, v72
	v_exp_f32_e32 v37, v71
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v67, v70, 1.0
	v_fmac_f32_e32 v70, v74, v70
	v_div_scale_f32 v74, null, v69, v69, v243
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v68, v37, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v62, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v76, v74
	v_fma_f32 v0, -v67, v71, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v71, v0, v70
	v_fma_f32 v0, -v75, v66, v65
	v_fma_f32 v62, -v67, v71, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v66, v0, v72
	v_fma_f32 v0, -v74, v76, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v62, v62, v70, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v0, v76
	v_div_scale_f32 v48, s1, v243, v69, v243
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v246, v63
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v75, v66, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v67, null, v63, v63, v242
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v237
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v65, v65, v72, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v0, v67
	v_mul_f32_e32 v66, v48, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v64, v65, v64, v244
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v62, v62, v73, v245
	v_fma_f32 v65, -v74, v66, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v71, -v67, v0, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v31, v248, v31 :: v_dual_fmac_f32 v66, v65, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v71, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	v_ldexp_f32 v38, v40, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v74, v66, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v236
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_exp_f32_e32 v71, v71
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v153
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, s0, v242, v63, v242
	v_div_scale_f32 v74, null, v73, v73, v237
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v40, v72, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v68, v74
	v_fma_f32 v38, -v67, v40, v72
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v32, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v38, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v71, v70
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v48, v48, v76, v66
	v_fma_f32 v66, -v67, v40, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v74, v68, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v154
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_scale_f32 v65, null, v67, v67, v236
	v_div_fmas_f32 v0, v66, v0, v40
	v_fmac_f32_e32 v68, v38, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v66, v65
	v_div_fixup_f32 v38, v48, v69, v243
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, vcc_lo, v237, v73, v237
	v_div_fixup_f32 v0, v0, v63, v242
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v157, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, null, v71, v71, v153
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v69, v72, v68
	v_fma_f32 v48, -v65, v66, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v158, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v40, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v63
	v_div_scale_f32 v76, s0, v236, v67, v236
	v_fmac_f32_e32 v66, v48, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v155, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v74, v69, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v69, v75, v68
	v_fma_f32 v75, -v63, v70, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v62, -v74, v69, v72
	v_fmac_f32_e32 v70, v75, v70
	v_div_scale_f32 v75, s1, v153, v71, v153
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v51, v62, v68, v69
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v69, v75, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, s2
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v51, v73, v237
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v73, -v63, v69, v75
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v156, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v64, v76, v66
	v_fmac_f32_e32 v69, v73, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v72, -v65, v64, v76
	v_fma_f32 v63, -v63, v69, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, v72, v66
	v_fma_f32 v65, -v65, v64, v76
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v41, v65, v66, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_cndmask_b32_e64 v66, 0, 0x42800000, s3
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s3
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v41, v67, v236
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v152
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v66, 0xbfb8aa3b, v151 :: v_dual_mul_f32 v41, v222, v41
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v150
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, null, v0, v0, v154
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v62, v68, v62
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v72, -v77, v74, 1.0
	v_div_fmas_f32 v63, v63, v70, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v69, v73
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v72, v74
	v_div_scale_f32 v72, s2, v154, v0, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v64, v72, v74
	v_fma_f32 v35, -v77, v64, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v64, v35, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v62, v62, v152
	v_fma_f32 v34, -v77, v64, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v35, v65
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v149
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v34, v34, v74, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v69, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v66, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v34, v0, v154
	v_div_scale_f32 v69, null, v64, v64, v151
	v_fmac_f32_e32 v70, v68, v70
	v_div_scale_f32 v68, vcc_lo, v152, v62, v152
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v74, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v73, 1.0, v35 :: v_dual_mul_f32 v34, v224, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v68, v70
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v72, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v35, v63, v71, v153
	v_div_scale_f32 v75, null, v73, v73, v150
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v66, v76, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v69, v74, 1.0
	v_rcp_f32_e32 v63, v75
	v_div_scale_f32 v65, s0, v151, v64, v151
	v_fmac_f32_e32 v76, v67, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v74, v71, v74
	v_div_scale_f32 v71, null, v0, v0, v149
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v223, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v66, v76, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v68, v65, v74
	v_fma_f32 v67, -v75, v63, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v66, v66, v70, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v71
	v_fmac_f32_e32 v63, v67, v63
	v_div_scale_f32 v67, s1, v150, v73, v150
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v69, v68, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v221, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v66, v62, v152
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v140
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v71, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v67, v63
	v_fmac_f32_e32 v68, v72, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v66, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v75, v76, v67
	v_fma_f32 v65, -v69, v68, v65
	v_div_scale_f32 v69, s2, v149, v0, v149
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v139
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v62, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v47, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v65, v65, v74, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	v_exp_f32_e32 v42, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v69, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v75, v76, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v71, v68, v69
	v_div_scale_f32 v75, null, v66, v66, v140
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v42, v42, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v63, v67, v63, v76
	v_rcp_f32_e32 v62, v75
	v_fmac_f32_e32 v68, v47, v70
	v_div_fixup_f32 v47, v65, v64, v151
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v137
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v42, v63, v73, v150
	v_fma_f32 v63, -v71, v68, v69
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v67, null, v64, v64, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v75, v62, 1.0
	v_div_fmas_f32 v63, v63, v70, v68
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v68, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v62, v69, v62
	v_div_scale_f32 v69, s0, v140, v66, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v63, v0, v149
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v65, v65, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v69, v62
	v_fma_f32 v72, -v67, v68, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v70, 0xbfb8aa3b, v138 :: v_dual_mul_f32 v39, v144, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v75, v71, v69
	v_fmac_f32_e32 v68, v72, v68
	v_div_scale_f32 v72, s1, v139, v64, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v70
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v0, v0, v137
	v_fmac_f32_e32 v71, v65, v62
	v_mul_f32_e32 v65, v72, v68
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v74, v73
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v142, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v75, v71, v69
	v_fma_f32 v75, -v67, v65, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v63, v70, v63
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v51, v141, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v62, v69, v62, v71
	v_fmac_f32_e32 v65, v75, v68
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v73, v74, 1.0
	v_div_fixup_f32 v62, v62, v66, v140
	v_fma_f32 v66, -v67, v65, v72
	v_div_scale_f32 v67, null, v63, v63, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v69, v74
	v_div_scale_f32 v60, s0, v137, v0, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v69, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v132
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v50, v66, v68, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v60, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v71
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v67, v69, 1.0
	v_div_fixup_f32 v50, v50, v64, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v131
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v73, v68, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v72, v69
	v_div_scale_f32 v72, s1, v138, v63, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v64, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v71, v70
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v64, v72, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v73, v68, v60
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v67, v64, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v130
	v_ldexp_f32 v65, v66, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v66, null, v73, v73, v132
	v_fmac_f32_e32 v64, v49, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v49, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v43, v60, v74, v68
	v_div_scale_f32 v75, null, v65, v65, v131
	v_fma_f32 v60, -v67, v64, v72
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v49, v70
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v66, v71, 1.0
	v_div_fmas_f32 v60, v60, v69, v64
	v_div_scale_f32 v64, vcc_lo, v132, v73, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v68, 0xbfb8aa3b, v129 :: v_dual_fmac_f32 v71, v74, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v60, v60, v63, v138
	v_div_fixup_f32 v0, v43, v0, v137
	v_fma_f32 v69, -v75, v72, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v63, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v64, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v136, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v69, v72
	v_div_scale_f32 v69, s0, v131, v65, v131
	v_fma_f32 v60, -v66, v70, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v68, 1.0, v49 :: v_dual_mul_f32 v49, v135, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v69, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v63, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v60, v71
	v_div_scale_f32 v74, null, v68, v68, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v63, -v75, v76, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v133, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v66, v70, v64
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v77, v74
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v63, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v62, v62, v71, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v64, null, v0, v0, v129
	v_fma_f32 v66, -v75, v76, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v62, v62, v73, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v74, v77, 1.0
	v_rcp_f32_e32 v56, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v128
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v63, v77
	v_div_scale_f32 v63, s1, v130, v68, v130
	v_div_fmas_f32 v66, v66, v72, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	v_exp_f32_e32 v52, v69
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v63, v77
	v_fma_f32 v71, -v64, v56, 1.0
	v_div_fixup_f32 v65, v66, v65, v131
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, s0, v129, v0, v129
	v_fma_f32 v66, -v74, v70, v63
	v_fmac_f32_e32 v56, v71, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	v_ldexp_f32 v45, v52, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v66, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v52, v72, v56 :: v_dual_fmac_f32 v71, 0xbfb8aa3b, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v45
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v74, v70, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v71, v71
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v125
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v73, v73, v128
	v_fma_f32 v45, -v64, v52, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v44, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v67, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fmac_f32_e32 v52, v45, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v71, v69
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v64, -v64, v52, v72
	v_div_fmas_f32 v63, v63, v77, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v70, 1.0, v45 :: v_dual_fmac_f32 v71, 0xbfb8aa3b, v126
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v74, v67, 1.0
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v44, v44, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v70, v70, v127
	v_div_fmas_f32 v52, v64, v56, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v45, v67
	v_div_scale_f32 v72, vcc_lo, v128, v73, v128
	v_rcp_f32_e32 v64, v66
	v_div_fixup_f32 v45, v63, v68, v130
	v_div_fixup_f32 v0, v52, v0, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v68, v72, v67 :: v_dual_add_f32 v71, 1.0, v44
	v_div_scale_f32 v75, s0, v127, v70, v127
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v44, v148, v0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v56, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v74, v68, v72
	v_div_scale_f32 v63, null, v71, v71, v125
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v66, v64, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v56, v67
	v_rcp_f32_e32 v69, v63
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v145, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v52, v64
	v_div_scale_f32 v77, null, v0, v0, v126
	v_fma_f32 v62, -v74, v68, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v52, v146, v65 :: v_dual_mul_f32 v65, v75, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v77
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v147, v45
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v61, v62, v67, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, s2
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v42, v143, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v63, v69, 1.0
	v_fma_f32 v72, -v66, v65, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s2
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v120
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v73, v61, v73, v128
	v_fmac_f32_e32 v69, v76, v69
	v_div_scale_f32 v76, s1, v125, v71, v125
	v_fmac_f32_e32 v65, v72, v64
	v_fma_f32 v72, -v77, v74, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v76, v69
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v61, -v66, v65, v75
	v_fmac_f32_e32 v74, v72, v74
	v_div_scale_f32 v72, s2, v126, v0, v126
	v_fma_f32 v66, -v63, v68, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v59, v61, v64, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v61, v72, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v62, v67, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v66, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v115
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v77, v61, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v63, v68, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v55, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v62, v62, v120
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v107
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v63, v63, v69, v68
	v_rcp_f32_e32 v68, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v77, v61, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v67
	v_ldexp_f32 v55, v55, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v59, v59, v70, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v53, v53, v74, v61
	v_fma_f32 v61, -v65, v68, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v106
	v_ldexp_f32 v55, v67, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v72, v72, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v68, v61, v68
	v_div_scale_f32 v74, vcc_lo, v120, v62, v120
	v_rcp_f32_e32 v75, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v74, v68
	v_div_fixup_f32 v0, v53, v0, v126
	v_div_fixup_f32 v55, v63, v71, v125
	v_div_scale_f32 v76, null, v67, v67, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v70, -v65, v69, v74
	v_fma_f32 v71, -v66, v75, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v53, v124, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v63, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v61, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v70, v68
	v_fmac_f32_e32 v75, v71, v75
	v_div_scale_f32 v64, s0, v115, v72, v115
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v61, v122, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v65, v69, v74
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_mul_f32 v65, v64, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v76, v63, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v123, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v59, v59, v68, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v0, v0, v106
	v_fma_f32 v68, -v66, v65, v64
	v_fmac_f32_e32 v63, v70, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, s1, v107, v67, v107
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v50, v134, v50 :: v_dual_fmac_f32 v65, v68, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v58, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v97
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v74, v70, v63
	v_fma_f32 v64, -v66, v65, v64
	v_div_fixup_f32 v59, v59, v62, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v57, v78
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v76, v74, v70
	v_fma_f32 v68, -v71, v58, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v69, v121, v73 :: v_dual_fmac_f32 v66, 0xbfb8aa3b, v96
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v62, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v58, v68, v58
	v_div_scale_f32 v68, s2, v106, v0, v106
	v_div_fmas_f32 v64, v64, v75, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v57, v77
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	v_exp_f32_e32 v54, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v65, v68, v58
	v_fma_f32 v70, -v76, v74, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v71, v65, v68
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v76, null, v57, v57, v97
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v54, v54, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v66, v58
	v_div_fmas_f32 v63, v70, v63, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v62, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v94
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v71, v65, v68
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v63, v63, v67, v107
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v66, v66, v96
	v_div_fmas_f32 v54, v54, v58, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v76, v62, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v58, v68
	v_div_scale_f32 v27, s0, v97, v57, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v62, v70, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v64, v64, v72, v115
	v_div_fixup_f32 v0, v54, v0, v106
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v67, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v71, v27, v62 :: v_dual_fmac_f32 v70, 0xbfb8aa3b, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v68, v58, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v54, v105, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v76, v71, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v72, v58
	v_div_scale_f32 v72, s1, v96, v66, v96
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v0, v0, v94
	v_fmac_f32_e32 v71, v67, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v67, v72, v58
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v74, v73
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v65, v70, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v76, v71, v27
	v_fma_f32 v75, -v68, v67, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v26
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v63, v114, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v27, v62, v71
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v67, v75, v58
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v71, v112, v59
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v59, 1.0, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v73, v74, 1.0
	v_div_fixup_f32 v27, v27, v57, v97
	v_fma_f32 v57, -v68, v67, v72
	v_div_scale_f32 v65, null, v59, v59, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v74, v62, v74
	v_rcp_f32_e32 v62, v65
	v_div_fmas_f32 v26, v57, v58, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v93
	v_cndmask_b32_e64 v58, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v28, s0, v94, v0, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v70, v70
	v_dual_fmac_f32 v58, 0xbfb8aa3b, v92 :: v_dual_mul_f32 v67, v28, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v65, v62, 1.0
	v_div_fixup_f32 v26, v26, v66, v96
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_exp_f32_e32 v58, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v73, v67, v28
	v_fmac_f32_e32 v62, v72, v62
	v_div_scale_f32 v72, s1, v95, v59, v95
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v24, v70, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v66, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v72, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v58, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v73, v67, v28
	v_fma_f32 v73, -v65, v66, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v91
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, null, v24, v24, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v57, 1.0, v57 :: v_dual_fmac_f32 v66, v73, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v23, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v57, v57, v92
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v65, -v65, v66, v72
	v_div_fmas_f32 v28, v28, v74, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v73
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v75, -v58, v23, 1.0
	v_div_fmas_f32 v62, v65, v62, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v65, v70, v68
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v90
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, vcc_lo, v93, v24, v93
	v_fmac_f32_e32 v23, v75, v23
	v_div_scale_f32 v76, s0, v92, v57, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v66, -v73, v74, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v72, 1.0, v65 :: v_dual_mul_f32 v75, v68, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v28, v0, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v74, v66, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, null, v72, v72, v91
	v_fma_f32 v28, -v58, v75, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v78, v76, v74
	v_div_fixup_f32 v59, v62, v59, v95
	v_rcp_f32_e32 v79, v77
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v65, v117, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v28, v23
	v_fma_f32 v28, -v73, v78, v76
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v62, v119, v59 :: v_dual_mul_f32 v59, v118, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v70, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v66, v116, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v58, v75, v68
	v_fmac_f32_e32 v78, v28, v74
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v27, -v77, v79, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v23, v26, v23, v75
	v_fma_f32 v26, -v73, v78, v76
	v_fmac_f32_e32 v79, v27, v79
	v_div_scale_f32 v27, s1, v91, v72, v91
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v28, null, v0, v0, v90
	v_div_fmas_f32 v21, v26, v74, v78
	v_mul_f32_e32 v26, v27, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, s2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v58, v28
	v_div_fixup_f32 v23, v23, v24, v93
	v_fma_f32 v4, -v77, v26, v27
	v_div_fixup_f32 v21, v21, v57, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v89
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v26, v4, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v4, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v3, -v28, v58, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v88
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s2
	v_exp_f32_e32 v2, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v77, v26, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v86
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v3, v58
	v_div_scale_f32 v73, s0, v90, v0, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v85
	v_ldexp_f32 v4, v4, v67
	v_exp_f32_e32 v67, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v2, v2, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v27, v79, v26
	v_mul_f32_e32 v27, v73, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v24, v57
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v4, 1.0, v4
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v70, -v28, v27, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v67, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v57, null, v4, v4, v89
	v_div_scale_f32 v79, s0, v88, v2, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v27, v70, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v3, v24, v3
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v57
	v_div_scale_f32 v24, null, v2, v2, v88
	v_fma_f32 v28, -v28, v27, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v3, 1.0, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v70, v70, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v73, v24
	v_div_fmas_f32 v27, v28, v58, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v28, null, v3, v3, v85
	v_rcp_f32_e32 v76, v75
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v57, v74, 1.0
	v_div_scale_f32 v58, vcc_lo, v89, v4, v89
	v_rcp_f32_e32 v77, v28
	v_div_fixup_f32 v0, v27, v0, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fmac_f32_e32 v74, v67, v74
	v_fma_f32 v67, -v24, v73, 1.0
	v_div_scale_f32 v82, s2, v85, v3, v85
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v27, -v75, v76, 1.0
	v_dual_mul_f32 v78, v58, v74 :: v_dual_fmac_f32 v73, v67, v73
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v67, v111, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v28, v77, 1.0
	v_fmac_f32_e32 v76, v27, v76
	v_div_scale_f32 v27, s1, v86, v70, v86
	v_fma_f32 v0, -v57, v78, v58
	v_mul_f32_e32 v80, v79, v73
	v_fmac_f32_e32 v77, v68, v77
	v_div_fixup_f32 v26, v26, v72, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v81, v27, v76 :: v_dual_fmac_f32 v78, v0, v74
	v_fma_f32 v0, -v24, v80, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v83, v82, v77
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v110, v26
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v75, v81, v27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v72, v109, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v80, v0, v73
	v_fma_f32 v0, -v28, v83, v82
	v_fma_f32 v21, -v57, v78, v58
	v_fmac_f32_e32 v81, v26, v76
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v113, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v24, v80, v79
	v_fmac_f32_e32 v83, v0, v77
	v_div_fmas_f32 v21, v21, v74, v78
	v_fma_f32 v0, -v75, v81, v27
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v74, v108, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v28, v83, v82
	v_div_fmas_f32 v24, v24, v73, v80
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v4, v21, v4, v89
	v_div_fmas_f32 v0, v0, v76, v81
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v2, v24, v2, v88
	v_div_fmas_f32 v26, v26, v77, v83
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v21, |v33|, |v29|
	v_max3_f32 v23, |v25|, |v37|, |v36|
	v_max3_f32 v24, |v48|, |v40|, |v38|
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v70, v86
	v_div_fixup_f32 v3, v26, v3, v85
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, |v32|, |v19|, |v17|
	v_max3_f32 v27, |v60|, |v50|, |v49|
	v_max3_f32 v28, |v43|, |v15|, |v14|
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp10:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v58, v104, v0 :: v_dual_mul_f32 v57, v87, v3
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v21, |v22|, v23
	v_max3_f32 v21, v24, v26, |v18|
	v_max_f32_e64 v23, |v46|, |v41|
	v_max3_f32 v24, |v35|, |v51|, |v47|
	v_max3_f32 v0, |v31|, |v30|, |v20|
	v_max3_f32 v26, |v42|, |v39|, |v16|
	v_max_f32_e64 v70, |v56|, |v52|
	v_max3_f32 v73, |v45|, |v69|, |v61|
	v_max3_f32 v75, |v71|, |v64|, |v63|
	v_max3_f32 v76, |v54|, |v11|, |v9|
	v_max3_f32 v23, v23, |v34|, v24
	v_max3_f32 v24, v27, v28, |v13|
	v_max3_f32 v27, |v55|, |v53|, |v12|
	v_max3_f32 v28, v70, |v44|, v73
	v_max3_f32 v75, v75, v76, |v10|
.Ltmp12:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v70, v103, v2 :: v_dual_mul_f32 v73, v102, v4
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, v3, v0, v21
	v_max3_f32 v2, v23, v26, v24
	v_max_f32_e64 v4, |v66|, |v65|
	v_max3_f32 v21, |v59|, |v74|, |v72|
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v3, v28, v27, v75
	v_max3_f32 v24, |v73|, |v70|, |v58|
	v_max3_f32 v26, |v57|, |v5|, |v6|
	v_max3_f32 v4, v4, |v62|, v21
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v21, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v23, |v68|, |v67|, |v8|
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v28, v3, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v24, v24, v26, |v7|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v26, v27, v27
	v_max_f32_e32 v27, v28, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v4, v4, v23, v24
	v_dual_max_f32 v75, v0, v21 :: v_dual_max_f32 v76, v2, v26
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt vmcnt(4)
	v_and_b32_e32 v21, 4, v98
	s_waitcnt vmcnt(0)
	v_lshl_add_u32 v2, v84, 9, 0
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v77, v3, v27 :: v_dual_lshlrev_b32 v24, 5, v84
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v0, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v27, 0x60, v98
	v_and_b32_e32 v23, 0x80, v98
	v_and_b32_e32 v28, 8, v98
	v_lshl_add_u32 v2, v21, 2, v2
	v_and_or_b32 v1, 0x680, v1, v24
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v0
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v26, 1, v23
	v_xor_b32_e32 v3, v24, v27
	v_lshl_add_u32 v2, v28, 4, v2
	v_lshrrev_b32_e32 v79, 3, v23
	v_xor_b32_e32 v1, v1, v27
	v_lshl_add_u32 v80, v21, 6, 0
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v4, v0
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v2, v26, v3
	v_lshlrev_b32_e32 v28, 3, v28
	v_add_nc_u32_e32 v23, 0, v23
	v_add3_u32 v1, v80, v79, v1
	ds_store_b128 v0, v[75:78]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v4, v0
	v_dual_mov_b32 v76, v2 :: v_dual_mov_b32 v75, v1
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v0, v0 :: v_dual_max_f32 v77, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v76, v76 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v75, v75 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v1, v1, v1
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v0, v0, v4
	v_dual_max_f32 v4, v76, v76 :: v_dual_max_f32 v1, v1, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v3, v77, v3
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v75, v0 :: v_dual_max_f32 v2, v2, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v76, v1 :: v_dual_mov_b32 v77, v3
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v4, v2
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v76, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v0, v0, v75
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v75, v77, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v1, v1, v76 :: v_dual_mov_b32 v76, v0
	v_dual_max_f32 v2, v2, v4 :: v_dual_max_f32 v3, v3, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v77, v1
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v4, v2 :: v_dual_mov_b32 v75, v3
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v76, v76
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v75, v75 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v77, v77, v77 :: v_dual_max_f32 v0, v0, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v75, v75, v75
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v76, 1, v27
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v77
.Ltmp38:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v27, v101, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v4
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v4, 5, v21
	v_lshl_add_u32 v21, v84, 4, 0
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v75
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v23, v23, v76, v28
	v_add3_u32 v4, v21, v4, v28
	ds_store_b128 v23, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[75:78], v4
.Ltmp43:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v23, 4, v100
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 48, v23
	v_or_b32_e32 v80, 32, v23
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v0, v75, v75 :: v_dual_max_f32 v77, v77, v77
	v_max_f32_e32 v76, v76, v76
	v_dual_max_f32 v78, v78, v78 :: v_dual_max_f32 v21, 0x2b8cbccc, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v77, 0x2b8cbccc, v77 :: v_dual_and_b32 v0, 63, v98
	v_max_f32_e32 v76, 0x2b8cbccc, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v78, 0x2b8cbccc, v78
	v_div_scale_f32 v28, null, 0x40e00000, 0x40e00000, v21
	v_div_scale_f32 v81, vcc_lo, v21, 0x40e00000, v21
	v_div_scale_f32 v82, null, 0x40e00000, 0x40e00000, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v75, v28
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s28, v0
	v_add_co_ci_u32_e64 v2, null, s29, 0, s0
	v_add_co_u32 v3, s0, s28, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_add_co_ci_u32_e64 v4, null, s29, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v84, v82
	v_fma_f32 v79, -v28, v75, 1.0
	v_div_scale_f32 v86, null, 0x40e00000, 0x40e00000, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[34:35], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v87, null, 0x40e00000, 0x40e00000, v78
	v_fmac_f32_e32 v75, v79, v75
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v79, s0, s28, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v80, null, s29, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v83, v81, v75
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[30:31], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v85, -v82, v84, 1.0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 16, v23
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[30:31], v[79:80]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v28, v83, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v85, v84
	v_div_scale_f32 v85, s6, v77, 0x40e00000, v77
	v_fmac_f32_e32 v83, v3, v75
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s3, s28, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s29, 0, s3
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v28, -v28, v83, v81
	v_rcp_f32_e32 v81, v86
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[34:35], v[79:80]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v80.h, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[30:31], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v28, v28, v75, v83
	v_mul_f32_e32 v75, v85, v84
	v_rcp_f32_e32 v83, v87
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[34:35], v[3:4]
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
	v_add_co_u32 v3, s6, s28, v23
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v77, -v86, v89, v79
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v79, null, v84, v84, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v82, v28, v83
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s29, 0, s6
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
	v_cmp_le_i64_e64 s6, s[30:31], v[3:4]
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
	v_cmp_gt_i64_e64 s7, s[34:35], v[3:4]
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
	v_div_scale_f32 v85, null, v84, v84, v20
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
	v_div_scale_f32 v81, s10, v20, v84, v20
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
	v_div_scale_f32 v89, null, v84, v84, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v83, v90
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v20, v78, v84, v20
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
	v_div_scale_f32 v92, null, v84, v84, v17
	v_div_fmas_f32 v78, v78, v90, v80
	v_fmac_f32_e32 v87, v79, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v91, v83
	v_rcp_f32_e32 v80, v92
	v_div_scale_f32 v91, null, v84, v84, v18
	v_mul_f32_e32 v79, v88, v81
	v_div_scale_f32 v90, s8, v19, v84, v19
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
	v_div_scale_f32 v86, s9, v17, v84, v17
	v_fma_f32 v87, -v91, v94, 1.0
	v_div_fixup_f32 v38, v78, v84, v38
	v_fma_f32 v78, -v85, v79, v88
	v_fmac_f32_e32 v93, v82, v83
	v_mul_f32_e32 v82, v86, v80
	v_fmac_f32_e32 v94, v87, v94
	v_div_scale_f32 v87, null, v77, v77, v46
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v85, s11, v18, v84, v18
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
	v_div_fixup_f32 v19, v79, v84, v19
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
	v_div_fixup_f32 v17, v78, v84, v17
	v_fma_f32 v78, -v90, v92, v85
	v_fmac_f32_e32 v82, v89, v88
	v_div_fixup_f32 v18, v80, v84, v18
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
	v_div_scale_f32 v91, null, v77, v77, v16
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
	v_div_scale_f32 v86, s9, v16, v77, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v47, v78, v77, v47
	v_fma_f32 v88, -v90, v93, 1.0
	v_fma_f32 v78, -v85, v79, v84
	v_fmac_f32_e32 v92, v82, v83
	v_mul_f32_e32 v82, v86, v80
	v_div_scale_f32 v85, null, v77, v77, v50
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v93, v88, v93
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
	v_div_scale_f32 v94, null, v77, v77, v13
	v_div_fmas_f32 v78, v78, v80, v82
	v_fma_f32 v80, -v90, v88, v84
	v_mul_f32_e32 v82, v79, v87
	v_fmac_f32_e32 v81, v83, v81
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v84, s9, v49, v77, v49
	v_div_scale_f32 v90, null, v77, v77, v15
	s_mov_b32 vcc_lo, s11
	v_dual_mul_f32 v91, v84, v81 :: v_dual_and_b32 v76, 0xffff0000, v3
	v_div_fmas_f32 v80, v80, v93, v88
	v_fma_f32 v88, -v85, v82, v79
	v_rcp_f32_e32 v93, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v86, v83, 1.0
	v_div_fixup_f32 v16, v78, v77, v16
	v_fma_f32 v78, -v89, v91, v84
	v_fmac_f32_e32 v82, v88, v87
	v_div_fixup_f32 v60, v80, v77, v60
	v_fmac_f32_e32 v83, v92, v83
	v_div_scale_f32 v80, s10, v43, v77, v43
	v_div_scale_f32 v88, null, v77, v77, v14
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v90, v93, 1.0
	v_fma_f32 v79, -v85, v82, v79
	v_fmac_f32_e32 v91, v78, v81
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v78, v80, v83
	v_rcp_f32_e32 v85, v88
	v_fmac_f32_e32 v93, v92, v93
	v_div_scale_f32 v92, s11, v15, v77, v15
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
	v_div_scale_f32 v89, s8, v14, v77, v14
	v_fmac_f32_e32 v87, v84, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v94, v82, 1.0
	v_div_scale_f32 v84, null, v76, v76, v56
	v_fma_f32 v79, -v86, v78, v80
	v_mul_f32_e32 v80, v89, v85
	v_fmac_f32_e32 v82, v81, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v86, s9, v13, v77, v13
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
	v_div_fixup_f32 v15, v79, v77, v15
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
	v_div_fixup_f32 v14, v78, v77, v14
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
	v_div_fixup_f32 v13, v78, v77, v13
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
	v_rndne_f32_e32 v22, v22
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
	v_div_scale_f32 v87, null, v76, v76, v12
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
	v_div_scale_f32 v88, s8, v12, v76, v12
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
	v_div_scale_f32 v88, null, v76, v76, v11
	v_mul_f32_e32 v78, v87, v80
	v_div_scale_f32 v84, s8, v63, v76, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v92, v88
	v_div_fixup_f32 v12, v77, v76, v12
	v_fma_f32 v77, -v93, v85, v86
	v_fma_f32 v86, -v83, v78, v87
	v_mul_f32_e32 v91, v84, v82
	v_fma_f32 v93, -v90, v79, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
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
	v_div_scale_f32 v86, null, v76, v76, v9
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v83, s11, v11, v76, v11
	v_div_fmas_f32 v77, v77, v80, v78
	v_fma_f32 v78, -v89, v91, v84
	v_fma_f32 v80, -v90, v81, v85
	v_rcp_f32_e32 v84, v86
	v_div_scale_f32 v89, null, v76, v76, v10
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
	v_div_scale_f32 v78, s8, v9, v76, v9
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
	v_div_scale_f32 v83, s9, v10, v76, v10
	v_div_fmas_f32 v79, v79, v92, v87
	v_rcp_f32_e32 v85, v82
	v_fma_f32 v87, -v86, v81, v78
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v88, v83, v80
	v_div_fixup_f32 v54, v77, v76, v54
	v_div_fixup_f32 v11, v79, v76, v11
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
	v_div_fixup_f32 v9, v78, v76, v9
	v_div_fixup_f32 v10, v80, v76, v10
	v_fma_f32 v76, -v82, v83, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v88, v89, v87
	v_div_scale_f32 v80, null, v75, v75, v74
	v_fma_f32 v81, -v90, v93, v84
	v_fma_f32 v78, -v92, v94, 1.0
	v_fma_f32 v77, -v86, v88, v89
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
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
	v_rndne_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v78, v77, v76
	v_div_scale_f32 v77, null, v75, v75, v8
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
	v_div_scale_f32 v91, s10, v8, v75, v8
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
	v_div_fixup_f32 v8, v77, v75, v8
	v_div_scale_f32 v77, null, v75, v75, v57
	v_fmac_f32_e32 v79, v84, v93
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v87, null, v75, v75, v7
	v_div_fmas_f32 v80, v80, v90, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v76, -v89, v79, v82
	v_fma_f32 v78, -v83, v85, 1.0
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v89, v87
	v_div_fixup_f32 v73, v80, v75, v73
	v_div_fmas_f32 v76, v76, v93, v79
	v_rcp_f32_e32 v79, v77
	v_fmac_f32_e32 v85, v78, v85
	v_div_scale_f32 v78, null, v75, v75, v5
	v_div_scale_f32 v80, null, v75, v75, v6
	v_div_scale_f32 v81, vcc_lo, v58, v75, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v82, v78
	v_rcp_f32_e32 v84, v80
	v_div_fixup_f32 v70, v76, v75, v70
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v76, -v77, v79, 1.0
	v_mul_f32_e32 v86, v81, v85
	v_fma_f32 v93, -v87, v89, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v79, v76, v79
	v_div_scale_f32 v76, s8, v57, v75, v57
	v_fma_f32 v88, -v78, v82, 1.0
	v_fma_f32 v91, -v80, v84, 1.0
	v_fma_f32 v90, -v83, v86, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v92, v76, v79 :: v_dual_fmac_f32 v89, v93, v89
	v_fmac_f32_e32 v82, v88, v82
	v_div_scale_f32 v88, s9, v5, v75, v5
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v91, s10, v6, v75, v6
	v_fmac_f32_e32 v86, v90, v85
	v_fma_f32 v90, -v77, v92, v76
	v_div_scale_f32 v93, s11, v7, v75, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v94, v88, v82 :: v_dual_mul_f32 v95, v91, v84
	v_fmac_f32_e32 v92, v90, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v96, v93, v89
	v_fma_f32 v81, -v83, v86, v81
	v_fma_f32 v83, -v78, v94, v88
	v_fma_f32 v90, -v80, v95, v91
	v_fma_f32 v76, -v77, v92, v76
	v_fma_f32 v77, -v87, v96, v93
	v_div_fmas_f32 v81, v81, v85, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v94, v83, v82 :: v_dual_fmac_f32 v95, v90, v84
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v96, v77, v89
	v_div_fmas_f32 v76, v76, v79, v92
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v78, -v78, v94, v88
	v_fma_f32 v77, -v80, v95, v91
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v79, -v87, v96, v93
	s_mov_b32 s8, 0xc1000000
	v_div_fmas_f32 v78, v78, v82, v94
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v9, v9
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v84, v95
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v22, v22, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v89, v96
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v6, v77, v75, v6
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v7, v79, v75, v7
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v9, v9, s8, 0x40e00000
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v77, v16
	v_med3_f32 v7, v7, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v58, v81, v75, v58
	v_div_fixup_f32 v57, v76, v75, v57
	v_div_fixup_f32 v5, v78, v75, v5
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v59, v59
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v76, v18
	v_cvt_i32_f32_e32 v86, v9
	v_cvt_i32_f32_e32 v97, v7
	v_and_b32_e32 v7, 15, v22
	v_and_b32_e32 v9, 15, v37
	v_and_b32_e32 v37, 15, v77
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v22, 10, v98
	v_and_b32_e32 v77, 16, v98
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v5, v5
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_cvt_i32_f32_e32 v80, v13
	v_cvt_i32_f32_e32 v91, v8
	v_and_b32_e32 v8, 15, v25
	v_and_b32_e32 v13, 15, v20
	v_and_b32_e32 v20, 15, v76
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v22, 0x1800, v22
	v_lshlrev_b32_e32 v25, 6, v77
	v_lshlrev_b32_e32 v76, 6, v98
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_med3_f32 v11, v11, s8, 0x40e00000
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_med3_f32 v5, v5, s8, 0x40e00000
	v_med3_f32 v6, v6, s8, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v78, v15
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v81, v44
	v_cvt_i32_f32_e32 v82, v45
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v88, v62
	v_cvt_i32_f32_e32 v89, v59
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v22, 0, v22, v25
	v_and_or_b32 v24, 0x1b00, v76, v24
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v75, v17
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v83, v12
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v92, v70
	v_cvt_i32_f32_e32 v93, v58
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v79, v14
	v_cvt_i32_f32_e32 v85, v11
	v_cvt_i32_f32_e32 v87, v10
	v_cvt_i32_f32_e32 v95, v5
	v_cvt_i32_f32_e32 v96, v6
	v_and_b32_e32 v5, 15, v33
	v_and_b32_e32 v6, 15, v29
	v_and_b32_e32 v10, 15, v36
	v_and_b32_e32 v11, 15, v31
	v_and_b32_e32 v12, 15, v30
	v_and_b32_e32 v14, 15, v48
	v_and_b32_e32 v17, 15, v32
	v_and_b32_e32 v29, 15, v46
	v_and_b32_e32 v30, 15, v41
	v_and_b32_e32 v31, 15, v34
	v_and_b32_e32 v32, 15, v35
	v_and_b32_e32 v33, 15, v51
	v_and_b32_e32 v34, 15, v47
	v_and_b32_e32 v35, 15, v42
	v_and_b32_e32 v36, 15, v39
	v_and_b32_e32 v39, 15, v50
	v_and_b32_e32 v42, 15, v78
	v_and_b32_e32 v45, 15, v56
	v_and_b32_e32 v46, 15, v52
	v_and_b32_e32 v47, 15, v81
	v_and_b32_e32 v48, 15, v82
	v_and_b32_e32 v50, 15, v61
	v_and_b32_e32 v51, 15, v55
	v_and_b32_e32 v55, 15, v64
	v_and_b32_e32 v56, 15, v63
	v_and_b32_e32 v61, 15, v66
	v_and_b32_e32 v62, 15, v65
	v_and_b32_e32 v63, 15, v88
	v_and_b32_e32 v64, 15, v89
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v22, v22, v27, v26
	v_xad_u32 v78, v24, v100, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v84, v54
	v_and_b32_e32 v15, 15, v40
	v_and_b32_e32 v16, 15, v38
	v_and_b32_e32 v18, 15, v19
	v_and_b32_e32 v19, 15, v75
	v_and_b32_e32 v38, 15, v60
	v_and_b32_e32 v40, 15, v49
	v_and_b32_e32 v49, 15, v69
	v_and_b32_e32 v52, 15, v53
	v_and_b32_e32 v53, 15, v83
	v_and_b32_e32 v54, 15, v71
	v_and_b32_e32 v66, 15, v72
	v_and_b32_e32 v69, 15, v91
	v_and_b32_e32 v70, 15, v73
	v_and_b32_e32 v71, 15, v92
	v_and_b32_e32 v72, 15, v93
	v_med3_f32 v43, v43, s8, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v22, v[5:8]
	ds_store_b128 v22, v[13:16] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v78
	ds_load_b128 v[13:16], v78 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v22, v[29:32]
	ds_store_b128 v22, v[37:40] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[24:27], v78
	ds_load_b128 v[29:32], v78 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v22, v[45:48]
	ds_store_b128 v22, v[53:56] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[37:40], v78
	ds_load_b128 v[45:48], v78 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v22, v[61:64]
	ds_store_b128 v22, v[69:72] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[53:56], v78
	ds_load_b128 v[61:64], v78 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v22, v[9:12]
	ds_store_b128 v22, v[17:20] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v78
	ds_load_b128 v[17:20], v78 offset:1024
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v74
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v57, v57
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v43, v43
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_and_b32_e32 v41, 15, v43
	v_and_b32_e32 v43, 15, v79
	v_and_b32_e32 v44, 15, v80
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v90, v67
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v22, v[33:36]
	ds_store_b128 v22, v[41:44] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v78
	ds_load_b128 v[41:44], v78 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v94, v57
	v_and_b32_e32 v57, 15, v84
	v_and_b32_e32 v58, 15, v85
	v_and_b32_e32 v59, 15, v86
	v_and_b32_e32 v60, 15, v87
	v_and_b32_e32 v65, 15, v74
	v_and_b32_e32 v67, 15, v68
	v_and_b32_e32 v68, 15, v90
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v22, v[49:52]
	ds_store_b128 v22, v[57:60] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[49:52], v78
	ds_load_b128 v[57:60], v78 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v73, 15, v94
	v_and_b32_e32 v74, 15, v95
	v_and_b32_e32 v75, 15, v96
	v_and_b32_e32 v76, 15, v97
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v6, v14, 4, v6
	v_lshl_or_b32 v14, v16, 4, v8
	v_lshl_or_b32 v16, v18, 4, v10
	v_lshl_or_b32 v18, v20, 4, v12
	v_lshl_or_b32 v20, v30, 4, v25
	v_lshl_or_b32 v30, v45, 4, v37
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v45, 3, v99
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, s28, v23
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v22, v[65:68]
	ds_store_b128 v22, v[73:76] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v78
	ds_load_b128 v[69:72], v78 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v13, v13, 4, v5
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v5, s37, 7, v45
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 16, v8
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v7, v15, 4, v7
	v_lshl_or_b32 v15, v17, 4, v9
	v_lshl_or_b32 v17, v19, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 32, v8
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 48, v8
	v_mad_u64_u32 v[8:9], null, v8, s8, v[5:6]
	v_mad_u64_u32 v[9:10], null, v10, s8, v[5:6]
	v_mad_u64_u32 v[10:11], null, v11, s8, v[5:6]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v19, v29, 4, v24
	v_lshl_or_b32 v22, v31, 4, v26
	v_lshl_or_b32 v24, v32, 4, v27
	v_lshl_or_b32 v25, v41, 4, v33
	v_lshl_or_b32 v26, v42, 4, v34
	v_lshl_or_b32 v27, v43, 4, v35
	v_lshl_or_b32 v29, v44, 4, v36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[11:12], null, v12, s8, v[5:6]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v3.l, 8, v14.l
	v_and_b16 v4.l, 0xff, v7.l
	v_lshlrev_b16 v5.l, 8, v6.l
	v_and_b16 v5.h, 0xff, v13.l
	v_lshlrev_b16 v6.l, 8, v18.l
	v_and_b16 v6.h, 0xff, v17.l
	v_lshlrev_b16 v7.l, 8, v16.l
	v_and_b16 v7.h, 0xff, v15.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v34, v57, 4, v49
	v_lshl_or_b32 v35, v58, 4, v50
	v_lshl_or_b32 v36, v59, 4, v51
	v_lshl_or_b32 v37, v60, 4, v52
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v4.l, v3.l
	v_or_b16 v12.l, v5.h, v5.l
	v_or_b16 v13.h, v6.h, v6.l
	v_or_b16 v13.l, v7.h, v7.l
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v6.l, 8, v29.l
	v_and_b16 v6.h, 0xff, v27.l
	v_lshlrev_b16 v7.l, 8, v26.l
	v_and_b16 v7.h, 0xff, v25.l
	s_and_b32 s9, s21, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s20
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v31, v46, 4, v38
	v_lshl_or_b32 v32, v47, 4, v39
	v_lshl_or_b32 v33, v48, 4, v40
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v42, v69, 4, v65
	v_lshl_or_b32 v43, v70, 4, v66
	v_lshl_or_b32 v44, v71, 4, v67
	v_lshl_or_b32 v23, v72, 4, v68
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v3.l, 8, v24.l
	v_and_b16 v4.l, 0xff, v22.l
	v_lshlrev_b16 v5.l, 8, v20.l
	v_and_b16 v5.h, 0xff, v19.l
	buffer_store_b64 v[12:13], v8, s[8:11], 0 offen
	v_or_b16 v13.h, v6.h, v6.l
	v_or_b16 v13.l, v7.h, v7.l
	v_lshlrev_b16 v6.l, 8, v37.l
	v_and_b16 v6.h, 0xff, v36.l
	v_lshlrev_b16 v7.l, 8, v35.l
	v_and_b16 v7.h, 0xff, v34.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v38, v61, 4, v53
	v_lshl_or_b32 v39, v62, 4, v54
	v_lshl_or_b32 v40, v63, 4, v55
	v_lshl_or_b32 v41, v64, 4, v56
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v4.l, v3.l
	v_or_b16 v12.l, v5.h, v5.l
	v_cndmask_b32_e32 v8, 0x80000000, v9, vcc_lo
	v_lshlrev_b16 v3.l, 8, v33.l
	v_and_b16 v4.l, 0xff, v32.l
	v_lshlrev_b16 v5.l, 8, v31.l
	v_and_b16 v5.h, 0xff, v30.l
	v_or_b16 v9.h, v6.h, v6.l
	v_or_b16 v9.l, v7.h, v7.l
	v_lshlrev_b16 v6.l, 8, v23.l
	v_and_b16 v6.h, 0xff, v44.l
	v_lshlrev_b16 v7.l, 8, v43.l
	v_and_b16 v7.h, 0xff, v42.l
	buffer_store_b64 v[12:13], v8, s[8:11], 0 offen
	v_or_b16 v8.h, v4.l, v3.l
	v_or_b16 v8.l, v5.h, v5.l
	v_lshlrev_b16 v3.l, 8, v41.l
	v_and_b16 v4.l, 0xff, v40.l
	v_lshlrev_b16 v5.l, 8, v39.l
	v_and_b16 v5.h, 0xff, v38.l
	v_or_b16 v13.h, v6.h, v6.l
	v_or_b16 v13.l, v7.h, v7.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v98
	v_lshrrev_b32_e32 v7, 2, v77
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v4.l, v3.l
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.l, v5.h, v5.l
	v_dual_cndmask_b32 v5, 0x80000000, v11 :: v_dual_and_b32 v6, 2, v6
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v7, 0, v7
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[8:9], v10, s[8:11], 0 offen
	buffer_store_b64 v[12:13], v5, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v5, 0, v45
	v_mov_b16_e32 v4.l, v28.h
	v_mov_b16_e32 v3.l, v21.h
	v_add3_u32 v6, v7, v6, v45
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1254 13 is_stmt 0             ; ragged.py:1254:13
	v_add_nc_u32_e32 v0, s28, v0
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	ds_store_b64 v5, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v3, v6
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v0, v0, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 0xc0, v98
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[30:31], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[34:35], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	v_cmp_eq_u32_e64 s1, 0, v4
	v_add_lshl_u32 v0, v0, s37, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v3, v0, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp44:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_sgpr 43
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 43
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 348
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 28540
; TotalNumSgprs: 45
; NumVgprs: 256
; ScratchSize: 348
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 45
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
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 348
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
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
