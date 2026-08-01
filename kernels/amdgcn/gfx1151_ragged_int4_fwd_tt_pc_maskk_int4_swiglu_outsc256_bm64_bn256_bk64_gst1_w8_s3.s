	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[72:73], s[0:1], 0x54
	s_load_b32 s3, s[0:1], 0x60
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s8, s2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v3, 63, v0
	v_lshlrev_b32_e32 v43, 1, v0
	v_mov_b32_e32 v221, v0
	v_and_b32_e32 v45, 0x7f, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s72, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s5, s4, 31
	s_lshr_b32 s5, s5, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, s5
	s_ashr_i32 s4, s4, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s7
	s_sub_i32 s12, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s3, s3, s12
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s4, s12, s4
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s3, s3, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s4
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s13, s3
	s_cvt_f32_u32 s5, s13
	s_sub_i32 s6, 0, s13
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s6
	s_abs_i32 s6, s2
	s_add_i32 s5, s5, s4
	s_xor_b32 s4, s2, s3
	s_mul_hi_u32 s14, s6, s5
	s_ashr_i32 s15, s4, 31
	s_mul_i32 s5, s14, s13
	s_add_i32 s17, s14, 1
	s_sub_i32 s16, s6, s5
	s_load_b256 s[4:11], s[0:1], 0x20
	s_sub_i32 s18, s16, s13
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s14, s17, s14
	s_cselect_b32 s16, s18, s16
	s_add_i32 s17, s14, 1
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s13, s17, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s13, s13, s15
	s_sub_i32 s78, s13, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s78, s3
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s12
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshl_b64 s[2:3], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s2
	s_addc_u32 s5, s5, s3
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_add_u32 s6, s6, s2
	s_addc_u32 s7, s7, s3
	s_load_b64 s[62:63], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s8, s2
	s_addc_u32 s7, s9, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s10, s2
	s_addc_u32 s3, s11, s3
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[74:75], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[76:77], s[2:3], 0x0
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[2:3], s[4:5], 0x0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v65, 0
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s6, s72, 1
	s_mov_b32 s5, 0
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_gt_i32 s73, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s3, s62, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v2, null, s63, 0, s3
	v_add_nc_u32_e32 v44, s62, v3
	.loc	1 1066 35                       ; ragged.py:1066:35
	s_mul_i32 s17, s2, s6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[74:75], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[76:77], v[1:2]
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v0, v221 :: v_dual_add_nc_u32 v3, s62, v3
	v_dual_mov_b32 v41, s17 :: v_dual_mov_b32 v4, s62
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1247 50 is_stmt 1             ; ragged.py:1247:50
	v_and_b32_e32 v5, 0x7f, v0
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshlrev_b32_e32 v42, 1, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr42
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr41
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[64:67], s[0:1], 0x40
	s_load_b128 s[8:11], s[0:1], 0x10
	v_dual_mov_b32 v0, v221 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v8, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v96, 0 :: v_dual_and_b32 v161, 0x80, v0
	v_dual_mov_b32 v95, 0 :: v_dual_and_b32 v160, 15, v0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_cmp_eq_u32_e64 s2, 0, v161
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v149, 0
	v_mov_b32_e32 v150, 0
	v_mov_b32_e32 v132, 0
	s_lshl_b32 s16, s78, 8
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_and_b32 s79, s3, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v34, v221 :: v_dual_lshlrev_b32 v3, 5, v160
	v_dual_mov_b32 v239, 0 :: v_dual_and_b32 v4, 24, v43
	v_cndmask_b32_e64 v2, 0x88, 0, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1045 36 is_stmt 1             ; ragged.py:1045:36
	v_lshrrev_b32_e32 v0, 5, v34
	v_dual_mov_b32 v238, 0 :: v_dual_and_b32 v1, 0xe0, v34
	s_load_b128 s[12:15], s[0:1], 0x0
	v_xor_b32_e32 v35, v2, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b32_e32 v0, s16, v0
	v_dual_mov_b32 v240, 0 :: v_dual_lshlrev_b32 v1, 4, v1
	s_load_b32 s0, s[0:1], 0x50
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v73, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v241, 0 :: v_dual_add_nc_u32 v0, s17, v0
	v_or3_b32 v32, v3, v4, v1
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v75, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v1, v0, s73
	v_dual_mov_b32 v243, 0 :: v_dual_add_nc_u32 v2, 16, v0
	v_dual_mov_b32 v244, 0 :: v_dual_add_nc_u32 v3, 24, v0
	v_dual_mov_b32 v246, 0 :: v_dual_add_nc_u32 v5, 40, v0
	v_mov_b32_e32 v242, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:140
	scratch_store_b32 off, v32, off offset:288
	v_add_nc_u32_e32 v1, 8, v0
	v_dual_mov_b32 v245, 0 :: v_dual_add_nc_u32 v6, 48, v0
	v_mov_b32_e32 v247, 0
	v_dual_mov_b32 v248, 0 :: v_dual_add_nc_u32 v7, 56, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v4, s73, v1
	v_dual_mov_b32 v249, 0 :: v_dual_add_nc_u32 v8, 64, v0
	v_mov_b32_e32 v250, 0
	v_dual_mov_b32 v251, 0 :: v_dual_add_nc_u32 v10, 0x50, v0
	v_dual_mov_b32 v252, 0 :: v_dual_add_nc_u32 v11, 0x58, v0
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v4, off offset:144
	scratch_store_b64 off, v[44:45], off offset:292
	v_mul_lo_u32 v4, s73, v2
	v_dual_mov_b32 v253, 0 :: v_dual_add_nc_u32 v12, 0x60, v0
	v_dual_mov_b32 v162, 0 :: v_dual_add_nc_u32 v13, 0x68, v0
	v_dual_mov_b32 v164, 0 :: v_dual_add_nc_u32 v15, 0x78, v0
	v_dual_mov_b32 v163, 0 :: v_dual_add_nc_u32 v16, 0x80, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:148
	scratch_store_b32 off, v35, off offset:300
	v_mul_lo_u32 v4, s73, v3
	scratch_store_b32 off, v161, off offset:440 ; 4-byte Folded Spill
	v_mov_b32_e32 v161, 0
	v_dual_mov_b32 v166, 0 :: v_dual_add_nc_u32 v17, 0x88, v0
	v_dual_mov_b32 v165, 0 :: v_dual_add_nc_u32 v18, 0x90, v0
	v_mov_b32_e32 v168, 0
	scratch_store_b32 off, v4, off offset:152 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 32, v0
	v_dual_mov_b32 v167, 0 :: v_dual_add_nc_u32 v20, 0xa0, v0
	v_add_nc_u32_e32 v21, 0xa8, v0
	v_add_nc_u32_e32 v22, 0xb0, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v9, s73, v4
	scratch_store_b32 off, v43, off offset:444 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v23, 0xb8, v0
	v_add_nc_u32_e32 v25, 0xc8, v0
	v_add_nc_u32_e32 v26, 0xd0, v0
	v_add_nc_u32_e32 v27, 0xd8, v0
	v_add_nc_u32_e32 v28, 0xe0, v0
	v_add_nc_u32_e32 v30, 0xf0, v0
	scratch_store_b32 off, v9, off offset:156 ; 4-byte Folded Spill
	v_mul_lo_u32 v9, s73, v5
	scratch_store_b32 off, v45, off offset:448 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v31, 0xf8, v0
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v1, s72, v1
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v70, 0
	v_mov_b32_e32 v79, 0
	scratch_store_b32 off, v9, off offset:160 ; 4-byte Folded Spill
	v_mul_lo_u32 v9, s73, v6
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v87, 0
	scratch_store_b32 off, v9, off offset:164 ; 4-byte Folded Spill
	v_mul_lo_u32 v9, s73, v7
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v95, 0
	scratch_store_b32 off, v9, off offset:168 ; 4-byte Folded Spill
	v_mul_lo_u32 v9, s73, v8
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v103, 0
	scratch_store_b32 off, v9, off offset:172 ; 4-byte Folded Spill
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v9, 0x48, v0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v98, 0
	v_mov_b32_e32 v107, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v14, s73, v9
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v115, 0
	scratch_store_b32 off, v14, off offset:176 ; 4-byte Folded Spill
	v_mul_lo_u32 v14, s73, v10
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v123, 0
	scratch_store_b32 off, v14, off offset:180 ; 4-byte Folded Spill
	v_mul_lo_u32 v14, s73, v11
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v127, 0
	v_mov_b32_e32 v120, 0
	v_mov_b32_e32 v122, 0
	v_mov_b32_e32 v124, 0
	scratch_store_b32 off, v14, off offset:184 ; 4-byte Folded Spill
	v_mul_lo_u32 v14, s73, v12
	v_mov_b32_e32 v126, 0
	v_mov_b32_e32 v128, 0
	v_add_nc_u32_e32 v212, 0, v160
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	scratch_store_b32 off, v14, off offset:188 ; 4-byte Folded Spill
	v_mul_lo_u32 v14, s73, v13
	s_mov_b32 s1, 0
	s_mov_b32 s4, s12
	s_mov_b32 s5, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	scratch_store_b32 off, v14, off offset:192 ; 4-byte Folded Spill
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v14, 0x70, v0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v197, 0
	v_mov_b32_e32 v193, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v19, s73, v14
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v198, 0
	v_mov_b32_e32 v207, 0
	scratch_store_b32 off, v19, off offset:196 ; 4-byte Folded Spill
	v_mul_lo_u32 v19, s73, v15
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v204, 0
	v_mov_b32_e32 v71, 0
	scratch_store_b32 off, v19, off offset:200 ; 4-byte Folded Spill
	v_mul_lo_u32 v19, s73, v16
	v_mov_b32_e32 v67, 0
	scratch_store_b32 off, v19, off offset:204 ; 4-byte Folded Spill
	v_mul_lo_u32 v19, s73, v17
	scratch_store_b32 off, v19, off offset:208 ; 4-byte Folded Spill
	v_mul_lo_u32 v19, s73, v18
	scratch_store_b32 off, v19, off offset:212 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v19, 0x98, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v24, s73, v19
	scratch_store_b32 off, v24, off offset:216 ; 4-byte Folded Spill
	v_mul_lo_u32 v24, s73, v20
	scratch_store_b32 off, v24, off offset:220 ; 4-byte Folded Spill
	v_mul_lo_u32 v24, s73, v21
	scratch_store_b32 off, v24, off offset:224 ; 4-byte Folded Spill
	v_mul_lo_u32 v24, s73, v22
	scratch_store_b32 off, v24, off offset:228 ; 4-byte Folded Spill
	v_mul_lo_u32 v24, s73, v23
	scratch_store_b32 off, v24, off offset:232 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v24, 0xc0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v29, s73, v24
	scratch_store_b32 off, v29, off offset:236 ; 4-byte Folded Spill
	v_mul_lo_u32 v29, s73, v25
	scratch_store_b32 off, v29, off offset:240 ; 4-byte Folded Spill
	v_mul_lo_u32 v29, s73, v26
	scratch_store_b32 off, v29, off offset:244 ; 4-byte Folded Spill
	v_mul_lo_u32 v29, s73, v27
	scratch_store_b32 off, v29, off offset:248 ; 4-byte Folded Spill
	v_mul_lo_u32 v29, s73, v28
	scratch_store_b32 off, v29, off offset:252 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v29, 0xe8, v0
	v_add_nc_u32_e32 v0, s72, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_lo_u32 v33, s73, v29
	v_mul_lo_u32 v0, v0, s73
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:256
	scratch_store_b32 off, v0, off offset:268
	v_mul_lo_u32 v33, s73, v30
	v_mul_lo_u32 v0, v1, s73
	v_add_nc_u32_e32 v1, s72, v3
	v_add_nc_u32_e32 v3, s72, v5
	v_mov_b32_e32 v5, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:260
	scratch_store_b32 off, v0, off offset:272
	v_add_nc_u32_e32 v0, s72, v2
	v_mul_lo_u32 v33, s73, v31
	v_add_nc_u32_e32 v2, s72, v4
	v_add_nc_u32_e32 v4, s72, v6
	v_mov_b32_e32 v6, 0
	v_mul_lo_u32 v0, v0, s73
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:264
	scratch_store_b32 off, v0, off offset:276
	v_mul_lo_u32 v0, v1, s73
	v_add_nc_u32_e32 v1, s72, v8
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s73
	v_add_nc_u32_e32 v2, s72, v9
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s73
	v_add_nc_u32_e32 v3, s72, v10
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s73
	v_add_nc_u32_e32 v4, s72, v11
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s72, v7
	v_mov_b32_e32 v7, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v0, v0, s73
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s73
	v_add_nc_u32_e32 v1, s72, v13
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s73
	v_add_nc_u32_e32 v2, s72, v14
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s73
	v_add_nc_u32_e32 v3, s72, v15
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s73
	v_add_nc_u32_e32 v4, s72, v16
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s72, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v0, v0, s73
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s73
	v_add_nc_u32_e32 v1, s72, v18
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s73
	v_add_nc_u32_e32 v2, s72, v19
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s73
	v_add_nc_u32_e32 v3, s72, v20
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s73
	v_add_nc_u32_e32 v4, s72, v21
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s72, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v0, v0, s73
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s73
	v_add_nc_u32_e32 v1, s72, v23
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s73
	v_add_nc_u32_e32 v2, s72, v24
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s73
	v_add_nc_u32_e32 v3, s72, v25
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s73
	v_add_nc_u32_e32 v4, s72, v26
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s72, v22
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v0, v0, s73
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s73
	v_add_nc_u32_e32 v1, s72, v28
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s73
	v_add_nc_u32_e32 v2, s72, v29
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s73
	v_add_nc_u32_e32 v3, s72, v30
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s73
	v_add_nc_u32_e32 v4, s72, v31
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s72, v27
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v0, v0, s73
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s73
	v_mov_b32_e32 v1, 0
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s73
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s73
	v_mov_b32_e32 v3, 0
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s73
	v_mov_b32_e32 v4, 0
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off
	scratch_store_b128 off, v[4:7], off offset:16
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:32
	scratch_store_b128 off, v[4:7], off offset:48
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:64
	scratch_store_b128 off, v[4:7], off offset:80
	v_or_b32_e32 v0, 0x300, v34
	v_or_b32_e32 v1, 0x700, v34
	v_or_b32_e32 v2, 0x3f0, v34
	v_xor_b32_e32 v3, 16, v32
	v_xor_b32_e32 v4, 24, v32
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 0x110, v35
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	v_xor_b32_e32 v2, 8, v32
	v_add_nc_u32_e32 v208, 0, v1
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x7f0, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v3
	scratch_store_b32 off, v0, off offset:432 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	scratch_store_b32 off, v0, off offset:436 ; 4-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_mov_b32_e32 v184, v221
	.loc	1 1070 38 is_stmt 1             ; ragged.py:1070:38
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v5, off, off offset:144
	scratch_load_b32 v6, off, off offset:148
	scratch_load_b32 v7, off, off offset:152
	scratch_load_b32 v8, off, off offset:156
	scratch_load_b32 v9, off, off offset:160
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_lshrrev_b32_e32 v0, 6, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v0, s1, v0
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[129:130], null, v0, s0, v[44:45]
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s73, v0
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v2, 4, v0
	v_or_b32_e32 v3, 8, v0
	v_or_b32_e32 v4, 12, v0
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 vcc_lo, s79, vcc_lo
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e32 v1, 0x80000000, v129, vcc_lo
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[129:130], null, v2, s0, v[44:45]
	.loc	1 1060 27 is_stmt 1             ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s73, v2
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 vcc_lo, s79, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e32 v2, 0x80000000, v129, vcc_lo
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[129:130], null, v3, s0, v[44:45]
	.loc	1 1060 27 is_stmt 1             ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s73, v3
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 vcc_lo, s79, vcc_lo
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e32 v3, 0x80000000, v129, vcc_lo
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[129:130], null, v4, s0, v[44:45]
	.loc	1 1060 27 is_stmt 1             ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s73, v4
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v4, 16, v0
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 vcc_lo, s79, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e32 v131, 0x80000000, v129, vcc_lo
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[129:130], null, v4, s0, v[44:45]
	.loc	1 1060 27 is_stmt 1             ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s73, v4
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v4, 20, v0
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 vcc_lo, s79, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e32 v132, 0x80000000, v129, vcc_lo
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[129:130], null, v4, s0, v[44:45]
	.loc	1 1060 27 is_stmt 1             ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s73, v4
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v4, 24, v0
	v_or_b32_e32 v0, 28, v0
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 vcc_lo, s79, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e32 v133, 0x80000000, v129, vcc_lo
	.loc	1 1060 27 is_stmt 1             ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s73, v4
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[129:130], null, v4, s0, v[44:45]
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_and_b32_e32 v4, 31, v184
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 vcc_lo, s79, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v213, s1, v4
	.loc	1 1070 38                       ; ragged.py:1070:38
	scratch_load_b32 v4, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e32 v134, 0x80000000, v129, vcc_lo
	.loc	1 1069 38 is_stmt 0             ; ragged.py:1069:38
	v_mad_u64_u32 v[129:130], null, v0, s0, v[44:45]
	.loc	1 1060 27 is_stmt 1             ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s73, v0
	.loc	1 1110 17                       ; ragged.py:1110:17
	s_add_i32 s1, s1, 32
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 vcc_lo, s79, vcc_lo
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_lt_i32 s1, s73
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e32 v0, 0x80000000, v129, vcc_lo
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s73, v213
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v129, v9, v213
	scratch_load_b32 v9, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v130, v9, v213
	scratch_load_b32 v9, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v135, v9, v213
	scratch_load_b32 v9, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v136, v9, v213
	scratch_load_b32 v9, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 1070 30 is_stmt 0             ; ragged.py:1070:30
	v_dual_cndmask_b32 v136, 0x80000000, v136 :: v_dual_add_nc_u32 v7, v7, v213
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v137, v9, v213
	scratch_load_b32 v9, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v138, v9, v213
	scratch_load_b32 v9, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v138, 0x80000000, v138 :: v_dual_add_nc_u32 v139, v9, v213
	.loc	1 1070 38                       ; ragged.py:1070:38
	scratch_load_b32 v9, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v140, v9, v213
	scratch_load_b32 v9, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v129, 0x80000000, v129 :: v_dual_cndmask_b32 v140, 0x80000000, v140
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v141, v9, v213
	scratch_load_b32 v9, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v142, v9, v213
	scratch_load_b32 v9, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v142, 0x80000000, v142 :: v_dual_cndmask_b32 v135, 0x80000000, v135
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v143, v9, v213
	scratch_load_b32 v9, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v144, v9, v213
	scratch_load_b32 v9, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v144, 0x80000000, v144 :: v_dual_add_nc_u32 v145, v9, v213
	.loc	1 1070 38                       ; ragged.py:1070:38
	scratch_load_b32 v9, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v146, v9, v213
	scratch_load_b32 v9, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v137, 0x80000000, v137 :: v_dual_cndmask_b32 v146, 0x80000000, v146
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v147, v9, v213
	scratch_load_b32 v9, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v147, 0x80000000, v147 :: v_dual_add_nc_u32 v4, v4, v213
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v148, v9, v213
	scratch_load_b32 v9, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v148, 0x80000000, v148 :: v_dual_cndmask_b32 v139, 0x80000000, v139
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v149, v9, v213
	scratch_load_b32 v9, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v149, 0x80000000, v149, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v150, v9, v213
	scratch_load_b32 v9, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v150, 0x80000000, v150 :: v_dual_add_nc_u32 v151, v9, v213
	.loc	1 1070 38                       ; ragged.py:1070:38
	scratch_load_b32 v9, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v151, 0x80000000, v151 :: v_dual_add_nc_u32 v6, v6, v213
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, v9, v213
	scratch_load_b32 v9, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v141, 0x80000000, v141 :: v_dual_cndmask_b32 v152, 0x80000000, v152
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v153, v9, v213
	scratch_load_b32 v9, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v153, 0x80000000, v153, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v154, v9, v213
	scratch_load_b32 v9, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v154, 0x80000000, v154 :: v_dual_cndmask_b32 v143, 0x80000000, v143
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v155, v9, v213
	scratch_load_b32 v9, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v155, 0x80000000, v155 :: v_dual_add_nc_u32 v8, v8, v213
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_add_nc_u32 v5, v5, v213
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v156, v9, v213
	scratch_load_b32 v9, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v156, 0x80000000, v156 :: v_dual_add_nc_u32 v157, v9, v213
	.loc	1 1070 38                       ; ragged.py:1070:38
	scratch_load_b32 v9, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v157, 0x80000000, v157, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v158, v9, v213
	scratch_load_b32 v9, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v145, 0x80000000, v145 :: v_dual_cndmask_b32 v158, 0x80000000, v158
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v159, v9, v213
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v159, 0x80000000, v159, vcc_lo
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v130, 0x80000000, v130
	s_clause 0x1f
	buffer_load_u8 v229, v4, s[12:15], 0 offen
	buffer_load_u8 v10, v5, s[12:15], 0 offen
	buffer_load_u8 v231, v6, s[12:15], 0 offen
	buffer_load_u8 v11, v7, s[12:15], 0 offen
	buffer_load_u8 v232, v8, s[12:15], 0 offen
	buffer_load_u8 v12, v129, s[12:15], 0 offen
	buffer_load_u8 v233, v130, s[12:15], 0 offen
	buffer_load_u8 v17, v135, s[12:15], 0 offen
	buffer_load_u8 v234, v136, s[12:15], 0 offen
	buffer_load_u8 v25, v137, s[12:15], 0 offen
	buffer_load_u8 v235, v138, s[12:15], 0 offen
	buffer_load_u8 v33, v139, s[12:15], 0 offen
	buffer_load_u8 v236, v140, s[12:15], 0 offen
	buffer_load_u8 v41, v141, s[12:15], 0 offen
	buffer_load_u8 v237, v142, s[12:15], 0 offen
	buffer_load_u8 v49, v143, s[12:15], 0 offen
	buffer_load_u8 v224, v144, s[12:15], 0 offen
	buffer_load_u8 v57, v145, s[12:15], 0 offen
	buffer_load_u8 v223, v146, s[12:15], 0 offen
	buffer_load_u8 v160, v147, s[12:15], 0 offen
	buffer_load_u8 v222, v148, s[12:15], 0 offen
	buffer_load_u8 v169, v149, s[12:15], 0 offen
	buffer_load_u8 v5, v150, s[12:15], 0 offen
	buffer_load_u8 v225, v151, s[12:15], 0 offen
	buffer_load_u8 v6, v152, s[12:15], 0 offen
	buffer_load_u8 v226, v153, s[12:15], 0 offen
	buffer_load_u8 v7, v154, s[12:15], 0 offen
	buffer_load_u8 v227, v155, s[12:15], 0 offen
	buffer_load_u8 v4, v156, s[12:15], 0 offen
	buffer_load_u8 v228, v157, s[12:15], 0 offen
	buffer_load_u8 v221, v158, s[12:15], 0 offen
	buffer_load_u8 v230, v159, s[12:15], 0 offen
	.loc	1 1069 30 is_stmt 1             ; ragged.py:1069:30
	s_clause 0x7
	buffer_load_u8 v1, v1, s[4:7], 0 offen
	buffer_load_u8 v2, v2, s[4:7], 0 offen
	buffer_load_u8 v3, v3, s[4:7], 0 offen
	buffer_load_u8 v129, v132, s[4:7], 0 offen
	buffer_load_u8 v130, v133, s[4:7], 0 offen
	buffer_load_u8 v132, v134, s[4:7], 0 offen
	buffer_load_u8 v0, v0, s[4:7], 0 offen
	buffer_load_u8 v131, v131, s[4:7], 0 offen
	v_add_nc_u32_e32 v133, 0, v184
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v133, v1
	s_waitcnt vmcnt(6)
	ds_store_b8 v133, v2 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v133, v3 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v133, v129 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v133, v130 offset:1280
	s_waitcnt vmcnt(2)
	ds_store_b8 v133, v132 offset:1536
	scratch_load_b32 v1, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v1, v131
	scratch_load_b32 v1, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v1, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1071 27                       ; ragged.py:1071:27
	ds_load_u8 v0, v212 offset:320
	ds_load_u8 v1, v212 offset:256
	ds_load_u8 v2, v212 offset:336
	ds_load_u8 v3, v212 offset:272
	ds_load_u8 v129, v212 offset:352
	ds_load_u8 v130, v212 offset:288
	ds_load_u8 v131, v212 offset:368
	ds_load_u8 v134, v212 offset:304
	ds_load_u8 v39, v212 offset:960
	ds_load_u8 v16, v212 offset:896
	ds_load_u8 v8, v212 offset:1024
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v212 offset:448
	ds_load_u8 v132, v212 offset:384
	ds_load_u8 v133, v212 offset:464
	ds_load_u8 v135, v212 offset:400
	ds_load_u8 v136, v212 offset:480
	ds_load_u8 v137, v212 offset:416
	ds_load_u8 v138, v212 offset:496
	ds_load_u8 v139, v212 offset:432
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	scratch_store_b32 off, v8, off offset:96 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v132, v1, 0xc0c0004
	ds_load_u8 v132, v212 offset:64
	ds_load_u8 v140, v212
	ds_load_u8 v141, v212 offset:80
	ds_load_u8 v142, v212 offset:16
	ds_load_u8 v143, v212 offset:96
	ds_load_u8 v144, v212 offset:32
	ds_load_u8 v145, v212 offset:112
	ds_load_u8 v146, v212 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v3, v135, v133, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v130, v137, v136, 0xc0c0004
	v_lshl_or_b32 v1, v1, 16, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v3, v3, 16, v2
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v132, v140, v132, 0xc0c0004
	ds_load_u8 v140, v212 offset:192
	ds_load_u8 v147, v212 offset:128
	ds_load_u8 v148, v212 offset:208
	ds_load_u8 v149, v212 offset:144
	ds_load_u8 v150, v212 offset:224
	ds_load_u8 v151, v212 offset:160
	ds_load_u8 v152, v212 offset:240
	ds_load_u8 v153, v212 offset:176
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v140, v147, v140, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v133, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v135, v151, v150, 0xc0c0004
	v_lshl_or_b32 v0, v140, 16, v132
	v_perm_b32 v132, v142, v141, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v133, 16, v132
	v_lshl_or_b32 v133, v130, 16, v129
	v_perm_b32 v129, v134, v131, 0xc0c0004
	v_perm_b32 v130, v139, v138, 0xc0c0004
	v_perm_b32 v132, v144, v143, 0xc0c0004
	v_perm_b32 v134, v146, v145, 0xc0c0004
	ds_load_u8 v21, v212 offset:1728
	ds_load_u8 v34, v212 offset:1792
	ds_load_u8 v155, v212 offset:1744
	ds_load_u8 v157, v212 offset:1680
	ds_load_u8 v147, v212 offset:1760
	ds_load_u8 v149, v212 offset:1696
	ds_load_u8 v178, v212 offset:1776
	ds_load_u8 v145, v212 offset:1712
	ds_load_u8 v43, v212 offset:1664
	ds_load_u8 v48, v212 offset:1600
	ds_load_u8 v37, v212 offset:1616
	ds_load_u8 v40, v212 offset:1552
	ds_load_u8 v26, v212 offset:1632
	ds_load_u8 v30, v212 offset:1568
	ds_load_u8 v20, v212 offset:1648
	ds_load_u8 v19, v212 offset:1584
	v_lshl_or_b32 v131, v130, 16, v129
	ds_load_u8 v32, v212 offset:976
	ds_load_u8 v35, v212 offset:912
	ds_load_u8 v181, v212 offset:992
	ds_load_u8 v23, v212 offset:928
	ds_load_u8 v150, v212 offset:944
	ds_load_u8 v59, v212 offset:832
	ds_load_u8 v60, v212 offset:768
	ds_load_u8 v51, v212 offset:848
	ds_load_u8 v54, v212 offset:784
	ds_load_u8 v42, v212 offset:864
	ds_load_u8 v45, v212 offset:800
	ds_load_u8 v27, v212 offset:880
	ds_load_u8 v31, v212 offset:816
	ds_load_u8 v8, v212 offset:704
	ds_load_u8 v211, v212 offset:640
	ds_load_u8 v61, v212 offset:720
	ds_load_u8 v13, v212 offset:656
	ds_load_u8 v55, v212 offset:736
	ds_load_u8 v56, v212 offset:672
	ds_load_u8 v15, v212 offset:752
	ds_load_u8 v52, v212 offset:688
	ds_load_u8 v218, v212 offset:576
	ds_load_u8 v219, v212 offset:512
	ds_load_u8 v216, v212 offset:592
	ds_load_u8 v217, v212 offset:528
	ds_load_u8 v129, v212 offset:608
	ds_load_u8 v215, v212 offset:544
	ds_load_u8 v64, v212 offset:624
	ds_load_u8 v210, v212 offset:560
	ds_load_u8 v151, v212 offset:1216
	ds_load_u8 v158, v212 offset:1280
	ds_load_u8 v183, v212 offset:1232
	ds_load_u8 v142, v212 offset:1168
	ds_load_u8 v254, v212 offset:1248
	ds_load_u8 v180, v212 offset:1184
	ds_load_u8 v9, v212 offset:1264
	v_lshl_or_b32 v132, v135, 16, v132
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v135, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v130, v135, 16, v134
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v9, off offset:132 ; 4-byte Folded Spill
	ds_load_u8 v255, v212 offset:1200
	ds_load_u8 v29, v212 offset:1152
	ds_load_u8 v18, v212 offset:1088
	ds_load_u8 v159, v212 offset:1104
	ds_load_u8 v22, v212 offset:1040
	ds_load_u8 v153, v212 offset:1120
	ds_load_u8 v156, v212 offset:1056
	ds_load_u8 v144, v212 offset:1136
	ds_load_u8 v148, v212 offset:1072
	ds_load_u8 v53, v212 offset:1472
	ds_load_u8 v9, v212 offset:1536
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v9, off offset:100 ; 4-byte Folded Spill
	ds_load_u8 v44, v212 offset:1488
	ds_load_u8 v46, v212 offset:1424
	ds_load_u8 v36, v212 offset:1504
	ds_load_u8 v38, v212 offset:1440
	ds_load_u8 v24, v212 offset:1520
	ds_load_u8 v28, v212 offset:1456
	ds_load_u8 v209, v212 offset:1408
	ds_load_u8 v214, v212 offset:1344
	ds_load_u8 v62, v212 offset:1360
	ds_load_u8 v63, v212 offset:1296
	ds_load_u8 v14, v212 offset:1376
	ds_load_u8 v58, v212 offset:1312
	ds_load_u8 v47, v212 offset:1392
	ds_load_u8 v50, v212 offset:1328
	ds_load_u8 v179, v212 offset:1984
	ds_load_u8 v9, v212 offset:2000
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v9, off offset:120 ; 4-byte Folded Spill
	ds_load_u8 v9, v212 offset:1936
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v9, off offset:128 ; 4-byte Folded Spill
	ds_load_u8 v9, v212 offset:2016
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v9, off offset:112 ; 4-byte Folded Spill
	ds_load_u8 v9, v212 offset:1952
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v9, off offset:116 ; 4-byte Folded Spill
	scratch_load_b32 v9, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v220, v9
	scratch_load_b32 v9, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v9, off offset:104 ; 4-byte Folded Spill
	ds_load_u8 v9, v212 offset:1968
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v9, off offset:108 ; 4-byte Folded Spill
	ds_load_u8 v152, v212 offset:1920
	ds_load_u8 v154, v212 offset:1856
	ds_load_u8 v143, v212 offset:1872
	ds_load_u8 v146, v212 offset:1808
	ds_load_u8 v182, v212 offset:1888
	ds_load_u8 v177, v212 offset:1824
	ds_load_u8 v9, v212 offset:1904
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v9, off offset:124 ; 4-byte Folded Spill
	ds_load_u8 v9, v212 offset:1840
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v9, off offset:136 ; 4-byte Folded Spill
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v9, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, 0, v9
	ds_store_b8 v9, v229
	ds_store_b8 v9, v231 offset:512
	ds_store_b8 v9, v232 offset:1024
	ds_store_b8 v9, v233 offset:1536
	ds_store_b8 v9, v234 offset:2048
	ds_store_b8 v9, v235 offset:2560
	ds_store_b8 v9, v236 offset:3072
	ds_store_b8 v9, v237 offset:3584
	ds_store_b8 v9, v224 offset:4096
	ds_store_b8 v9, v223 offset:4608
	ds_store_b8 v9, v222 offset:5120
	ds_store_b8 v9, v5 offset:5632
	ds_store_b8 v9, v6 offset:6144
	ds_store_b8 v9, v7 offset:6656
	ds_store_b8 v9, v4 offset:7168
	ds_store_b8 v9, v221 offset:7680
	ds_store_b8 v208, v10
	ds_store_b8 v208, v11 offset:512
	ds_store_b8 v208, v12 offset:1024
	ds_store_b8 v208, v17 offset:1536
	ds_store_b8 v208, v25 offset:2048
	ds_store_b8 v208, v33 offset:2560
	ds_store_b8 v208, v41 offset:3072
	ds_store_b8 v208, v49 offset:3584
	ds_store_b8 v208, v57 offset:4096
	ds_store_b8 v208, v160 offset:4608
	ds_store_b8 v208, v169 offset:5120
	ds_store_b8 v208, v225 offset:5632
	ds_store_b8 v208, v226 offset:6144
	ds_store_b8 v208, v227 offset:6656
	ds_store_b8 v208, v228 offset:7168
	ds_store_b8 v208, v230 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0xd                            ; 56-byte Folded Reload
	scratch_load_b32 v4, off, off offset:288
	scratch_load_b32 v5, off, off offset:268
	scratch_load_b32 v6, off, off offset:272
	scratch_load_b32 v7, off, off offset:276
	scratch_load_b32 v33, off, off offset:372
	scratch_load_b32 v17, off, off offset:280
	scratch_load_b32 v25, off, off offset:368
	scratch_load_b32 v41, off, off offset:376
	scratch_load_b32 v49, off, off offset:380
	scratch_load_b32 v57, off, off offset:384
	scratch_load_b32 v134, off, off offset:388
	scratch_load_b32 v10, off, off offset:428
	scratch_load_b32 v11, off, off offset:432
	scratch_load_b32 v12, off, off offset:436
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v4, 0, v4
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v33, v33, v213
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v221, v17, v213
	scratch_load_b32 v17, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[222:225], v4 offset1:8
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v25, v25, v213
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v41, v41, v213
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v160, v134, v213
	v_dual_mov_b32 v134, v161 :: v_dual_mov_b32 v135, v162
	v_dual_mov_b32 v136, v163 :: v_dual_mov_b32 v137, v164
	v_dual_mov_b32 v138, v165 :: v_dual_mov_b32 v139, v166
	v_dual_mov_b32 v140, v167 :: v_dual_mov_b32 v141, v168
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v161, off, off offset:392
	scratch_load_b32 v162, off, off offset:396
	scratch_load_b32 v163, off, off offset:400
	scratch_load_b32 v164, off, off offset:404
	scratch_load_b32 v165, off, off offset:408
	v_add_nc_u32_e32 v7, v7, v213
	v_add_nc_u32_e32 v49, v49, v213
	v_add_nc_u32_e32 v57, v57, v213
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[222:223], v[0:1], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[222:223], v[2:3], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[222:223], v[132:133], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[222:223], v[130:131], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[224:225], v[0:1], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[224:225], v[2:3], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[224:225], v[132:133], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[224:225], v[130:131], v[121:128] neg_lo:[1,1,0]
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_cndmask_b32 v166, 0x80000000, v221
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	v_dual_cndmask_b32 v57, 0x80000000, v57 :: v_dual_cndmask_b32 v160, 0x80000000, v160
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v222, v17, v213
	scratch_load_b32 v17, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v161, v161, v213
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v162, v162, v213
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v163, v163, v213
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v164, v164, v213
	v_add_nc_u32_e32 v5, v5, v213
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v165, v165, v213
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v161, 0x80000000, v161, vcc_lo
	v_dual_cndmask_b32 v163, 0x80000000, v163 :: v_dual_cndmask_b32 v164, 0x80000000, v164
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v162, 0x80000000, v162
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v165, 0x80000000, v165, vcc_lo
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v223, v17, v213
	scratch_load_b32 v17, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v224, v17, v213
	scratch_load_b32 v17, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v221, 0x80000000, v224, vcc_lo
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v225, v17, v213
	scratch_load_b32 v17, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v226, v17, v213
	scratch_load_b32 v17, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v227, v17, v213
	scratch_load_b32 v17, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v224, 0x80000000, v227, vcc_lo
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v228, v17, v213
	scratch_load_b32 v17, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v229, v17, v213
	scratch_load_b32 v17, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v230, v17, v213
	scratch_load_b32 v17, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v227, 0x80000000, v230, vcc_lo
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v231, v17, v213
	scratch_load_b32 v17, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v232, v17, v213
	scratch_load_b32 v17, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v233, v17, v213
	scratch_load_b32 v17, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v230, 0x80000000, v233, vcc_lo
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v234, v17, v213
	scratch_load_b32 v17, off, off offset:352 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v6, v6, v213
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v235, v17, v213
	scratch_load_b32 v17, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v236, v17, v213
	scratch_load_b32 v17, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v233, 0x80000000, v236, vcc_lo
	v_dual_cndmask_b32 v167, 0x80000000, v222 :: v_dual_cndmask_b32 v222, 0x80000000, v225
	v_dual_cndmask_b32 v225, 0x80000000, v228 :: v_dual_cndmask_b32 v228, 0x80000000, v231
	v_cndmask_b32_e32 v231, 0x80000000, v234, vcc_lo
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_add_nc_u32 v237, v17, v213
	.loc	1 1096 25                       ; ragged.py:1096:25
	scratch_load_b32 v17, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v234, 0x80000000, v237, vcc_lo
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, v17, v213
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v213, 0x80000000, v223, vcc_lo
	v_dual_cndmask_b32 v223, 0x80000000, v226 :: v_dual_cndmask_b32 v226, 0x80000000, v229
	v_cndmask_b32_e32 v229, 0x80000000, v232, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_cndmask_b32 v232, 0x80000000, v235
	s_clause 0x1f
	buffer_load_u8 v5, v5, s[12:15], 0 offen
	buffer_load_u8 v7, v7, s[12:15], 0 offen
	buffer_load_u8 v167, v167, s[12:15], 0 offen
	buffer_load_u8 v221, v221, s[12:15], 0 offen
	buffer_load_u8 v235, v223, s[12:15], 0 offen
	buffer_load_u8 v236, v225, s[12:15], 0 offen
	buffer_load_u8 v237, v227, s[12:15], 0 offen
	buffer_load_u8 v168, v229, s[12:15], 0 offen
	buffer_load_u8 v169, v231, s[12:15], 0 offen
	buffer_load_u8 v170, v233, s[12:15], 0 offen
	buffer_load_u8 v17, v17, s[12:15], 0 offen
	buffer_load_u8 v33, v33, s[12:15], 0 offen
	buffer_load_u8 v49, v49, s[12:15], 0 offen
	buffer_load_u8 v160, v160, s[12:15], 0 offen
	buffer_load_u8 v162, v162, s[12:15], 0 offen
	buffer_load_u8 v164, v164, s[12:15], 0 offen
	buffer_load_u8 v171, v222, s[12:15], 0 offen
	buffer_load_u8 v172, v213, s[12:15], 0 offen
	buffer_load_u8 v166, v166, s[12:15], 0 offen
	buffer_load_u8 v6, v6, s[12:15], 0 offen
	buffer_load_u8 v173, v230, s[12:15], 0 offen
	buffer_load_u8 v174, v228, s[12:15], 0 offen
	buffer_load_u8 v175, v226, s[12:15], 0 offen
	buffer_load_u8 v213, v224, s[12:15], 0 offen
	buffer_load_u8 v41, v41, s[12:15], 0 offen
	buffer_load_u8 v25, v25, s[12:15], 0 offen
	buffer_load_u8 v234, v234, s[12:15], 0 offen
	buffer_load_u8 v176, v232, s[12:15], 0 offen
	buffer_load_u8 v165, v165, s[12:15], 0 offen
	buffer_load_u8 v163, v163, s[12:15], 0 offen
	buffer_load_u8 v161, v161, s[12:15], 0 offen
	buffer_load_u8 v57, v57, s[12:15], 0 offen
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[222:225], v10 offset1:8
	ds_load_2addr_stride64_b64 v[226:229], v11 offset1:8
	ds_load_2addr_stride64_b64 v[230:233], v12 offset1:8
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(31)
	ds_store_b8 v9, v5
	s_waitcnt vmcnt(30)
	ds_store_b8 v9, v7 offset:512
	s_waitcnt vmcnt(29)
	ds_store_b8 v9, v167 offset:1024
	s_waitcnt vmcnt(28)
	ds_store_b8 v9, v221 offset:1536
	s_waitcnt vmcnt(27)
	ds_store_b8 v9, v235 offset:2048
	s_waitcnt vmcnt(26)
	ds_store_b8 v9, v236 offset:2560
	s_waitcnt vmcnt(25)
	ds_store_b8 v9, v237 offset:3072
	s_waitcnt vmcnt(24)
	ds_store_b8 v9, v168 offset:3584
	s_waitcnt vmcnt(23)
	ds_store_b8 v9, v169 offset:4096
	v_mov_b32_e32 v221, v184
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v5, v13, v61, 0xc0c0004
	v_perm_b32 v7, v56, v55, 0xc0c0004
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_waitcnt vmcnt(22)
	ds_store_b8 v9, v170 offset:4608
	s_waitcnt vmcnt(21)
	ds_store_b8 v9, v17 offset:5120
	s_waitcnt vmcnt(20)
	ds_store_b8 v9, v33 offset:5632
	s_waitcnt vmcnt(19)
	ds_store_b8 v9, v49 offset:6144
	s_waitcnt vmcnt(18)
	ds_store_b8 v9, v160 offset:6656
	s_waitcnt vmcnt(17)
	ds_store_b8 v9, v162 offset:7168
	s_waitcnt vmcnt(16)
	ds_store_b8 v9, v164 offset:7680
	s_waitcnt vmcnt(12)
	ds_store_b8 v208, v6
	ds_store_b8 v208, v166 offset:512
	ds_store_b8 v208, v172 offset:1024
	ds_store_b8 v208, v171 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v208, v213 offset:2048
	ds_store_b8 v208, v175 offset:2560
	ds_store_b8 v208, v174 offset:3072
	ds_store_b8 v208, v173 offset:3584
	s_waitcnt vmcnt(4)
	ds_store_b8 v208, v176 offset:4096
	ds_store_b8 v208, v234 offset:4608
	ds_store_b8 v208, v25 offset:5120
	ds_store_b8 v208, v41 offset:5632
	s_waitcnt vmcnt(0)
	ds_store_b8 v208, v57 offset:6144
	ds_store_b8 v208, v161 offset:6656
	ds_store_b8 v208, v163 offset:7168
	ds_store_b8 v208, v165 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 64-byte Folded Reload
	scratch_load_b128 v[169:172], off, off offset:32
	scratch_load_b128 v[173:176], off, off offset:48
	scratch_load_b128 v[184:187], off, off offset:64
	scratch_load_b128 v[188:191], off, off offset:80
	v_dual_mov_b32 v168, v141 :: v_dual_mov_b32 v167, v140
	v_dual_mov_b32 v166, v139 :: v_dual_mov_b32 v165, v138
	v_dual_mov_b32 v164, v137 :: v_dual_mov_b32 v163, v136
	v_dual_mov_b32 v162, v135 :: v_dual_mov_b32 v161, v134
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[134:137], off, off
	scratch_load_b128 v[138:141], off, off offset:16
	ds_load_2addr_stride64_b64 v[234:237], v4 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v6, v215, v129, 0xc0c0004
	v_perm_b32 v4, v217, v216, 0xc0c0004
	v_perm_b32 v9, v150, v220, 0xc0c0004
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[192:199], v[234:235], v[130:131], v[192:199] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[200:207], v[236:237], v[130:131], v[200:207] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[238:245], v[234:235], v[0:1], v[238:245] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[246:253], v[236:237], v[0:1], v[246:253] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[161:168], v[234:235], v[2:3], v[161:168] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v0, v60, v59, 0xc0c0004
	v_perm_b32 v1, v16, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v1, v1, 16, v0
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt vmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[169:176], v[234:235], v[132:133], v[169:176] neg_lo:[1,1,0]
	s_waitcnt vmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[184:191], v[236:237], v[132:133], v[184:191] neg_lo:[1,1,0]
	.loc	1 1095 35                       ; ragged.py:1095:35
	ds_load_2addr_stride64_b64 v[129:132], v10 offset1:8
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[236:237], v[2:3], v[134:141] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v2, v219, v218, 0xc0c0004
	v_perm_b32 v3, v211, v8, 0xc0c0004
	v_perm_b32 v8, v31, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v0, v3, 16, v2
	v_perm_b32 v2, v54, v51, 0xc0c0004
	v_perm_b32 v3, v35, v32, 0xc0c0004
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[238:245], v[129:130], v[0:1], v[238:245] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[246:253], v[131:132], v[0:1], v[246:253] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v3, v3, 16, v2
	v_lshl_or_b32 v2, v5, 16, v4
	v_perm_b32 v4, v45, v42, 0xc0c0004
	v_perm_b32 v5, v23, v181, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[65:72], v[222:223], v[0:1], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[224:225], v[0:1], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[222:223], v[2:3], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[224:225], v[2:3], v[89:96] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[161:168], v[129:130], v[2:3], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[131:132], v[2:3], v[134:141] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	scratch_load_b32 v2, off, off offset:96 ; 4-byte Folded Reload
	v_lshl_or_b32 v5, v5, 16, v4
	v_lshl_or_b32 v4, v7, 16, v6
	v_perm_b32 v6, v210, v64, 0xc0c0004
	v_perm_b32 v7, v52, v15, 0xc0c0004
	v_perm_b32 v0, v158, v214, 0xc0c0004
	v_perm_b32 v1, v209, v53, 0xc0c0004
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[169:176], v[129:130], v[4:5], v[169:176] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[184:191], v[131:132], v[4:5], v[184:191] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v6, v7, 16, v6
	v_lshl_or_b32 v7, v9, 16, v8
	v_perm_b32 v3, v29, v151, 0xc0c0004
	scratch_load_b32 v9, off, off offset:132 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[97:104], v[222:223], v[4:5], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[224:225], v[4:5], v[105:112] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[192:199], v[129:130], v[6:7], v[192:199] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[200:207], v[131:132], v[6:7], v[200:207] neg_lo:[1,1,0]
	.loc	1 1095 35                       ; ragged.py:1095:35
	ds_load_2addr_stride64_b64 v[129:132], v11 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v1, v1, 16, v0
	v_perm_b32 v4, v22, v159, 0xc0c0004
	v_perm_b32 v5, v142, v183, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[113:120], v[222:223], v[6:7], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[224:225], v[6:7], v[121:128] neg_lo:[1,1,0]
	v_perm_b32 v6, v156, v153, 0xc0c0004
	v_perm_b32 v7, v180, v254, 0xc0c0004
	v_perm_b32 v8, v148, v144, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_perm_b32 v2, v2, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v0, v3, 16, v2
	v_perm_b32 v2, v63, v62, 0xc0c0004
	v_perm_b32 v3, v46, v44, 0xc0c0004
	scratch_load_b64 v[44:45], off, off offset:292 ; 8-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[65:72], v[226:227], v[0:1], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[228:229], v[0:1], v[73:80] neg_lo:[1,1,0]
	v_lshl_or_b32 v3, v3, 16, v2
	v_lshl_or_b32 v2, v5, 16, v4
	v_perm_b32 v4, v58, v14, 0xc0c0004
	v_perm_b32 v5, v38, v36, 0xc0c0004
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[238:245], v[129:130], v[0:1], v[238:245] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[246:253], v[131:132], v[0:1], v[246:253] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_wmma_i32_16x16x16_iu4 v[81:88], v[226:227], v[2:3], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[228:229], v[2:3], v[89:96] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[161:168], v[129:130], v[2:3], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[131:132], v[2:3], v[134:141] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	scratch_load_b32 v2, off, off offset:100 ; 4-byte Folded Reload
	v_lshl_or_b32 v5, v5, 16, v4
	v_lshl_or_b32 v4, v7, 16, v6
	v_perm_b32 v0, v34, v154, 0xc0c0004
	v_perm_b32 v1, v152, v179, 0xc0c0004
	v_perm_b32 v3, v43, v21, 0xc0c0004
	v_perm_b32 v6, v50, v47, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[97:104], v[226:227], v[4:5], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[228:229], v[4:5], v[105:112] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[169:176], v[129:130], v[4:5], v[169:176] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[184:191], v[131:132], v[4:5], v[184:191] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v1, v1, 16, v0
	v_perm_b32 v7, v28, v24, 0xc0c0004
	s_waitcnt vmcnt(2)
	v_perm_b32 v9, v255, v9, 0xc0c0004
	v_perm_b32 v5, v157, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v7, v7, 16, v6
	v_lshl_or_b32 v6, v9, 16, v8
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v8, off, off offset:124
	scratch_load_b32 v9, off, off offset:136
	v_wmma_i32_16x16x16_iu4 v[113:120], v[226:227], v[6:7], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[228:229], v[6:7], v[121:128] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[192:199], v[129:130], v[6:7], v[192:199] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[200:207], v[131:132], v[6:7], v[200:207] neg_lo:[1,1,0]
	.loc	1 1095 35                       ; ragged.py:1095:35
	ds_load_2addr_stride64_b64 v[129:132], v12 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v7, v149, v147, 0xc0c0004
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v2, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v0, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:120
	scratch_load_b32 v4, off, off offset:128
	v_perm_b32 v2, v146, v143, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[65:72], v[230:231], v[0:1], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[232:233], v[0:1], v[73:80] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[238:245], v[129:130], v[0:1], v[238:245] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[246:253], v[131:132], v[0:1], v[246:253] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt vmcnt(2)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:104
	scratch_load_b32 v10, off, off offset:108
	s_waitcnt vmcnt(2)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	v_perm_b32 v4, v40, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v3, v3, 16, v2
	v_lshl_or_b32 v2, v5, 16, v4
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:112
	scratch_load_b32 v6, off, off offset:116
	v_perm_b32 v4, v177, v182, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[81:88], v[230:231], v[2:3], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[232:233], v[2:3], v[89:96] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[161:168], v[129:130], v[2:3], v[161:168] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt vmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[134:141], v[131:132], v[2:3], v[134:141] neg_lo:[1,1,0]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[134:137], off
	scratch_store_b128 off, v[138:141], off offset:16
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	v_perm_b32 v6, v30, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v5, v5, 16, v4
	v_lshl_or_b32 v4, v7, 16, v6
	v_perm_b32 v6, v19, v20, 0xc0c0004
	v_perm_b32 v7, v145, v178, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[97:104], v[230:231], v[4:5], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[232:233], v[4:5], v[105:112] neg_lo:[1,1,0]
	v_lshl_or_b32 v6, v7, 16, v6
	v_lshl_or_b32 v7, v9, 16, v8
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[169:176], v[129:130], v[4:5], v[169:176] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[184:191], v[131:132], v[4:5], v[184:191] neg_lo:[1,1,0]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[169:172], off offset:32
	scratch_store_b128 off, v[173:176], off offset:48
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_wmma_i32_16x16x16_iu4 v[113:120], v[230:231], v[6:7], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[232:233], v[6:7], v[121:128] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[192:199], v[129:130], v[6:7], v[192:199] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[200:207], v[131:132], v[6:7], v[200:207] neg_lo:[1,1,0]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[184:187], off offset:64
	scratch_store_b128 off, v[188:191], off offset:80
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[16:19], off, off
	scratch_load_b128 v[20:23], off, off offset:16
	.loc	1 1111 19 is_stmt 1             ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v54, v82
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[32:35], off, off offset:64
	scratch_load_b128 v[36:39], off, off offset:80
	v_cvt_f32_i32_e32 v139, v90
	.loc	1 1112 24                       ; ragged.py:1112:24
	v_cvt_f32_i32_e32 v90, v161
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v42, off, off offset:444
	scratch_load_b32 v5, off, off offset:448
	scratch_load_b32 v161, off, off offset:440
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v51, v65
	v_cvt_f32_i32_e32 v50, v66
	v_cvt_f32_i32_e32 v48, v67
	v_cvt_f32_i32_e32 v49, v68
	v_cvt_f32_i32_e32 v145, v69
	v_cvt_f32_i32_e32 v146, v70
	v_cvt_f32_i32_e32 v147, v71
	v_cvt_f32_i32_e32 v148, v72
	v_cvt_f32_i32_e32 v149, v73
	v_cvt_f32_i32_e32 v142, v74
	v_cvt_f32_i32_e32 v143, v75
	v_cvt_f32_i32_e32 v144, v76
	v_cvt_f32_i32_e32 v130, v77
	v_cvt_f32_i32_e32 v133, v78
	v_cvt_f32_i32_e32 v132, v79
	v_cvt_f32_i32_e32 v131, v80
	v_cvt_f32_i32_e32 v52, v81
	v_cvt_f32_i32_e32 v53, v83
	v_cvt_f32_i32_e32 v55, v84
	v_cvt_f32_i32_e32 v151, v85
	v_cvt_f32_i32_e32 v152, v86
	v_cvt_f32_i32_e32 v153, v87
	v_cvt_f32_i32_e32 v154, v88
	v_cvt_f32_i32_e32 v150, v89
	v_cvt_f32_i32_e32 v140, v91
	v_cvt_f32_i32_e32 v141, v92
	v_cvt_f32_i32_e32 v77, v93
	v_cvt_f32_i32_e32 v138, v94
	v_cvt_f32_i32_e32 v137, v95
	v_cvt_f32_i32_e32 v136, v96
	v_cvt_f32_i32_e32 v0, v97
	v_cvt_f32_i32_e32 v129, v98
	v_cvt_f32_i32_e32 v135, v99
	v_cvt_f32_i32_e32 v134, v100
	v_cvt_f32_i32_e32 v156, v101
	v_cvt_f32_i32_e32 v157, v102
	v_cvt_f32_i32_e32 v158, v103
	v_cvt_f32_i32_e32 v159, v104
	v_cvt_f32_i32_e32 v155, v105
	v_cvt_f32_i32_e32 v104, v106
	v_cvt_f32_i32_e32 v105, v107
	v_cvt_f32_i32_e32 v106, v108
	v_cvt_f32_i32_e32 v76, v109
	v_cvt_f32_i32_e32 v100, v110
	v_cvt_f32_i32_e32 v99, v111
	v_cvt_f32_i32_e32 v98, v112
	v_cvt_f32_i32_e32 v112, v113
	v_cvt_f32_i32_e32 v113, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v114, v116
	v_cvt_f32_i32_e32 v108, v117
	v_cvt_f32_i32_e32 v109, v118
	v_cvt_f32_i32_e32 v110, v119
	v_cvt_f32_i32_e32 v111, v120
	v_cvt_f32_i32_e32 v107, v121
	v_cvt_f32_i32_e32 v95, v122
	v_cvt_f32_i32_e32 v96, v123
	v_cvt_f32_i32_e32 v97, v124
	v_cvt_f32_i32_e32 v65, v125
	v_cvt_f32_i32_e32 v103, v126
	v_cvt_f32_i32_e32 v102, v127
	v_cvt_f32_i32_e32 v101, v128
	.loc	1 1112 24                       ; ragged.py:1112:24
	v_cvt_f32_i32_e32 v91, v238
	v_cvt_f32_i32_e32 v92, v239
	v_cvt_f32_i32_e32 v94, v240
	v_cvt_f32_i32_e32 v93, v241
	v_cvt_f32_i32_e32 v71, v242
	v_cvt_f32_i32_e32 v72, v243
	v_cvt_f32_i32_e32 v73, v244
	v_cvt_f32_i32_e32 v74, v245
	v_cvt_f32_i32_e32 v75, v246
	v_cvt_f32_i32_e32 v68, v247
	v_cvt_f32_i32_e32 v69, v248
	v_cvt_f32_i32_e32 v70, v249
	v_cvt_f32_i32_e32 v7, v250
	v_cvt_f32_i32_e32 v67, v251
	v_cvt_f32_i32_e32 v66, v252
	v_cvt_f32_i32_e32 v15, v253
	v_cvt_f32_i32_e32 v89, v162
	v_cvt_f32_i32_e32 v87, v163
	v_cvt_f32_i32_e32 v88, v164
	v_cvt_f32_i32_e32 v81, v165
	v_cvt_f32_i32_e32 v80, v166
	v_cvt_f32_i32_e32 v79, v167
	v_cvt_f32_i32_e32 v78, v168
	v_cvt_f32_i32_e32 v40, v196
	v_cvt_f32_i32_e32 v10, v201
	v_cvt_f32_i32_e32 v9, v202
	v_cvt_f32_i32_e32 v8, v203
	v_cvt_f32_i32_e32 v1, v204
	v_dual_mov_b32 v41, s17 :: v_dual_mov_b32 v4, s62
	v_dual_mov_b32 v3, v44 :: v_dual_and_b32 v160, 15, v221
	s_waitcnt vmcnt(6)
	v_cvt_f32_i32_e32 v82, v16
	v_cvt_f32_i32_e32 v16, v18
	v_cvt_f32_i32_e32 v14, v19
	s_waitcnt vmcnt(5)
	v_cvt_f32_i32_e32 v6, v20
	v_cvt_f32_i32_e32 v20, v21
	v_cvt_f32_i32_e32 v19, v22
	v_cvt_f32_i32_e32 v18, v23
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[21:24], off, off offset:32
	scratch_load_b128 v[25:28], off, off offset:48
	v_cvt_f32_i32_e32 v17, v17
	s_waitcnt vmcnt(6)
	v_cvt_f32_i32_e32 v13, v33
	v_cvt_f32_i32_e32 v12, v34
	v_cvt_f32_i32_e32 v11, v35
	s_waitcnt vmcnt(5)
	v_cvt_f32_i32_e32 v2, v36
	v_cvt_f32_i32_e32 v36, v192
	v_cvt_f32_i32_e32 v35, v193
	v_cvt_f32_i32_e32 v33, v195
	v_cvt_f32_i32_e32 v34, v200
	s_waitcnt vmcnt(1)
	v_cvt_f32_i32_e32 v86, v21
	v_cvt_f32_i32_e32 v85, v22
	v_cvt_f32_i32_e32 v83, v23
	v_cvt_f32_i32_e32 v84, v24
	s_waitcnt vmcnt(0)
	v_cvt_f32_i32_e32 v31, v25
	v_cvt_f32_i32_e32 v30, v26
	v_cvt_f32_i32_e32 v29, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v27, v32
	v_cvt_f32_i32_e32 v23, v37
	v_cvt_f32_i32_e32 v22, v38
	v_cvt_f32_i32_e32 v21, v39
	v_cvt_f32_i32_e32 v32, v194
	v_cvt_f32_i32_e32 v38, v197
	v_cvt_f32_i32_e32 v39, v198
	v_cvt_f32_i32_e32 v37, v199
	v_cvt_f32_i32_e32 v26, v205
	v_cvt_f32_i32_e32 v25, v206
	v_cvt_f32_i32_e32 v24, v207
.LBB0_7:                                ; %._crit_edge
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshlrev_b32_e32 v43, 5, v221
	v_and_b32_e32 v45, 0xf0, v221
	v_and_b32_e32 v42, 28, v42
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s69, s9, 0xffff
	s_mov_b32 s71, 0x31027000
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v43, 32, v43
	v_lshl_add_u32 v44, v45, 2, 0
	s_mov_b32 s70, 0x7ffffffe
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_mov_b32 s68, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_add3_u32 v46, v44, v43, v42
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v42, s0, s62, v160
	v_add_co_ci_u32_e64 v43, null, s63, 0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v44, 1, v42
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[42:43]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[76:77], v[42:43]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v42, 16, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v42, s1, s62, v42
	v_add_co_ci_u32_e64 v43, null, s63, 0, s1
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v56, 1, v42
	s_mov_b32 s0, 0x76543210
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[74:75], v[42:43]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[76:77], v[42:43]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v42, 32, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v42, s4, s62, v42
	v_add_co_ci_u32_e64 v43, null, s63, 0, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_lshlrev_b32_e32 v57, 1, v42
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[74:75], v[42:43]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[76:77], v[42:43]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v42, 48, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v42, s6, s62, v42
	v_add_co_ci_u32_e64 v43, null, s63, 0, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[74:75], v[42:43]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[76:77], v[42:43]
	.loc	1 1120 21 is_stmt 1             ; ragged.py:1120:21
	v_or_b32_e32 v43, s16, v221
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v42, 1, v42
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_add_nc_u32_e32 v47, v43, v41
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v41, 0x80000000, v44, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s1, s3
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v43, 0x80000000, v56, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v44, 0x80000000, v57, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	s_clause 0x3
	buffer_load_u16 v41, v41, s[68:71], 0 offen
	buffer_load_u16 v43, v43, s[68:71], 0 offen
	buffer_load_u16 v56, v44, s[68:71], 0 offen
	buffer_load_u16 v57, v42, s[68:71], 0 offen
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_and_b32 s69, s11, 0xffff
	s_mov_b32 s68, s10
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v43, 16, v43
	v_lshlrev_b32_e32 v44, 16, v41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v41, 16, v57
	.loc	1 1119 36                       ; ragged.py:1119:36
	v_lshlrev_b32_e32 v42, 1, v47
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v53, v53, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v117, v113, v41
	.loc	1 1119 36                       ; ragged.py:1119:36
	buffer_load_u16 v42, v42, s[68:71], 0 offen
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v42, 16, v42
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v46, v42
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v42, 16, v56
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v58, v129, v42 :: v_dual_mul_f32 v55, v55, v43
	v_mul_f32_e32 v48, v48, v44
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v45, v45, 1, 0
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v57, v52, v43
	v_mul_f32_e32 v61, v134, v42
	v_mul_f32_e32 v64, v0, v42
	v_dual_mul_f32 v63, v135, v42 :: v_dual_mul_f32 v116, v114, v41
	v_mul_f32_e32 v0, v115, v41
	v_mul_f32_e32 v118, v112, v41
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[112:115], v45
	ds_load_b128 v[124:127], v45 offset:16
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v49, v49, v44
	v_mul_f32_e32 v50, v50, v44
	v_dual_mul_f32 v51, v51, v44 :: v_dual_mul_f32 v56, v54, v43
	v_mul_f32_e32 v128, v159, v42
	v_mul_f32_e32 v129, v158, v42
	v_mul_f32_e32 v135, v156, v42
	v_mul_f32_e32 v111, v111, v41
	v_mul_f32_e32 v107, v107, v41
	v_mul_f32_e32 v95, v95, v41
	v_dual_mul_f32 v131, v131, v44 :: v_dual_mul_f32 v100, v100, v42
	v_mul_f32_e32 v99, v99, v42
	v_dual_mul_f32 v103, v103, v41 :: v_dual_mul_f32 v76, v76, v42
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v72, v72, v44 :: v_dual_mul_f32 v29, v29, v42
	v_mul_f32_e32 v71, v71, v44
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v52, v51, v112 :: v_dual_mul_f32 v119, v48, v114
	v_dual_mul_f32 v54, v50, v113 :: v_dual_mul_f32 v59, v55, v115
	v_mul_f32_e32 v60, v49, v115
	v_mul_f32_e32 v49, v57, v112
	v_dual_mul_f32 v57, v56, v113 :: v_dual_mul_f32 v62, v53, v114
	v_dual_mul_f32 v51, v64, v112 :: v_dual_mul_f32 v58, v58, v113
	v_mul_f32_e32 v61, v61, v115
	v_dual_mul_f32 v63, v63, v114 :: v_dual_mul_f32 v48, v118, v112
	v_dual_mul_f32 v50, v117, v113 :: v_dual_mul_f32 v53, v116, v115
	v_dual_mul_f32 v56, v0, v114 :: v_dual_mul_f32 v55, v147, v44
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v0, v148, v44 :: v_dual_mul_f32 v113, v154, v43
	v_dual_mul_f32 v64, v146, v44 :: v_dual_mul_f32 v115, v151, v43
	v_mul_f32_e32 v112, v145, v44
	v_mul_f32_e32 v114, v153, v43
	v_mul_f32_e32 v116, v152, v43
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v134, v157, v42 :: v_dual_mul_f32 v121, v64, v125
	v_mul_f32_e32 v145, v110, v41
	v_dual_mul_f32 v109, v109, v41 :: v_dual_mul_f32 v120, v112, v124
	v_dual_mul_f32 v108, v108, v41 :: v_dual_mul_f32 v115, v115, v124
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v122, v55, v126 :: v_dual_mul_f32 v123, v0, v127
	v_dual_mul_f32 v116, v116, v125 :: v_dual_mul_f32 v117, v114, v126
	v_mul_f32_e32 v118, v113, v127
	v_dual_mul_f32 v110, v135, v124 :: v_dual_mul_f32 v113, v129, v126
	v_mul_f32_e32 v112, v134, v125
	v_mul_f32_e32 v114, v128, v127
	v_dual_mul_f32 v64, v108, v124 :: v_dual_mul_f32 v111, v111, v127
	v_dual_mul_f32 v108, v109, v125 :: v_dual_mul_f32 v129, v155, v42
	v_mul_f32_e32 v109, v145, v126
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v125, v144, v44
	v_dual_mul_f32 v126, v143, v44 :: v_dual_mul_f32 v135, v140, v43
	v_dual_mul_f32 v127, v142, v44 :: v_dual_mul_f32 v134, v141, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[141:144], v45 offset:512
	ds_load_b128 v[145:148], v45 offset:528
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v0, v149, v44
	v_mul_f32_e32 v124, v150, v43
	v_dual_mul_f32 v149, v139, v43 :: v_dual_mul_f32 v150, v106, v42
	v_mul_f32_e32 v106, v105, v42
	v_mul_f32_e32 v96, v96, v41
	v_mul_f32_e32 v105, v104, v42
	v_dual_mul_f32 v97, v97, v41 :: v_dual_mul_f32 v98, v98, v42
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v35, v35, v41
	v_mul_f32_e32 v153, v32, v41
	v_dual_mul_f32 v83, v83, v42 :: v_dual_mul_f32 v80, v80, v43
	v_dual_mul_f32 v39, v39, v41 :: v_dual_mul_f32 v2, v2, v42
	v_mul_f32_e32 v151, v84, v42
	v_mul_f32_e32 v73, v73, v44
	v_mul_f32_e32 v31, v31, v42
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v55, v0, v141 :: v_dual_mul_f32 v0, v133, v44
	v_mul_f32_e32 v128, v124, v141
	v_mul_f32_e32 v124, v129, v141
	v_mul_f32_e32 v104, v107, v141
	v_dual_mul_f32 v139, v127, v142 :: v_dual_mul_f32 v140, v126, v143
	v_dual_mul_f32 v126, v135, v143 :: v_dual_mul_f32 v105, v105, v142
	v_mul_f32_e32 v127, v134, v144
	v_dual_mul_f32 v106, v106, v143 :: v_dual_mul_f32 v95, v95, v142
	v_dual_mul_f32 v107, v150, v144 :: v_dual_mul_f32 v96, v96, v143
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v129, v132, v44
	v_dual_mul_f32 v134, v130, v44 :: v_dual_mul_f32 v135, v137, v43
	v_mul_f32_e32 v137, v136, v43
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v143, v77, v43 :: v_dual_mul_f32 v132, v0, v146
	.loc	1 1124 41                       ; ragged.py:1124:41
	v_add_lshl_u32 v0, v47, s72, 1
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v97, v97, v144 :: v_dual_mul_f32 v130, v138, v43
	v_mul_f32_e32 v141, v125, v144
	v_mul_f32_e32 v125, v149, v142
	.loc	1 1124 41                       ; ragged.py:1124:41
	buffer_load_u16 v0, v0, s[68:71], 0 offen
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v138, v102, v41
	v_mul_f32_e32 v142, v101, v41
	v_dual_mul_f32 v144, v65, v41 :: v_dual_mul_f32 v101, v99, v147
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v133, v129, v147 :: v_dual_mul_f32 v136, v131, v148
	v_dual_mul_f32 v129, v130, v146 :: v_dual_mul_f32 v130, v135, v147
	v_mul_f32_e32 v131, v137, v148
	v_dual_mul_f32 v137, v134, v145 :: v_dual_mul_f32 v100, v100, v146
	v_mul_f32_e32 v99, v142, v148
	v_dual_mul_f32 v102, v98, v148 :: v_dual_mul_f32 v77, v103, v146
	v_dual_mul_f32 v98, v138, v147 :: v_dual_mul_f32 v103, v143, v145
	v_mul_f32_e32 v65, v76, v145
	v_dual_mul_f32 v76, v144, v145 :: v_dual_mul_f32 v149, v86, v42
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v47, v92, v44 :: v_dual_mul_f32 v138, v90, v43
	v_mul_f32_e32 v146, v89, v43
	v_mul_f32_e32 v147, v88, v43
	v_mul_f32_e32 v148, v87, v43
	v_mul_f32_e32 v150, v85, v42
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s68, s72, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s69, s65, 0xffff
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s68, s72, s68
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v27, v27, v42
	v_mul_f32_e32 v17, v17, v43
	v_mul_f32_e32 v13, v13, v42
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s73, s68, 1
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s68, s64
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v7, v7, v44
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v1, v1, v41 :: v_dual_lshlrev_b32 v0, 16, v0
	.loc	1 1127 21                       ; ragged.py:1127:21
	ds_store_b32 v46, v0
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v0, v94, v44
	v_mul_f32_e32 v46, v93, v44
	v_mul_f32_e32 v94, v91, v44
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[90:93], v45
	ds_load_b128 v[142:145], v45 offset:16
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v36, v36, v41
	v_mul_f32_e32 v152, v33, v41
	v_mul_f32_e32 v30, v30, v42
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v40, v40, v41 :: v_dual_mul_f32 v135, v94, v90
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v134, v47, v91 :: v_dual_mul_f32 v87, v138, v90
	v_dual_mul_f32 v94, v46, v93 :: v_dual_mul_f32 v83, v83, v92
	v_dual_mul_f32 v89, v0, v92 :: v_dual_mul_f32 v88, v146, v91
	v_dual_mul_f32 v85, v147, v93 :: v_dual_mul_f32 v84, v149, v90
	v_mul_f32_e32 v33, v35, v91
	v_dual_mul_f32 v46, v150, v91 :: v_dual_mul_f32 v35, v152, v93
	v_mul_f32_e32 v32, v36, v90
	v_mul_f32_e32 v36, v153, v92
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v0, v74, v44
	v_mul_f32_e32 v74, v81, v43
	v_mul_f32_e32 v81, v79, v43
	v_dual_mul_f32 v138, v78, v43 :: v_dual_mul_f32 v147, v37, v41
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v146, v38, v41 :: v_dual_mul_f32 v79, v80, v143
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v91, v72, v143
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v28, v28, v42
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v86, v148, v92 :: v_dual_mul_f32 v47, v151, v93
	v_dual_mul_f32 v90, v71, v142 :: v_dual_mul_f32 v93, v0, v145
	v_mul_f32_e32 v92, v73, v144
	v_dual_mul_f32 v78, v74, v142 :: v_dual_mul_f32 v37, v29, v144
	v_mul_f32_e32 v80, v81, v144
	v_dual_mul_f32 v74, v138, v145 :: v_dual_mul_f32 v71, v31, v142
	v_dual_mul_f32 v73, v30, v143 :: v_dual_mul_f32 v38, v28, v145
	v_dual_mul_f32 v28, v40, v142 :: v_dual_mul_f32 v29, v146, v143
	v_mul_f32_e32 v30, v39, v144
	v_mul_f32_e32 v31, v147, v145
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v39, v70, v44
	v_dual_mul_f32 v40, v69, v44 :: v_dual_mul_f32 v69, v82, v43
	v_mul_f32_e32 v70, v11, v42
	v_mul_f32_e32 v72, v10, v41
	v_mul_f32_e32 v82, v9, v41
	v_mul_f32_e32 v138, v8, v41
	.loc	1 1127 21                       ; ragged.py:1127:21
	ds_load_b128 v[8:11], v45 offset:512
	ds_load_b128 v[142:145], v45 offset:528
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v0, v75, v44
	v_mul_f32_e32 v68, v68, v44
	v_mul_f32_e32 v34, v34, v41
	v_mul_f32_e32 v16, v16, v43
	v_mul_f32_e32 v6, v6, v43
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp4:
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v81, v39, v11
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v14, v14, v43 :: v_dual_mul_f32 v75, v40, v10
	v_mul_f32_e32 v12, v12, v42
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v146, v0, v8
	v_mul_f32_e32 v147, v69, v8
	v_mul_f32_e32 v27, v27, v8
	v_dual_mul_f32 v148, v34, v8 :: v_dual_mul_f32 v45, v17, v9
	v_dual_mul_f32 v0, v68, v9 :: v_dual_mul_f32 v69, v14, v11
	v_dual_mul_f32 v34, v13, v9 :: v_dual_mul_f32 v39, v12, v10
	v_dual_mul_f32 v8, v72, v9 :: v_dual_mul_f32 v13, v15, v44
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v15, v19, v43
	v_dual_mul_f32 v19, v21, v42 :: v_dual_mul_f32 v12, v66, v44
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v68, v16, v10
	v_mul_f32_e32 v9, v82, v10
	v_dual_mul_f32 v10, v138, v11 :: v_dual_mul_f32 v17, v23, v42
	v_mul_f32_e32 v23, v13, v145
	v_dual_mul_f32 v19, v19, v145 :: v_dual_mul_f32 v12, v12, v144
	v_mul_f32_e32 v13, v2, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v2, 0xbfb8aa3b, v146 :: v_dual_mul_f32 v21, v25, v41
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v40, v70, v11 :: v_dual_mul_f32 v1, v1, v142
	v_mul_f32_e32 v66, v6, v142
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v11, v67, v44 :: v_dual_mul_f32 v16, v18, v43
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v67, v7, v142 :: v_dual_mul_f32 v14, v20, v43
	v_mul_f32_e32 v15, v15, v144
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v11, v11, v143 :: v_dual_fmac_f32 v2, 0xbfb8aa3b, v146
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v2, v2, v6
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v2, 1.0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v6, null, v2, v2, v146
	v_rcp_f32_e32 v7, v6
	.loc	1 1117 21 is_stmt 1             ; ragged.py:1117:21
	v_mul_f32_e32 v18, v22, v42
	v_mul_f32_e32 v22, v24, v41
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v24, v17, v143
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v6, v7, 1.0
	v_fmac_f32_e32 v7, v17, v7
	v_div_scale_f32 v17, vcc_lo, v146, v2, v146
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v20, v26, v41
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v26, v21, v144
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v21, v17, v7
	v_fma_f32 v25, -v6, v21, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v25, v7
	v_fma_f32 v6, -v6, v21, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v6, v6, v7, v21
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_dual_mul_f32 v7, 0xbfb8aa3b, v11 :: v_dual_mul_f32 v22, v22, v145
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	.loc	1 1127 21 is_stmt 1             ; ragged.py:1127:21
	v_mul_f32_e32 v16, v16, v145
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v11
	v_exp_f32_e32 v7, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v7, v7, v17
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v18, v18, v144 :: v_dual_add_f32 v7, 1.0, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, null, v7, v7, v11
	v_rcp_f32_e32 v21, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v17, v21, 1.0
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v14, v14, v143 :: v_dual_fmac_f32 v21, v25, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, vcc_lo, v11, v7, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v20, v20, v143 :: v_dual_mul_f32 v41, v25, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v17, v41, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v21
	v_fma_f32 v17, -v17, v41, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v17, v17, v21, v41
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_mul_f32_e32 v21, 0xbfb8aa3b, v12
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v12
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v21, v21, v12
	v_rcp_f32_e32 v41, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v25, v41, 1.0
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, vcc_lo, v12, v21, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v43, v42, v41
	v_fma_f32 v44, -v25, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, v44, v41
	v_div_fixup_f32 v2, v6, v2, v146
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v6, 0xbfb8aa3b, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v25, v43, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v55, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v41, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v6, v6
	v_ldexp_f32 v6, v6, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v41, 1.0, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v6, null, v41, v41, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v6
	v_fma_f32 v43, -v6, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v23, v41, v23
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v6, v44, v43
	v_fmac_f32_e32 v44, v70, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v6, -v6, v44, v43
	v_div_fmas_f32 v42, v6, v42, v44
	v_div_fixup_f32 v6, v17, v7, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v7, 0xbfb8aa3b, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v7, v7
	v_ldexp_f32 v7, v7, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v7, null, v17, v17, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v11, v7
	v_fma_f32 v43, -v7, v11, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v11, v43, v11
	v_div_scale_f32 v43, vcc_lo, v147, v17, v147
	v_mul_f32_e32 v44, v43, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v7, v44, v43
	v_fmac_f32_e32 v44, v70, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v7, -v7, v44, v43
	v_div_fmas_f32 v43, v7, v11, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v11, 0xbfb8aa3b, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v7, v25, v21, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v133, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v14
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v11, v11, v12
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v11, null, v21, v21, v14
	v_rcp_f32_e32 v12, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v11, v12, 1.0
	v_fmac_f32_e32 v12, v25, v12
	v_div_scale_f32 v25, vcc_lo, v14, v21, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v25, v12
	v_fma_f32 v70, -v11, v44, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v70, v12
	v_fma_f32 v11, -v11, v44, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v25, v11, v12, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v12, 0xbfb8aa3b, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v11, v42, v41, v23
	v_div_fixup_f32 v14, v25, v21, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_mul_f32_e32 v21, 0xbfb8aa3b, v27
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v12, v12
	v_ldexp_f32 v12, v12, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v12, null, v23, v23, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v41, v12
	v_fma_f32 v42, -v12, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, vcc_lo, v15, v23, v15
	v_mul_f32_e32 v44, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v12, v44, v42
	v_fmac_f32_e32 v44, v70, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v12, v44, v42
	v_div_fmas_f32 v41, v12, v41, v44
	v_div_fixup_f32 v12, v43, v17, v147
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v17, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v15, v41, v23, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v23, 0xbfb8aa3b, v24
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v16
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v17, v17, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v17, v17, v16
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v16, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v44, v43
	v_fma_f32 v72, -v42, v70, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v72, v43
	v_fma_f32 v42, -v42, v70, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v42, v42, v43, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v17, v42, v17, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v16, 0xbfb8aa3b, v18 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v27
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v21, v21, v27
	v_rcp_f32_e32 v43, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v25, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v27, v21, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v44, v43
	v_fma_f32 v72, -v25, v70, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v72, v43
	v_fma_f32 v25, -v25, v70, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v25, v25, v43, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v23, v23, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, null, v23, v23, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v41
	v_fma_f32 v44, -v41, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v24, v23, v24
	v_mul_f32_e32 v70, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v41, v70, v44
	v_fmac_f32_e32 v70, v72, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v70, v44
	v_div_fmas_f32 v41, v41, v43, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v18
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v16, null, v42, v42, v18
	v_rcp_f32_e32 v43, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v16, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v18, v42, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v44, v43
	v_fma_f32 v72, -v16, v70, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v72, v43
	v_fma_f32 v16, -v16, v70, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v43, v16, v43, v70
	v_div_fixup_f32 v16, v25, v21, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v21, 0xbfb8aa3b, v19
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v19
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v21, null, v25, v25, v19
	v_rcp_f32_e32 v27, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v21, v27, 1.0
	v_fmac_f32_e32 v27, v44, v27
	v_div_scale_f32 v44, vcc_lo, v19, v25, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v44, v27
	v_fma_f32 v72, -v21, v70, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v72, v27
	v_fma_f32 v21, -v21, v70, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v27, v21, v27, v70
	v_div_fixup_f32 v21, v41, v23, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v23, 0xbfb8aa3b, v148
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v27, v25, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v19, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v27, v102, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v148
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v23, v23, v24
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v24, null, v23, v23, v148
	v_rcp_f32_e32 v41, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v24, v41, 1.0
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v44, vcc_lo, v148, v23, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v44, v41
	v_fma_f32 v72, -v24, v70, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v72, v41
	v_fma_f32 v24, -v24, v70, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v24, v41, v70
	v_div_fixup_f32 v24, v43, v42, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v18, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v20
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v18, v18, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v18, v18, v20
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v20, v18, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v44, v43
	v_fma_f32 v72, -v42, v70, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v72, v43
	v_fma_f32 v42, -v42, v70, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v42, v42, v43, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v19, v19, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v25
	v_fma_f32 v44, -v25, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v26, v19, v26
	v_mul_f32_e32 v70, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v25, v70, v44
	v_fmac_f32_e32 v70, v72, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v25, v70, v44
	v_div_fmas_f32 v43, v25, v43, v70
	v_div_fixup_f32 v25, v41, v23, v148
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v23, 0xbfb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v23, v23, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, null, v23, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v41
	v_fma_f32 v70, -v41, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v70, v44
	v_div_scale_f32 v70, vcc_lo, v22, v23, v22
	v_mul_f32_e32 v72, v70, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v41, v72, v70
	v_fmac_f32_e32 v72, v82, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v72, v70
	v_div_fmas_f32 v70, v41, v44, v72
	v_div_fixup_f32 v41, v42, v18, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v18, 0xbfb8aa3b, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v18, v18, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v20, null, v18, v18, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v20
	v_fma_f32 v44, -v20, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v44, v42
	v_div_scale_f32 v44, vcc_lo, v135, v18, v135
	v_mul_f32_e32 v72, v44, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v20, v72, v44
	v_fmac_f32_e32 v72, v82, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v20, -v20, v72, v44
	v_div_fixup_f32 v44, v43, v19, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v19, 0xbfb8aa3b, v134
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v20, v20, v42, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v18, v20, v18, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v20, 0xbfb8aa3b, v89
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v134
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v19, v19, v26
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v19, v19, v134
	v_rcp_f32_e32 v42, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v26, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v134, v19, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v43, v42
	v_fma_f32 v82, -v26, v72, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v82, v42
	v_fma_f32 v26, -v26, v72, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v26, v26, v42, v72
	v_div_fixup_f32 v72, v70, v23, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v94
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v19, v26, v19, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v23, null, v22, v22, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v23
	v_fma_f32 v43, -v23, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v94, v22, v94
	v_mul_f32_e32 v70, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v23, v70, v43
	v_fmac_f32_e32 v70, v82, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v23, v70, v43
	v_div_fmas_f32 v23, v23, v42, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v89
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v20, v20, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v20, null, v42, v42, v89
	v_rcp_f32_e32 v43, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v20, v43, 1.0
	v_fmac_f32_e32 v43, v70, v43
	v_div_scale_f32 v70, vcc_lo, v89, v42, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v82, v70, v43
	v_fma_f32 v135, -v20, v82, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v135, v43
	v_fma_f32 v20, -v20, v82, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v43, v20, v43, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v20, 0xbfb8aa3b, v90
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v90
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v20, v20, v26
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v20, null, v26, v26, v90
	v_rcp_f32_e32 v70, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v20, v70, 1.0
	v_fmac_f32_e32 v70, v82, v70
	v_div_scale_f32 v82, vcc_lo, v90, v26, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v134, v82, v70
	v_fma_f32 v135, -v20, v134, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v134, v135, v70
	v_fma_f32 v20, -v20, v134, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v70, v20, v70, v134
	v_div_fixup_f32 v20, v23, v22, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v91
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v91
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v22, v23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v82, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v22, null, v82, v82, v91
	v_rcp_f32_e32 v23, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v22, v23, 1.0
	v_fmac_f32_e32 v23, v94, v23
	v_div_scale_f32 v94, vcc_lo, v91, v82, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v134, v94, v23
	v_fma_f32 v135, -v22, v134, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v134, v135, v23
	v_fma_f32 v22, -v22, v134, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v94, v22, v23, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v92
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v92
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v22, v23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v134, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v22, null, v134, v134, v92
	v_rcp_f32_e32 v23, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v135, -v22, v23, 1.0
	v_fmac_f32_e32 v23, v135, v23
	v_div_scale_f32 v135, vcc_lo, v92, v134, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v135, v23
	v_fma_f32 v142, -v22, v138, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v142, v23
	v_fma_f32 v22, -v22, v138, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v135, v22, v23, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v93
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v93
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v22, v23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v138, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v22, null, v138, v138, v93
	v_rcp_f32_e32 v23, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v142, -v22, v23, 1.0
	v_fmac_f32_e32 v23, v142, v23
	v_div_scale_f32 v142, vcc_lo, v93, v138, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v143, v142, v23
	v_fma_f32 v144, -v22, v143, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v143, v144, v23
	v_fma_f32 v22, -v22, v143, v142
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v142, v22, v23, v143
	v_div_fixup_f32 v23, v70, v26, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v70, 0xbfb8aa3b, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v94, v82, v91
	v_div_fixup_f32 v22, v43, v42, v89
	v_div_fixup_f32 v42, v135, v134, v92
	v_div_fixup_f32 v43, v142, v138, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v0
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v70, v70, v82
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v82, null, v70, v70, v0
	v_rcp_f32_e32 v89, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v82, v89, 1.0
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v0, v70, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v92, -v82, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v89
	v_fma_f32 v82, -v82, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v82, v89, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v89, 0xbfb8aa3b, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v70, v82, v70, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v89
	v_mul_f32_e32 v0, 0xbfb8aa3b, v81
	v_cndmask_b32_e64 v89, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v90, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v89, 0xbfb8aa3b, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v89, v89
	v_ldexp_f32 v89, v89, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v89, 1.0, v89
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v90, null, v89, v89, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v91, v90
	v_fma_f32 v92, -v90, v91, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v75, v89, v75
	v_mul_f32_e32 v93, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v90, v93, v92
	v_fmac_f32_e32 v93, v94, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v90, v93, v92
	v_div_fmas_f32 v90, v90, v91, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v81
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v82
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v82, null, v0, v0, v81
	v_rcp_f32_e32 v91, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v82, v91, 1.0
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v81, v0, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v93, v92, v91
	v_fma_f32 v94, -v82, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v91
	v_fma_f32 v82, -v82, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v91, v82, v91, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v82, 0xbfb8aa3b, v67
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v82
	v_cndmask_b32_e64 v82, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v92, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, 0xbfb8aa3b, v67
	v_exp_f32_e32 v82, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v82, v82, v92
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v92, 1.0, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v82, null, v92, v92, v67
	v_rcp_f32_e32 v93, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v82, v93, 1.0
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, vcc_lo, v67, v92, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v134, v94, v93
	v_fma_f32 v135, -v82, v134, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v134, v135, v93
	v_fma_f32 v82, -v82, v134, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v93, v82, v93, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v82, 0xbfb8aa3b, v87
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v82
	v_cndmask_b32_e64 v82, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v94, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, 0xbfb8aa3b, v87
	v_exp_f32_e32 v82, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v82, v82, v94
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v94, 1.0, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v82, null, v94, v94, v87
	v_rcp_f32_e32 v134, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v135, -v82, v134, 1.0
	v_fmac_f32_e32 v134, v135, v134
	v_div_scale_f32 v135, vcc_lo, v87, v94, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v135, v134
	v_fma_f32 v142, -v82, v138, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v142, v134
	v_fma_f32 v82, -v82, v138, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v134, v82, v134, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v82, 0xbfb8aa3b, v88
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v82
	v_cndmask_b32_e64 v82, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v135, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, 0xbfb8aa3b, v88
	v_exp_f32_e32 v82, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v82, v82, v135
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v135, 1.0, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v82, null, v135, v135, v88
	v_rcp_f32_e32 v138, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v142, -v82, v138, 1.0
	v_fmac_f32_e32 v138, v142, v138
	v_div_scale_f32 v142, vcc_lo, v88, v135, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v143, v142, v138
	v_fma_f32 v144, -v82, v143, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v143, v144, v138
	v_fma_f32 v82, -v82, v143, v142
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v138, v82, v138, v143
	v_div_fixup_f32 v82, v90, v89, v75
	v_div_fixup_f32 v89, v91, v0, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v85
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v90, v93, v92, v67
	v_div_fixup_f32 v75, v134, v94, v87
	v_div_fixup_f32 v81, v138, v135, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v57, v57, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v85
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v0, v0, v85
	v_rcp_f32_e32 v87, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v67, v87, 1.0
	v_fmac_f32_e32 v87, v88, v87
	v_div_scale_f32 v88, vcc_lo, v85, v0, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v88, v87
	v_fma_f32 v92, -v67, v91, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v87
	v_fma_f32 v67, -v67, v91, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v67, v67, v87, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v87, 0xbfb8aa3b, v86
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v85, v67, v0, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v87
	v_mul_f32_e32 v0, 0xbfb8aa3b, v74
	v_cndmask_b32_e64 v87, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v88, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v87, v87
	v_ldexp_f32 v87, v87, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v87, 1.0, v87
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v88, null, v87, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v91, v88
	v_fma_f32 v92, -v88, v91, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v86, v87, v86
	v_mul_f32_e32 v93, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v88, v93, v92
	v_fmac_f32_e32 v93, v94, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v88, v93, v92
	v_div_fmas_f32 v88, v88, v91, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v91, 0xbfb8aa3b, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v86, v88, v87, v86
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v91
	v_cndmask_b32_e64 v91, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v92, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, 0xbfb8aa3b, v78
	v_exp_f32_e32 v91, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v91, v91, v92
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v91, 1.0, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v92, null, v91, v91, v78
	v_rcp_f32_e32 v93, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v92, v93, 1.0
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, vcc_lo, v78, v91, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v134, v94, v93
	v_fma_f32 v135, -v92, v134, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v134, v135, v93
	v_fma_f32 v92, -v92, v134, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v92, v92, v93, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v93, 0xbfb8aa3b, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v78, v92, v91, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v93
	v_cndmask_b32_e64 v93, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v94, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v93, 0xbfb8aa3b, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v93, v93
	v_ldexp_f32 v93, v93, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v93, 1.0, v93
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v94, null, v93, v93, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v134, v94
	v_fma_f32 v135, -v94, v134, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v134, v135, v134
	v_div_scale_f32 v135, vcc_lo, v79, v93, v79
	v_mul_f32_e32 v138, v135, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v142, -v94, v138, v135
	v_fmac_f32_e32 v138, v142, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v94, v138, v135
	v_div_fmas_f32 v94, v94, v134, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v134, 0xbfb8aa3b, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v79, v94, v93, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v134
	v_cndmask_b32_e64 v134, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v135, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v134, 0xbfb8aa3b, v80
	v_exp_f32_e32 v134, v134
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v134, v134, v135
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v134, 1.0, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v135, null, v134, v134, v80
	v_rcp_f32_e32 v138, v135
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v142, -v135, v138, 1.0
	v_fmac_f32_e32 v138, v142, v138
	v_div_scale_f32 v142, vcc_lo, v80, v134, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v143, v142, v138
	v_fma_f32 v144, -v135, v143, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v143, v144, v138
	v_fma_f32 v135, -v135, v143, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v135, v135, v138, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v80, v135, v134, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v74
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v0, v0, v74
	v_rcp_f32_e32 v87, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v67, v87, 1.0
	v_fmac_f32_e32 v87, v88, v87
	v_div_scale_f32 v88, vcc_lo, v74, v0, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v88, v87
	v_fma_f32 v92, -v67, v91, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v87
	v_fma_f32 v67, -v67, v91, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v67, v67, v87, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v87, 0xbfb8aa3b, v45
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v87
	v_cndmask_b32_e64 v87, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v88, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v45
	v_exp_f32_e32 v87, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v87, v87, v88
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v87, 1.0, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v88, null, v87, v87, v45
	v_rcp_f32_e32 v91, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v88, v91, 1.0
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v45, v87, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v93, v92, v91
	v_fma_f32 v94, -v88, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v91
	v_fma_f32 v88, -v88, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v91, v88, v91, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v88, 0xbfb8aa3b, v68
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v88
	v_cndmask_b32_e64 v88, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v92, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, 0xbfb8aa3b, v68
	v_exp_f32_e32 v88, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v88, v88, v92
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v92, 1.0, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v88, null, v92, v92, v68
	v_rcp_f32_e32 v93, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v88, v93, 1.0
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, vcc_lo, v68, v92, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v134, v94, v93
	v_fma_f32 v135, -v88, v134, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v134, v135, v93
	v_fma_f32 v88, -v88, v134, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v93, v88, v93, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v88, 0xbfb8aa3b, v69
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v88
	v_cndmask_b32_e64 v88, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v94, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, 0xbfb8aa3b, v69
	v_exp_f32_e32 v88, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v88, v88, v94
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v94, 1.0, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v88, null, v94, v94, v69
	v_rcp_f32_e32 v134, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v135, -v88, v134, 1.0
	v_fmac_f32_e32 v134, v135, v134
	v_div_scale_f32 v135, vcc_lo, v69, v94, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v135, v134
	v_fma_f32 v142, -v88, v138, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v142, v134
	v_fma_f32 v88, -v88, v138, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v134, v88, v134, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v88, 0xbfb8aa3b, v66
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v88
	v_cndmask_b32_e64 v88, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v135, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, 0xbfb8aa3b, v66
	v_exp_f32_e32 v88, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v88, v88, v135
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v135, 1.0, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v88, null, v135, v135, v66
	v_rcp_f32_e32 v138, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v142, -v88, v138, 1.0
	v_fmac_f32_e32 v138, v142, v138
	v_div_scale_f32 v142, vcc_lo, v66, v135, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v143, v142, v138
	v_fma_f32 v144, -v88, v143, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v143, v144, v138
	v_fma_f32 v88, -v88, v143, v142
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v138, v88, v138, v143
	v_div_fixup_f32 v88, v67, v0, v74
	v_div_fixup_f32 v0, v91, v87, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v45, 0xbfb8aa3b, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v74, v93, v92, v68
	v_div_fixup_f32 v91, v138, v135, v66
	v_div_fixup_f32 v87, v134, v94, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v45, v45
	v_ldexp_f32 v45, v45, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v45, v45, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v66
	v_fma_f32 v68, -v66, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v84, v45, v84
	v_mul_f32_e32 v69, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v66, v69, v68
	v_fmac_f32_e32 v69, v92, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v69, v68
	v_div_fmas_f32 v66, v66, v67, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v67, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v84, v66, v45, v84
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_mul_f32_e32 v45, 0xbfb8aa3b, v47
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v46
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v67, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v67, v67, v46
	v_rcp_f32_e32 v69, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v92, v69
	v_div_scale_f32 v92, vcc_lo, v46, v67, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v93, v92, v69
	v_fma_f32 v94, -v68, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v69
	v_fma_f32 v68, -v68, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v68, v68, v69, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v46, v68, v67, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v58, v58, v46 :: v_dual_fmac_f32 v45, 0xbfb8aa3b, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v45, v45, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v45, 1.0, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v45, v45, v47
	v_rcp_f32_e32 v69, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v66, v69, 1.0
	v_fmac_f32_e32 v69, v92, v69
	v_div_scale_f32 v92, vcc_lo, v47, v45, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v93, v92, v69
	v_fma_f32 v94, -v66, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v69
	v_fma_f32 v66, -v66, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v66, v66, v69, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v69, 0xbfb8aa3b, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v47, v66, v45, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	v_mul_f32_e32 v45, 0xbfb8aa3b, v37
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v92, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v69, v69
	v_ldexp_f32 v69, v69, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v92, null, v69, v69, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v93, v92
	v_fma_f32 v94, -v92, v93, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, vcc_lo, v83, v69, v83
	v_mul_f32_e32 v134, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v135, -v92, v134, v94
	v_fmac_f32_e32 v134, v135, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v92, v134, v94
	v_div_fmas_f32 v92, v92, v93, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v93, 0xbfb8aa3b, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v83, v92, v69, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v93
	v_cndmask_b32_e64 v93, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v94, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, 0xbfb8aa3b, v71
	v_exp_f32_e32 v93, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v93, v93, v94
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v93, 1.0, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v94, null, v93, v93, v71
	v_rcp_f32_e32 v134, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v135, -v94, v134, 1.0
	v_fmac_f32_e32 v134, v135, v134
	v_div_scale_f32 v135, vcc_lo, v71, v93, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v135, v134
	v_fma_f32 v142, -v94, v138, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v142, v134
	v_fma_f32 v94, -v94, v138, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v94, v94, v134, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v134, 0xbfb8aa3b, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v92, v94, v93, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v134
	v_cndmask_b32_e64 v134, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v135, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v134, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v134, v134
	v_ldexp_f32 v134, v134, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v134, 1.0, v134
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v135, null, v134, v134, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v138, v135
	v_fma_f32 v142, -v135, v138, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v142, v138
	v_div_scale_f32 v142, vcc_lo, v73, v134, v73
	v_mul_f32_e32 v143, v142, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v144, -v135, v143, v142
	v_fmac_f32_e32 v143, v144, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v135, -v135, v143, v142
	v_div_fmas_f32 v135, v135, v138, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v37
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v45, v45, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v45, 1.0, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v45, v45, v37
	v_rcp_f32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v66, v67, 1.0
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v37, v45, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v68, v67
	v_fma_f32 v71, -v66, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v71, v67
	v_fma_f32 v66, -v66, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v66, v66, v67, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v67, 0xbfb8aa3b, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v37, v66, v45, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v113, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v38
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v67, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v67, v67, v38
	v_rcp_f32_e32 v69, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v71, v69
	v_div_scale_f32 v71, vcc_lo, v38, v67, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v93, v71, v69
	v_div_fixup_f32 v73, v135, v134, v73
	v_fma_f32 v94, -v68, v93, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v69
	v_fma_f32 v68, -v68, v93, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v68, v68, v69, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v69, 0xbfb8aa3b, v34
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v34
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v69, v69, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v69, v69, v34
	v_rcp_f32_e32 v93, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v71, v93, 1.0
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, vcc_lo, v34, v69, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v134, v94, v93
	v_fma_f32 v135, -v71, v134, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v134, v135, v93
	v_fma_f32 v71, -v71, v134, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v71, v71, v93, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v93, 0xbfb8aa3b, v39
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v93
	v_cndmask_b32_e64 v93, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v94, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, 0xbfb8aa3b, v39
	v_exp_f32_e32 v93, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v93, v93, v94
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v93, 1.0, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v94, null, v93, v93, v39
	v_rcp_f32_e32 v134, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v135, -v94, v134, 1.0
	v_fmac_f32_e32 v134, v135, v134
	v_div_scale_f32 v135, vcc_lo, v39, v93, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v135, v134
	v_fma_f32 v142, -v94, v138, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v142, v134
	v_fma_f32 v94, -v94, v138, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v94, v94, v134, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v134, 0xbfb8aa3b, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v93, v94, v93, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v134
	v_cndmask_b32_e64 v134, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v135, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v134, 0xbfb8aa3b, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v134, v134
	v_ldexp_f32 v134, v134, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v134, 1.0, v134
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v135, null, v134, v134, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v138, v135
	v_fma_f32 v142, -v135, v138, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v142, v138
	v_div_scale_f32 v142, vcc_lo, v40, v134, v40
	v_mul_f32_e32 v143, v142, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v144, -v135, v143, v142
	v_fmac_f32_e32 v143, v144, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v135, -v135, v143, v142
	v_div_fixup_f32 v142, v71, v69, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v34, 0xbfb8aa3b, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v135, v135, v138, v143
	v_div_fixup_f32 v138, v68, v67, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v105, v142
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v94, v135, v134, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v13
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v34, v34, v38
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, null, v34, v34, v13
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v13, v34, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v40, v39
	v_fma_f32 v66, -v38, v45, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v66, v39
	v_fma_f32 v38, -v38, v45, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v39, 0xbfb8aa3b, v32
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v32
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v39, v39, v40
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v39, 1.0, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v39, v39, v32
	v_rcp_f32_e32 v45, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v40, v45, 1.0
	v_fmac_f32_e32 v45, v66, v45
	v_div_scale_f32 v66, vcc_lo, v32, v39, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v66, v45
	v_fma_f32 v68, -v40, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v45
	v_fma_f32 v40, -v40, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v40, v40, v45, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v45, 0xbfb8aa3b, v33
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v33
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v45, v45, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v45, 1.0, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v45, v45, v33
	v_rcp_f32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v66, v67, 1.0
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v33, v45, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v68, v67
	v_fma_f32 v71, -v66, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v71, v67
	v_fma_f32 v66, -v66, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v66, v66, v67, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v67, 0xbfb8aa3b, v35
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v35
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v67, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v67, v67, v35
	v_rcp_f32_e32 v69, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v71, v69
	v_div_scale_f32 v71, vcc_lo, v35, v67, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v134, v71, v69
	v_fma_f32 v135, -v68, v134, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v134, v135, v69
	v_fma_f32 v68, -v68, v134, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v68, v68, v69, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v69, 0xbfb8aa3b, v36
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v36
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v69, v69, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v69, v69, v36
	v_rcp_f32_e32 v134, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v135, -v71, v134, 1.0
	v_fmac_f32_e32 v134, v135, v134
	v_div_scale_f32 v135, vcc_lo, v36, v69, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v143, v135, v134
	v_fma_f32 v144, -v71, v143, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v143, v144, v134
	v_fma_f32 v71, -v71, v143, v135
	v_div_fixup_f32 v135, v40, v39, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v71, v71, v134, v143
	v_div_fixup_f32 v134, v38, v34, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v13, 0xbfb8aa3b, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v143, v68, v67, v35
	v_div_fixup_f32 v144, v71, v69, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v13, v13
	v_ldexp_f32 v13, v13, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v13, v13, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v34, v32
	v_fma_f32 v35, -v32, v34, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v35, v34
	v_div_scale_f32 v35, vcc_lo, v28, v13, v28
	v_mul_f32_e32 v36, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v32, v36, v35
	v_fmac_f32_e32 v36, v38, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v36, v35
	v_div_fmas_f32 v32, v32, v34, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v34, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v34, v34
	v_ldexp_f32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v34, v34, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v36, v35
	v_fma_f32 v38, -v35, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v36, v38, v36
	v_div_scale_f32 v38, vcc_lo, v29, v34, v29
	v_div_fixup_f32 v33, v66, v45, v33
	v_mul_f32_e32 v39, v38, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v35, v39, v38
	v_fmac_f32_e32 v39, v40, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v35, v39, v38
	v_div_fmas_f32 v35, v35, v36, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v36, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v36, v36
	v_ldexp_f32 v36, v36, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, null, v36, v36, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v38
	v_fma_f32 v40, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v30, v36, v30
	v_mul_f32_e32 v45, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v38, v45, v40
	v_fmac_f32_e32 v45, v66, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v45, v40
	v_div_fmas_f32 v38, v38, v39, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v39, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v39, v39
	v_ldexp_f32 v39, v39, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v39, v39, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v45, v40
	v_fma_f32 v66, -v40, v45, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v66, v45
	v_div_scale_f32 v66, vcc_lo, v31, v39, v31
	v_mul_f32_e32 v67, v66, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v40, v67, v66
	v_fmac_f32_e32 v67, v68, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v40, v67, v66
	v_div_fmas_f32 v40, v40, v45, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v45, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v45, v45
	v_ldexp_f32 v45, v45, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v45, v45, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v66
	v_fma_f32 v68, -v66, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v8, v45, v8
	v_mul_f32_e32 v69, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v66, v69, v68
	v_fmac_f32_e32 v69, v71, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v69, v68
	v_div_fmas_f32 v66, v66, v67, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v67, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v67, v67
	v_ldexp_f32 v67, v67, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v67, v67, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v69, v68
	v_fma_f32 v71, -v68, v69, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v71, v69
	v_div_scale_f32 v71, vcc_lo, v9, v67, v9
	v_mul_f32_e32 v145, v71, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v146, -v68, v145, v71
	v_fmac_f32_e32 v145, v146, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v68, v145, v71
	v_div_fmas_f32 v68, v68, v69, v145
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v69, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v69, v69
	v_ldexp_f32 v69, v69, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v69, v69, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v145, v71
	v_fma_f32 v146, -v71, v145, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v145, v146, v145
	v_div_scale_f32 v146, vcc_lo, v10, v69, v10
	v_mul_f32_e32 v147, v146, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v148, -v71, v147, v146
	v_fmac_f32_e32 v147, v148, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v71, v147, v146
	v_div_fmas_f32 v71, v71, v145, v147
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v145, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v145
	v_cndmask_b32_e64 v145, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v146, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v145, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v145, v145
	v_ldexp_f32 v145, v145, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v145, 1.0, v145
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v146, null, v145, v145, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v147, v146
	v_fma_f32 v148, -v146, v147, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v147, v148, v147
	v_div_scale_f32 v148, vcc_lo, v1, v145, v1
	v_mul_f32_e32 v149, v148, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v150, -v146, v149, v148
	v_fmac_f32_e32 v149, v150, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v146, -v146, v149, v148
	v_div_fixup_f32 v148, v35, v34, v29
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v34, v132, v6 :: v_dual_mul_f32 v35, v117, v80
	v_mul_f32_e32 v29, v114, v138
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v146, v146, v147, v149
	v_div_fixup_f32 v149, v38, v36, v30
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v139, v70
	v_mul_f32_e32 v70, v110, v92
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v151, v66, v45, v8
	v_div_fixup_f32 v1, v146, v145, v1
	v_div_fixup_f32 v146, v68, v67, v9
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v67, v52, v18 :: v_dual_mul_f32 v52, v54, v19
	v_mul_f32_e32 v9, v60, v20
	v_dual_mul_f32 v45, v121, v26 :: v_dual_mul_f32 v66, v120, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v147, v32, v13, v28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v136, v11
	v_mul_f32_e32 v32, v119, v22
	v_mul_f32_e32 v54, v137, v90
	v_mul_f32_e32 v11, v141, v89
	v_mul_f32_e32 v13, v140, v82
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v2, |v67|, |v52|
	v_max3_f32 v6, |v9|, |v66|, |v45|
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v145, v71, v69, v10
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v10, v123, v43
	v_mul_f32_e32 v22, v122, v42
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v18, |v54|, |v34|, |v7|
	v_max3_f32 v2, v2, |v32|, v6
	v_max3_f32 v6, |v38|, |v13|, |v11|
.Ltmp8:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v26, v101, v24
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_fixup_f32 v150, v40, v39, v31
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v39, v129, v14 :: v_dual_mul_f32 v14, v130, v15
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v6, v18, |v8|
.Ltmp10:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v15, v131, v17
	v_mul_f32_e32 v17, v98, v44
	v_mul_f32_e32 v44, v56, v144
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v56, 1, v161
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v18, |v22|, |v10|, |v55|
.Ltmp13:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v49, v75
	v_dual_mul_f32 v49, v116, v79 :: v_dual_mul_f32 v68, v115, v78
	v_mul_f32_e32 v36, v62, v86
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v2, v18, v6
.Ltmp15:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v59, v85
	v_mul_f32_e32 v59, v103, v91
	v_dual_mul_f32 v20, v127, v87 :: v_dual_mul_f32 v23, v126, v74
	v_mul_f32_e32 v43, v125, v0
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v69|, |v57|
	v_max3_f32 v6, |v18|, |v68|, |v49|
.Ltmp17:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v128, v12
	v_mul_f32_e32 v19, v118, v88
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v12, |v59|, |v39|, |v14|
.Ltmp19:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v28, v61, v47
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, v0, |v36|, v6
	v_max3_f32 v6, |v43|, |v23|, |v20|
.Ltmp21:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v71, v51, v84
	v_mul_f32_e32 v51, v112, v73
	v_mul_f32_e32 v42, v100, v21
	v_mul_f32_e32 v40, v63, v83
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v6, v12, |v15|
	v_max3_f32 v12, |v35|, |v19|, |v60|
.Ltmp23:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v61, v65, v134
	v_dual_mul_f32 v30, v107, v94 :: v_dual_mul_f32 v31, v106, v93
	v_mul_f32_e32 v62, v124, v16
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, v0, v12, v6
	v_max_f32_e64 v6, |v71|, |v58|
	v_max3_f32 v12, |v28|, |v70|, |v51|
	v_max3_f32 v16, |v61|, |v42|, |v26|
.Ltmp25:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v65, v104, v25
	v_mul_f32_e32 v25, v53, v143
	v_mul_f32_e32 v63, v50, v33
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v6, |v40|, v12
	v_max3_f32 v12, |v46|, |v31|, |v30|
.Ltmp27:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v73, v48, v135
	v_mul_f32_e32 v53, v108, v148
	v_mul_f32_e32 v47, v77, v41
	v_mul_f32_e32 v24, v97, v145
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v12, v12, v16, |v27|
	v_max3_f32 v16, |v37|, |v29|, |v62|
.Ltmp29:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v33, v96, v146 :: v_dual_mul_f32 v50, v95, v151
	v_mul_f32_e32 v21, v111, v150
	v_mul_f32_e32 v41, v109, v149
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v6, v16, v12
.Ltmp31:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v12, v99, v72
	v_mul_f32_e32 v72, v64, v147
	v_mul_f32_e32 v64, v76, v1
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v1, |v73|, |v63|
.Ltmp33:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v86.h, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v16, |v25|, |v72|, |v53|
	v_max3_f32 v48, |v64|, |v47|, |v17|
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v1, v1, |v44|, v16
	v_max3_f32 v16, |v50|, |v33|, |v24|
	v_max3_f32 v16, v16, v48, |v12|
	v_max3_f32 v48, |v41|, |v21|, |v65|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max3_f32 v1, v1, v48, v16
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v48, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v48, v48, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v16, v16, v16
	v_max_f32_e32 v75, v0, v48
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v0, v6, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v74, v2, v16
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v16, 0x60, v221
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_max_f32_e32 v76, v6, v0
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v0, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v6, 8, v221
	s_mov_b32 s0, 0xc1000000
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v77, v1, v0 :: v_dual_and_b32 v0, 3, v221
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 4, v221
	v_lshl_add_u32 v2, v0, 9, 0
	v_lshlrev_b32_e32 v48, 5, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_add_u32 v2, v1, 2, v2
	v_xor_b32_e32 v78, v48, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_add_u32 v2, v6, 4, v2
	v_add3_u32 v2, v2, v56, v78
	v_lshl_add_u32 v56, v1, 6, 0
	ds_store_b128 v2, v[74:77]
	v_lshlrev_b32_e32 v75, 4, v221
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_or_b32 v2, 0x680, v75, v48
	v_lshrrev_b32_e32 v48, 3, v161
	v_xor_b32_e32 v2, v2, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v2, v56, v48, v2
	ds_load_b128 v[76:79], v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v48, v76
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v76, v76
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v56, v77
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v77, v77, v77 :: v_dual_mov_b32 v74, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v48, v48 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v78, v78
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v56, v56 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v79, v79
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v74, v74 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v48, v48, v48
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v79, v79 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v56, v56, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v48, v76, v48 :: v_dual_max_f32 v79, v79, v79
	v_max_f32_e32 v56, v77, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v76, v48
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v76, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v48, v48, v76
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v76, v56
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v76, v76
	v_max_f32_e32 v56, v56, v76
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v76, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v77, v56
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v76, v76, v76 :: v_dual_max_f32 v77, v77, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v76, v48, v76
	v_dual_max_f32 v48, v74, v74 :: v_dual_max_f32 v77, v56, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v48, v78, v48
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v56, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v56, v56 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v56, v56, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v48, v48, v56
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v56, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v56, v56 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v56, v56, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v78, v48, v56
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v48, v2
	v_mov_b32_dpp v48, v48 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v48, v48, v48
	v_max_f32_e32 v2, v2, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v48, v2
	v_mov_b32_dpp v48, v48 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v48, v48, v48
	v_dual_max_f32 v79, v2, v48 :: v_dual_lshlrev_b32 v2, 3, v6
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v6, 1, v16
	v_add_nc_u32_e32 v48, 0, v161
.Ltmp72:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v16, 5, v16
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v6, v48, v6, v2
	v_lshlrev_b32_e32 v48, 4, v0
	v_lshlrev_b32_e32 v0, 5, v1
	ds_store_b128 v6, v[76:79]
	v_add_nc_u32_e32 v1, 0, v48
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v0, v1, v0, v2
	ds_load_b128 v[76:79], v0
.Ltmp74:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v76, v76
	v_dual_max_f32 v2, v77, v77 :: v_dual_max_f32 v1, v78, v78
	v_max_f32_e32 v6, v79, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v74, 0x2b8cbccc, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v75, 0x2f0, v75
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, 0x2b8cbccc, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v0, null, 0x40e00000, 0x40e00000, v74
	v_rcp_f32_e32 v56, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v0, v56, 1.0
	v_fmac_f32_e32 v56, v76, v56
	v_div_scale_f32 v76, vcc_lo, v74, 0x40e00000, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v77, v76, v56
	v_fma_f32 v78, -v0, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v78, v56
	v_fma_f32 v0, -v0, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v76, v0, v56, v77
	v_div_scale_f32 v0, null, 0x40e00000, 0x40e00000, v1
	v_rcp_f32_e32 v56, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v0, v56, 1.0
	v_fmac_f32_e32 v56, v77, v56
	v_div_scale_f32 v77, vcc_lo, v1, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v77, v56
	v_fma_f32 v79, -v0, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v56
	v_fma_f32 v0, -v0, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v77, v0, v56, v78
	v_max_f32_e32 v56, 0x2b8cbccc, v2
	v_div_fixup_f32 v1, v77, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v0, null, 0x40e00000, 0x40e00000, v56
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v86.l, v1.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v2, v0
	v_fma_f32 v78, -v0, v2, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v2, v78, v2
	v_div_scale_f32 v78, vcc_lo, v56, 0x40e00000, v56
	v_mul_f32_e32 v79, v78, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v0, v79, v78
	v_fmac_f32_e32 v79, v80, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v79, v78
	v_div_fmas_f32 v0, v0, v2, v79
	v_max_f32_e32 v2, 0x2b8cbccc, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v0, 0x40e00000, v56
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v78, v6
	v_fma_f32 v79, -v6, v78, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v2, 0x40e00000, v2
	v_mul_f32_e32 v80, v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v6, v80, v79
	v_fmac_f32_e32 v80, v81, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v6, -v6, v80, v79
	v_div_fmas_f32 v6, v6, v78, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v2, v6, 0x40e00000, v2
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v6, 1, v86
	v_mov_b16_e32 v86.l, v2.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v1, v6, 0x7fff
	v_and_b32_e32 v6, 1, v86
	v_mov_b16_e32 v86.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v2, v2, v6, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v6, v76, 0x40e00000, v74
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v74.h, v86.h
	v_and_b32_e32 v56, 1, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v74.l, v6.h
	v_add3_u32 v56, v0, v56, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v74, 1, v74
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v86, 0xffff0000, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v6, v6, v74, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v86, v86, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v74, 0xffff0000, v6
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v76, null, v74, v74, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v77, v76
	v_fma_f32 v78, -v76, v77, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v78, v77
	v_div_scale_f32 v78, vcc_lo, v67, v74, v67
	v_mul_f32_e32 v79, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v76, v79, v78
	v_fmac_f32_e32 v79, v80, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v76, v79, v78
	v_div_fmas_f32 v88, v76, v77, v79
	v_div_scale_f32 v76, null, v74, v74, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v67, v88, v74, v67
	v_rcp_f32_e32 v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v67, v67, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v76, v77, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v77, v78, v77
	v_div_scale_f32 v78, vcc_lo, v52, v74, v52
	v_mul_f32_e32 v79, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v76, v79, v78
	v_fmac_f32_e32 v79, v80, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v76, v79, v78
	v_div_fmas_f32 v80, v76, v77, v79
	v_div_scale_f32 v76, null, v74, v74, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v52, v80, v74, v52
	v_rcp_f32_e32 v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v52, v52, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v76, v77, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v77, v78, v77
	v_div_scale_f32 v78, vcc_lo, v32, v74, v32
	v_mul_f32_e32 v79, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v76, v79, v78
	v_fmac_f32_e32 v79, v81, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v76, v79, v78
	v_div_fmas_f32 v77, v76, v77, v79
	v_div_scale_f32 v76, null, v74, v74, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v32, v77, v74, v32
	v_rcp_f32_e32 v78, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v32, v32, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v76, v78, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v9, v74, v9
	v_mul_f32_e32 v81, v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v76, v81, v79
	v_fmac_f32_e32 v81, v82, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v76, v81, v79
	v_div_fmas_f32 v76, v76, v78, v81
	v_div_scale_f32 v78, null, v74, v74, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v79, v78
	v_fma_f32 v81, -v78, v79, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v81, vcc_lo, v66, v74, v66
	v_mul_f32_e32 v82, v81, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v78, v82, v81
	v_fmac_f32_e32 v82, v83, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v78, v82, v81
	v_div_fmas_f32 v92, v78, v79, v82
	v_div_scale_f32 v78, null, v74, v74, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v66, v92, v74, v66
	v_rcp_f32_e32 v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v66, v66, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v78, v79, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v81, vcc_lo, v45, v74, v45
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v66, 15, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v82, v81, v79
	v_fma_f32 v83, -v78, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v83, v79
	v_fma_f32 v78, -v78, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v81, v78, v79, v82
	v_div_scale_f32 v78, null, v74, v74, v22
	v_div_fixup_f32 v45, v81, v74, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v79, v78
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v45, v45, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v78, v79, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v79, v82, v79
	v_div_scale_f32 v82, vcc_lo, v22, v74, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v83, v82, v79
	v_fma_f32 v84, -v78, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v84, v79
	v_fma_f32 v78, -v78, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v79, v78, v79, v83
	v_div_scale_f32 v78, null, v74, v74, v10
	v_div_fixup_f32 v22, v79, v74, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v82, v78
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v22, v22, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v78, v82, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v22, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v83, v82
	v_div_scale_f32 v83, vcc_lo, v10, v74, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v84, v83, v82
	v_fma_f32 v85, -v78, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v85, v82
	v_fma_f32 v78, -v78, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v78, v78, v82, v84
	v_div_scale_f32 v82, null, v74, v74, v55
	v_rcp_f32_e32 v83, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v82, v83, 1.0
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v84, vcc_lo, v55, v74, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v85, v84, v83
	v_fma_f32 v87, -v82, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v87, v83
	v_fma_f32 v82, -v82, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v90, v82, v83, v85
	v_div_scale_f32 v82, null, v74, v74, v38
	v_div_fixup_f32 v55, v90, v74, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v83, v82
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v55, v55, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v82, v83, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v55, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v84, vcc_lo, v38, v74, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v85, v84, v83
	v_fma_f32 v87, -v82, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v87, v83
	v_fma_f32 v82, -v82, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v84, v82, v83, v85
	v_div_scale_f32 v82, null, v74, v74, v13
	v_div_fixup_f32 v38, v84, v74, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v83, v82
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v38, v38, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v82, v83, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v85, vcc_lo, v13, v74, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v87, v85, v83
	v_fma_f32 v89, -v82, v87, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v89, v83
	v_fma_f32 v82, -v82, v87, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v82, v83, v87
	v_div_scale_f32 v83, null, v74, v74, v11
	v_div_fixup_f32 v13, v82, v74, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v85, v83
	v_fma_f32 v87, -v83, v85, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v87, vcc_lo, v11, v74, v11
	v_mul_f32_e32 v89, v87, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v83, v89, v87
	v_fmac_f32_e32 v89, v91, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v83, v89, v87
	v_div_fmas_f32 v83, v83, v85, v89
	v_div_scale_f32 v85, null, v74, v74, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v11, v83, v74, v11
	v_rcp_f32_e32 v87, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v85, v87, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v89, v87
	v_div_scale_f32 v89, vcc_lo, v54, v74, v54
	v_mul_f32_e32 v91, v89, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v85, v91, v89
	v_fmac_f32_e32 v91, v93, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v85, v91, v89
	v_div_fmas_f32 v94, v85, v87, v91
	v_div_scale_f32 v85, null, v74, v74, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v54, v94, v74, v54
	v_rcp_f32_e32 v87, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v54, v54, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v85, v87, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v89, v87
	v_div_scale_f32 v89, vcc_lo, v34, v74, v34
	v_mul_f32_e32 v91, v89, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v85, v91, v89
	v_fmac_f32_e32 v91, v93, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v85, v91, v89
	v_div_fmas_f32 v89, v85, v87, v91
	v_div_scale_f32 v85, null, v74, v74, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v34, v89, v74, v34
	v_rcp_f32_e32 v87, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v34, v34, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v85, v87, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, vcc_lo, v7, v74, v7
	v_mul_f32_e32 v93, v91, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v85, v93, v91
	v_fmac_f32_e32 v93, v95, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v85, v93, v91
	v_div_fmas_f32 v85, v85, v87, v93
	v_div_scale_f32 v87, null, v74, v74, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v91, v87
	v_fma_f32 v93, -v87, v91, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, vcc_lo, v8, v74, v8
	v_mul_f32_e32 v95, v93, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v96, -v87, v95, v93
	v_fmac_f32_e32 v95, v96, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v87, v95, v93
	v_div_fmas_f32 v87, v87, v91, v95
	v_rcp_f32_e32 v91, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v0, v91, 1.0
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, vcc_lo, v69, v86, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v95, v93, v91
	v_fma_f32 v96, -v0, v95, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v96, v91
	v_fma_f32 v0, -v0, v95, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v105, v0, v91, v95
	v_div_scale_f32 v0, null, v86, v86, v57
	v_div_fixup_f32 v69, v105, v86, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v91, v0
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v69, v69, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v0, v91, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, vcc_lo, v57, v86, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v95, v93, v91
	v_fma_f32 v96, -v0, v95, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v96, v91
	v_fma_f32 v0, -v0, v95, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v97, v0, v91, v95
	v_div_scale_f32 v0, null, v86, v86, v36
	v_rcp_f32_e32 v91, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v0, v91, 1.0
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, vcc_lo, v36, v86, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v95, v93, v91
	v_fma_f32 v96, -v0, v95, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v96, v91
	v_fma_f32 v0, -v0, v95, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v93, v0, v91, v95
	v_div_scale_f32 v0, null, v86, v86, v18
	v_rcp_f32_e32 v91, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v0, v91, 1.0
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v95, vcc_lo, v18, v86, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v96, v95, v91
	v_fma_f32 v98, -v0, v96, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v96, v98, v91
	v_fma_f32 v0, -v0, v96, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v91, v0, v91, v96
	v_div_scale_f32 v0, null, v86, v86, v68
	v_div_fixup_f32 v18, v91, v86, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v95, v0
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v18, v18, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v96, -v0, v95, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v96, v95
	v_div_scale_f32 v96, vcc_lo, v68, v86, v68
	v_mul_f32_e32 v98, v96, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v99, -v0, v98, v96
	v_fmac_f32_e32 v98, v99, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v98, v96
	v_div_fmas_f32 v109, v0, v95, v98
	v_div_scale_f32 v0, null, v86, v86, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v95, v0
	v_fma_f32 v96, -v0, v95, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v96, v95
	v_div_scale_f32 v96, vcc_lo, v49, v86, v49
	v_mul_f32_e32 v98, v96, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v99, -v0, v98, v96
	v_fmac_f32_e32 v98, v99, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v98, v96
	v_div_fmas_f32 v100, v0, v95, v98
	v_div_scale_f32 v0, null, v86, v86, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v49, v100, v86, v49
	v_rcp_f32_e32 v95, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v49, v49, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v96, -v0, v95, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v96, v95
	v_div_scale_f32 v96, vcc_lo, v35, v86, v35
	v_mul_f32_e32 v98, v96, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v99, -v0, v98, v96
	v_fmac_f32_e32 v98, v99, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v98, v96
	v_div_fmas_f32 v96, v0, v95, v98
	v_div_scale_f32 v0, null, v86, v86, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v95, v0
	v_fma_f32 v98, -v0, v95, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v98, v95
	v_div_scale_f32 v98, vcc_lo, v19, v86, v19
	v_mul_f32_e32 v99, v98, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v101, -v0, v99, v98
	v_fmac_f32_e32 v99, v101, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v99, v98
	v_div_fmas_f32 v95, v0, v95, v99
	v_div_scale_f32 v0, null, v86, v86, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v19, v95, v86, v19
	v_rcp_f32_e32 v98, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v99, -v0, v98, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v98, v99, v98
	v_div_scale_f32 v99, vcc_lo, v60, v86, v60
	v_mul_f32_e32 v101, v99, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v102, -v0, v101, v99
	v_fmac_f32_e32 v101, v102, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v101, v99
	v_div_fmas_f32 v107, v0, v98, v101
	v_div_scale_f32 v0, null, v86, v86, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v60, v107, v86, v60
	v_rcp_f32_e32 v98, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v60, v60, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v99, -v0, v98, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v60, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v98, v99, v98
	v_div_scale_f32 v99, vcc_lo, v43, v86, v43
	v_mul_f32_e32 v101, v99, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v102, -v0, v101, v99
	v_fmac_f32_e32 v101, v102, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v101, v99
	v_div_fmas_f32 v101, v0, v98, v101
	v_div_scale_f32 v0, null, v86, v86, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v43, v101, v86, v43
	v_rcp_f32_e32 v98, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v43, v43, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v99, -v0, v98, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v98, v99, v98
	v_div_scale_f32 v99, vcc_lo, v23, v86, v23
	v_mul_f32_e32 v102, v99, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v103, -v0, v102, v99
	v_fmac_f32_e32 v102, v103, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v102, v99
	v_div_fmas_f32 v98, v0, v98, v102
	v_div_scale_f32 v0, null, v86, v86, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v99, v0
	v_fma_f32 v102, -v0, v99, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v99, v102, v99
	v_div_scale_f32 v102, vcc_lo, v20, v86, v20
	v_mul_f32_e32 v103, v102, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v104, -v0, v103, v102
	v_fmac_f32_e32 v103, v104, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v103, v102
	v_div_fmas_f32 v99, v0, v99, v103
	v_div_scale_f32 v0, null, v86, v86, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v20, v99, v86, v20
	v_rcp_f32_e32 v102, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v20, v20, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v103, -v0, v102, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v102, v103, v102
	v_div_scale_f32 v103, vcc_lo, v59, v86, v59
	v_mul_f32_e32 v104, v103, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v106, -v0, v104, v103
	v_fmac_f32_e32 v104, v106, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v104, v103
	v_div_fmas_f32 v111, v0, v102, v104
	v_div_scale_f32 v0, null, v86, v86, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v102, v0
	v_fma_f32 v103, -v0, v102, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v102, v103, v102
	v_div_scale_f32 v103, vcc_lo, v39, v86, v39
	v_mul_f32_e32 v104, v103, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v106, -v0, v104, v103
	v_fmac_f32_e32 v104, v106, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v104, v103
	v_div_fmas_f32 v106, v0, v102, v104
	v_div_scale_f32 v0, null, v86, v86, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v102, v0
	v_fma_f32 v103, -v0, v102, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v102, v103, v102
	v_div_scale_f32 v103, vcc_lo, v14, v86, v14
	v_mul_f32_e32 v104, v103, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v108, -v0, v104, v103
	v_fmac_f32_e32 v104, v108, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v104, v103
	v_div_fmas_f32 v102, v0, v102, v104
	v_div_scale_f32 v0, null, v86, v86, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v14, v102, v86, v14
	v_rcp_f32_e32 v103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v14, v14, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v104, -v0, v103, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v103, v104, v103
	v_div_scale_f32 v104, vcc_lo, v15, v86, v15
	v_mul_f32_e32 v108, v104, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v110, -v0, v108, v104
	v_fmac_f32_e32 v108, v110, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v108, v104
	v_div_fmas_f32 v104, v0, v103, v108
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v103, 0xffff0000, v1
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v6.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v15, v104, v86, v15
	v_div_scale_f32 v0, null, v103, v103, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v108, v0
	v_fma_f32 v110, -v0, v108, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v108, v110, v108
	v_div_scale_f32 v110, vcc_lo, v71, v103, v71
	v_mul_f32_e32 v112, v110, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v113, -v0, v112, v110
	v_fmac_f32_e32 v112, v113, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v112, v110
	v_div_fmas_f32 v124, v0, v108, v112
	v_div_scale_f32 v0, null, v103, v103, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v71, v124, v103, v71
	v_rcp_f32_e32 v108, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v110, -v0, v108, 1.0
	v_fmac_f32_e32 v108, v110, v108
	v_div_scale_f32 v110, vcc_lo, v58, v103, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v112, v110, v108
	v_fma_f32 v113, -v0, v112, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v112, v113, v108
	v_fma_f32 v0, -v0, v112, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v115, v0, v108, v112
	v_div_scale_f32 v0, null, v103, v103, v40
	v_rcp_f32_e32 v108, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v110, -v0, v108, 1.0
	v_fmac_f32_e32 v108, v110, v108
	v_div_scale_f32 v110, vcc_lo, v40, v103, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v112, v110, v108
	v_fma_f32 v113, -v0, v112, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v112, v113, v108
	v_fma_f32 v0, -v0, v112, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v110, v0, v108, v112
	v_div_scale_f32 v0, null, v103, v103, v28
	v_rcp_f32_e32 v108, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v112, -v0, v108, 1.0
	v_fmac_f32_e32 v108, v112, v108
	v_div_scale_f32 v112, vcc_lo, v28, v103, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v113, v112, v108
	v_fma_f32 v114, -v0, v113, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v113, v114, v108
	v_fma_f32 v0, -v0, v113, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v108, v0, v108, v113
	v_div_scale_f32 v0, null, v103, v103, v70
	v_rcp_f32_e32 v112, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v113, -v0, v112, 1.0
	v_fmac_f32_e32 v112, v113, v112
	v_div_scale_f32 v113, vcc_lo, v70, v103, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v114, v113, v112
	v_fma_f32 v116, -v0, v114, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v114, v116, v112
	v_fma_f32 v0, -v0, v114, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v126, v0, v112, v114
	v_div_scale_f32 v0, null, v103, v103, v51
	v_rcp_f32_e32 v112, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v113, -v0, v112, 1.0
	v_fmac_f32_e32 v112, v113, v112
	v_div_scale_f32 v113, vcc_lo, v51, v103, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v114, v113, v112
	v_fma_f32 v116, -v0, v114, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v114, v116, v112
	v_fma_f32 v0, -v0, v114, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v118, v0, v112, v114
	v_div_scale_f32 v0, null, v103, v103, v37
	v_rcp_f32_e32 v112, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v113, -v0, v112, 1.0
	v_fmac_f32_e32 v112, v113, v112
	v_div_scale_f32 v113, vcc_lo, v37, v103, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v114, v113, v112
	v_fma_f32 v116, -v0, v114, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v114, v116, v112
	v_fma_f32 v0, -v0, v114, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v114, v0, v112, v114
	v_div_scale_f32 v0, null, v103, v103, v29
	v_rcp_f32_e32 v112, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v113, -v0, v112, 1.0
	v_fmac_f32_e32 v112, v113, v112
	v_div_scale_f32 v113, vcc_lo, v29, v103, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v116, v113, v112
	v_fma_f32 v117, -v0, v116, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v116, v117, v112
	v_fma_f32 v0, -v0, v116, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v113, v0, v112, v116
	v_div_scale_f32 v0, null, v103, v103, v62
	v_rcp_f32_e32 v112, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v116, -v0, v112, 1.0
	v_fmac_f32_e32 v112, v116, v112
	v_div_scale_f32 v116, vcc_lo, v62, v103, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v117, v116, v112
	v_fma_f32 v119, -v0, v117, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v117, v119, v112
	v_fma_f32 v0, -v0, v117, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v125, v0, v112, v117
	v_div_scale_f32 v0, null, v103, v103, v46
	v_div_fixup_f32 v62, v125, v103, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v112, v0
	v_fma_f32 v116, -v0, v112, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v112, v116, v112
	v_div_scale_f32 v116, vcc_lo, v46, v103, v46
	v_mul_f32_e32 v117, v116, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v119, -v0, v117, v116
	v_fmac_f32_e32 v117, v119, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v117, v116
	v_div_fmas_f32 v120, v0, v112, v117
	v_div_scale_f32 v0, null, v103, v103, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v46, v120, v103, v46
	v_rcp_f32_e32 v112, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v116, -v0, v112, 1.0
	v_fmac_f32_e32 v112, v116, v112
	v_div_scale_f32 v116, vcc_lo, v31, v103, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v117, v116, v112
	v_fma_f32 v119, -v0, v117, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v117, v119, v112
	v_fma_f32 v0, -v0, v117, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v116, v0, v112, v117
	v_div_scale_f32 v0, null, v103, v103, v30
	v_rcp_f32_e32 v112, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v117, -v0, v112, 1.0
	v_fmac_f32_e32 v112, v117, v112
	v_div_scale_f32 v117, vcc_lo, v30, v103, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v119, v117, v112
	v_fma_f32 v121, -v0, v119, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v119, v121, v112
	v_fma_f32 v0, -v0, v119, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v117, v0, v112, v119
	v_div_scale_f32 v0, null, v103, v103, v61
	v_rcp_f32_e32 v112, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v119, -v0, v112, 1.0
	v_fmac_f32_e32 v112, v119, v112
	v_div_scale_f32 v119, vcc_lo, v61, v103, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v121, v119, v112
	v_fma_f32 v122, -v0, v121, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v121, v122, v112
	v_fma_f32 v0, -v0, v121, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v127, v0, v112, v121
	v_div_scale_f32 v0, null, v103, v103, v42
	v_div_fixup_f32 v61, v127, v103, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v112, v0
	v_fma_f32 v119, -v0, v112, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v112, v119, v112
	v_div_scale_f32 v119, vcc_lo, v42, v103, v42
	v_mul_f32_e32 v121, v119, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v122, -v0, v121, v119
	v_fmac_f32_e32 v121, v122, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v121, v119
	v_div_fmas_f32 v123, v0, v112, v121
	v_div_scale_f32 v0, null, v103, v103, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v112, v0
	v_fma_f32 v119, -v0, v112, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v112, v119, v112
	v_div_scale_f32 v119, vcc_lo, v26, v103, v26
	v_mul_f32_e32 v121, v119, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v122, -v0, v121, v119
	v_fmac_f32_e32 v121, v122, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v121, v119
	v_div_fmas_f32 v121, v0, v112, v121
	v_div_scale_f32 v0, null, v103, v103, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v112, v0
	v_fma_f32 v119, -v0, v112, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v112, v119, v112
	v_div_scale_f32 v119, vcc_lo, v27, v103, v27
	v_mul_f32_e32 v122, v119, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v128, -v0, v122, v119
	v_fmac_f32_e32 v122, v128, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v0, -v0, v122, v119
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v119, 0xffff0000, v2
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v56.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v122, v0, v112, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v0, null, v119, v119, v73
	v_rcp_f32_e32 v112, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v128, -v0, v112, 1.0
	v_fmac_f32_e32 v112, v128, v112
	v_div_scale_f32 v128, vcc_lo, v73, v119, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v129, v128, v112
	v_fma_f32 v130, -v0, v129, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v129, v130, v112
	v_fma_f32 v0, -v0, v129, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v128, v0, v112, v129
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v112, 16, v221
	v_lshlrev_b32_e32 v0, 13, v221
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v73, v128, v119, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v129, 8, v112
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v128, 15, v67
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v71
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v0, 0xe000, v0, v129
	v_and_b32_e32 v129, 64, v221
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v67, v67, s0, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v75, v75, v129
	v_lshlrev_b32_e32 v129, 3, v161
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v67, v67
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v75, v0, v129, v75
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v119, v119, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v129, v0
	v_fma_f32 v130, -v0, v129, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v129, v130, v129
	v_div_scale_f32 v130, vcc_lo, v63, v119, v63
	v_mul_f32_e32 v131, v130, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v132, -v0, v131, v130
	v_fmac_f32_e32 v131, v132, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v131, v130
	v_div_fmas_f32 v132, v0, v129, v131
	v_div_scale_f32 v0, null, v119, v119, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v129, v0
	v_fma_f32 v130, -v0, v129, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v129, v130, v129
	v_div_scale_f32 v130, vcc_lo, v44, v119, v44
	v_mul_f32_e32 v131, v130, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v133, -v0, v131, v130
	v_fmac_f32_e32 v131, v133, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v131, v130
	v_div_fmas_f32 v133, v0, v129, v131
	v_div_scale_f32 v0, null, v119, v119, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v129, v0
	v_fma_f32 v130, -v0, v129, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v129, v130, v129
	v_div_scale_f32 v130, vcc_lo, v25, v119, v25
	v_mul_f32_e32 v131, v130, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v0, v131, v130
	v_fmac_f32_e32 v131, v134, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v131, v130
	v_div_fmas_f32 v0, v0, v129, v131
	v_div_scale_f32 v129, null, v119, v119, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v0, v119, v25
	v_rcp_f32_e32 v130, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v131, -v129, v130, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v130, v131, v130
	v_div_scale_f32 v131, vcc_lo, v72, v119, v72
	v_mul_f32_e32 v134, v131, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v135, -v129, v134, v131
	v_fmac_f32_e32 v134, v135, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v129, -v129, v134, v131
	v_div_fmas_f32 v134, v129, v130, v134
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v130, 15, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v67, v109, v86, v68
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v73
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_and_b32_e32 v129, 15, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v69, v134, v119, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v68, v68, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v67, v67, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_i32_f32_e32 v68, v68
	v_med3_f32 v69, v69, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_i32_f32_e32 v67, v67
	v_and_b32_e32 v131, 15, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v68, v126, v103, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v69, v69
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v70, 0, v75
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v67, 15, v67
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v69, 15, v69
	v_med3_f32 v68, v68, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v68, v68
	v_and_b32_e32 v68, 15, v68
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v70, v[128:131]
	ds_store_b128 v70, v[66:69] offset:256
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v66, null, v119, v119, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v66
	v_fma_f32 v68, -v66, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v53, v119, v53
	v_mul_f32_e32 v69, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v66, v69, v68
	v_fmac_f32_e32 v69, v71, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v69, v68
	v_div_fmas_f32 v69, v66, v67, v69
	v_div_scale_f32 v66, null, v119, v119, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v66
	v_fma_f32 v68, -v66, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v41, v119, v41
	v_mul_f32_e32 v71, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v66, v71, v68
	v_fmac_f32_e32 v71, v72, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v71, v68
	v_div_fmas_f32 v71, v66, v67, v71
	v_div_scale_f32 v66, null, v119, v119, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v66
	v_fma_f32 v68, -v66, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v21, v119, v21
	v_mul_f32_e32 v72, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v66, v72, v68
	v_fmac_f32_e32 v72, v73, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v72, v68
	v_div_fmas_f32 v72, v66, v67, v72
	v_div_scale_f32 v66, null, v119, v119, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v66
	v_fma_f32 v68, -v66, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v65, v119, v65
	v_mul_f32_e32 v73, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v66, v73, v68
	v_fmac_f32_e32 v73, v88, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v73, v68
	v_div_fmas_f32 v66, v66, v67, v73
	v_div_scale_f32 v67, null, v119, v119, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v67
	v_fma_f32 v73, -v67, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v73, v68
	v_div_scale_f32 v73, vcc_lo, v50, v119, v50
	v_mul_f32_e32 v88, v73, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v67, v88, v73
	v_fmac_f32_e32 v88, v92, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v88, v73
	v_div_fmas_f32 v73, v67, v68, v88
	v_div_scale_f32 v67, null, v119, v119, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v67
	v_fma_f32 v88, -v67, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v88, v68
	v_div_scale_f32 v88, vcc_lo, v33, v119, v33
	v_mul_f32_e32 v92, v88, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v105, -v67, v92, v88
	v_fmac_f32_e32 v92, v105, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v92, v88
	v_div_fmas_f32 v88, v67, v68, v92
	v_div_scale_f32 v67, null, v119, v119, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v67
	v_fma_f32 v92, -v67, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v92, v68
	v_div_scale_f32 v92, vcc_lo, v24, v119, v24
	v_mul_f32_e32 v105, v92, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v109, -v67, v105, v92
	v_fmac_f32_e32 v105, v109, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v105, v92
	v_div_fmas_f32 v92, v67, v68, v105
	v_div_scale_f32 v67, null, v119, v119, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v24, v92, v119, v24
	v_rcp_f32_e32 v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v105, -v67, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v105, v68
	v_div_scale_f32 v105, vcc_lo, v64, v119, v64
	v_mul_f32_e32 v109, v105, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v124, -v67, v109, v105
	v_fmac_f32_e32 v109, v124, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v109, v105
	v_div_fmas_f32 v105, v67, v68, v109
	v_div_fixup_f32 v68, v66, v119, v65
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_and_b32_e32 v65, 15, v55
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v66, 15, v60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v62, v105, v119, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_cvt_i32_f32_e32 v55, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v67, 15, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v55, v111, v86, v59
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v68
	v_rndne_f32_e32 v55, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v55, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v68, 15, v59
	v_and_b32_e32 v59, 15, v54
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v61
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v60, 15, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v55, v115, v103, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_cvt_i32_f32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v61, 15, v54
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v54, v54, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v54, v54
	v_and_b32_e32 v62, 15, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v54, v97, v86, v57
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v57, 15, v52
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v55
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v70, v[65:68] offset:2048
	ds_store_b128 v70, v[59:62] offset:2304
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v60, v132, v119, v63
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v55, v69, v119, v53
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v52, v52, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_cvt_i32_f32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v54, v54
	v_and_b32_e32 v59, 15, v52
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v58, 15, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v54, v118, v103, v51
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v51, 15, v45
	v_med3_f32 v52, v52, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v54
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_and_b32_e32 v60, 15, v52
	v_and_b32_e32 v52, 15, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v49, null, v119, v119, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v45, v45
	v_and_b32_e32 v53, 15, v45
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_cvt_i32_f32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v54, 15, v45
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v45, v75, 16, 0
	ds_store_b128 v45, v[57:60]
	ds_store_b128 v45, v[51:54] offset:256
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v51, v49
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v57, 15, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v52, -v49, v51, 1.0
	v_fmac_f32_e32 v51, v52, v51
	v_div_scale_f32 v52, vcc_lo, v47, v119, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v53, v52, v51
	v_fma_f32 v54, -v49, v53, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, v54, v51
	v_fma_f32 v49, -v49, v53, v52
	v_div_fixup_f32 v52, v73, v119, v50
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v50, 15, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v53, v49, v51, v53
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v49, 15, v38
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v46
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v38, v38
	v_and_b32_e32 v51, 15, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v38, v106, v86, v39
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rndne_f32_e32 v38, v38
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v39, v39, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_cvt_i32_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v38, v38
	v_and_b32_e32 v52, 15, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v39, v123, v103, v42
	v_div_fixup_f32 v42, v53, v119, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v58, 15, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v38, v133, v119, v44
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_cvt_i32_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v59, 15, v34
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v42
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v42, 15, v32
	v_med3_f32 v34, v34, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v34, v34
	v_and_b32_e32 v60, 15, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v34, v93, v86, v36
	v_div_fixup_f32 v36, v110, v103, v40
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v45, v[49:52] offset:2048
	ds_store_b128 v45, v[57:60] offset:2304
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v32, v36
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v36, v114, v103, v37
	v_div_fixup_f32 v37, v71, v119, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v43, 15, v34
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v38
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v44, 15, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v32, v96, v86, v35
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v38, v75, 32, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v34, v34, s0, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v34, v34
	v_med3_f32 v32, v32, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v45, 15, v34
	v_and_b32_e32 v34, 15, v22
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v36
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_and_b32_e32 v35, 15, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v32, v78, v74, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v22, v22
	v_and_b32_e32 v36, 15, v22
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_cvt_i32_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v37, 15, v22
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v38, v[42:45]
	ds_store_b128 v38, v[34:37] offset:256
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v35, v87, v74, v8
	v_div_scale_f32 v8, null, v119, v119, v17
	v_div_fixup_f32 v36, v121, v103, v26
	v_div_fixup_f32 v37, v122, v103, v27
	v_div_fixup_f32 v34, v85, v74, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v10, v8
	v_div_fixup_f32 v7, v98, v86, v23
	v_div_fixup_f32 v23, v108, v103, v28
	v_div_fixup_f32 v28, v113, v103, v29
	v_div_fixup_f32 v22, v76, v74, v9
	v_div_fixup_f32 v9, v116, v103, v31
	v_div_fixup_f32 v31, v117, v103, v30
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v26, -v8, v10, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v7, v7, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v10, v26, v10
	v_div_scale_f32 v26, vcc_lo, v17, v119, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v9, v9, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v27, v26, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v9, v9
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v29, -v8, v27, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v9, 15, v9
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v27, v29, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v8, v27, v26
	v_div_fmas_f32 v26, v8, v10, v27
	v_div_scale_f32 v8, null, v119, v119, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v39, v26, v119, v17
	v_rcp_f32_e32 v10, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v17, v18
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v32
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v26, 15, v14
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v27, -v8, v10, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v14, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v10, v27, v10
	v_div_scale_f32 v27, vcc_lo, v12, v119, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v29, v27, v10
	v_fma_f32 v30, -v8, v29, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v29, v30, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v30, 15, v14
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v28
	v_rndne_f32_e32 v28, v39
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v8, -v8, v29, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v27, v8, v10, v29
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v13
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v13, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_i32_f32_e32 v14, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v10, v88, v119, v33
	v_div_fixup_f32 v32, v27, v119, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v12, v18, s0, 0x40e00000
	v_med3_f32 v18, v19, s0, 0x40e00000
	v_med3_f32 v19, v11, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v33, v72, v119, v21
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v8, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v10, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v7, 15, v8
	v_and_b32_e32 v8, 15, v13
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v22
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v21, 15, v19
	v_and_b32_e32 v19, 15, v14
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v31
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_and_b32_e32 v22, 15, v20
	v_and_b32_e32 v18, 15, v18
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_cvt_i32_f32_e32 v10, v10
	v_cvt_i32_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_i32_f32_e32 v14, v14
	v_and_b32_e32 v10, 15, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v11, 15, v13
	v_cvt_i32_f32_e32 v13, v12
	v_and_b32_e32 v12, 15, v17
	v_and_b32_e32 v17, 15, v13
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_cvt_i32_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v25, 15, v13
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v35
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v13, v13, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v13, v13
	v_and_b32_e32 v29, 15, v13
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v23, 15, v14
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v13, 15, v13
	v_and_b32_e32 v27, 15, v14
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_cvt_i32_f32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v31, 15, v14
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v33
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v33, 2, v112
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v14, v14, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1)
	v_cvt_i32_f32_e32 v15, v14
	v_and_b32_e32 v14, 15, v0
	v_med3_f32 v0, v24, s0, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v32
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_cndmask_b32_e64 v32, 0x2010, 0, s2
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v20, 15, v15
	v_med3_f32 v15, v28, s0, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v28, 6, v221
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v24, v24, s0, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v32, v32, v48
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v15, v15
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v16, 0x300, v28, v16
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v34, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v24, 15, v0
	v_and_b32_e32 v28, 15, v15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v43, v32, v16, v33
	v_xad_u32 v0, v75, 48, 0
	ds_store_b128 v38, v[7:10] offset:2048
	ds_store_b128 v38, v[25:28] offset:2304
	ds_store_b128 v0, v[11:14]
	ds_store_b128 v0, v[17:20] offset:256
	v_add_nc_u32_e32 v27, 0, v43
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v32, 15, v34
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v35, 0x4020, v43, 0
	ds_store_b128 v0, v[21:24] offset:2048
	ds_store_b128 v0, v[29:32] offset:2304
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v27
	ds_load_b128 v[11:14], v27 offset:4096
	ds_load_b128 v[15:18], v35
	ds_load_b128 v[19:22], v35 offset:4096
	v_xad_u32 v39, 0x8040, v43, 0
	ds_load_b128 v[23:26], v27 offset:128
	ds_load_b128 v[27:30], v27 offset:4224
	ds_load_b128 v[31:34], v35 offset:128
	ds_load_b128 v[35:38], v35 offset:4224
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(6)
	v_lshl_or_b32 v51, v11, 4, v7
	v_lshl_or_b32 v52, v12, 4, v8
	v_lshl_or_b32 v53, v13, 4, v9
	v_lshl_or_b32 v0, v14, 4, v10
	s_waitcnt lgkmcnt(4)
	v_lshl_or_b32 v54, v19, 4, v15
	v_lshl_or_b32 v55, v20, 4, v16
	v_lshl_or_b32 v57, v21, 4, v17
	v_lshl_or_b32 v9, v22, 4, v18
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[10:13], v39 offset:4096
	ds_load_b128 v[14:17], v39
	ds_load_b128 v[18:21], v39 offset:128
	ds_load_b128 v[39:42], v39 offset:4224
	v_xad_u32 v8, 0xc060, v43, 0
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(2)
	v_lshl_or_b32 v22, v10, 4, v14
	v_lshl_or_b32 v58, v11, 4, v15
	v_lshl_or_b32 v59, v12, 4, v16
	v_lshl_or_b32 v7, v13, 4, v17
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[10:13], v8 offset:4096
	ds_load_b128 v[14:17], v8
	ds_load_b128 v[43:46], v8 offset:128
	ds_load_b128 v[47:50], v8 offset:4224
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(4)
	v_lshl_or_b32 v18, v39, 4, v18
	v_lshl_or_b32 v19, v40, 4, v19
	s_waitcnt lgkmcnt(2)
	v_lshl_or_b32 v60, v10, 4, v14
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v14, 7, v161
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v16, v12, 4, v16
	v_lshl_or_b32 v10, v13, 4, v17
	v_lshl_or_b32 v17, v28, 4, v24
	v_lshl_or_b32 v24, v35, 4, v31
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v12, 62, v14
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v31, v14, v4
	v_lshl_or_b32 v4, s78, 7, v5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v61, v11, 4, v15
	v_lshl_or_b32 v15, v27, 4, v23
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v12, s0, s62, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s63, 0, s0
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v28, v41, 4, v20
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v20, v47, 4, v43
	v_lshl_or_b32 v23, v29, 4, v25
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[12:13]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 60, v14
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v25, v36, 4, v32
	v_lshl_or_b32 v29, v42, 4, v21
	v_lshl_or_b32 v21, v48, 4, v44
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v32, 60, v31
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v12, s1, s62, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v13, null, s63, 0, s1
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v11, v30, 4, v26
	v_lshl_or_b32 v26, v37, 4, v33
	v_lshl_or_b32 v30, v49, 4, v45
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[74:75], v[12:13]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 58, v14
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v27, v38, 4, v34
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v8, v50, 4, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v12, s3, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s3
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s2
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 56, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s5, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s5
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s3, s3, s4
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 54, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s7, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s7
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s5, s5, s6
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 52, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s9, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s9
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s7, s7, s8
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 50, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s11, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s11
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s9, s9, s10
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 48, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s13, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s13
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s11, s11, s12
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 46, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s15, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s15
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s13, s13, s14
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 44, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s17, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s17
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s15, s15, s16
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 42, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s19, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s19
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s17, s17, s18
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 40, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s21, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s21
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s19, s19, s20
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 38, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s23, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s23
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s21, s21, s22
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 36, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s25, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s25
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s23, s23, s24
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 34, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s27, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s27
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s25, s25, s26
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 32, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s29, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s29
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s27, s27, s28
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 30, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s31, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s31
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s29, s29, s30
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 28, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s34, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s34
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s31, s31, s33
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 26, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s36, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s36
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s34, s34, s35
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 24, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s38, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s38
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s36, s36, s37
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 22, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s40, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s40
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s38, s38, s39
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s40, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 20, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s42, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s42
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s40, s40, s41
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 18, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s44, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s44
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s42, s42, s43
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 16, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s46, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s46
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s44, s44, s45
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 14, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s48, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s48
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s46, s46, s47
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s48, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 12, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s50, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s50
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s48, s48, s49
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 10, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s52, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s52
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s50, s50, s51
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 8, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s54, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s54
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s52, s52, s53
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 6, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s56, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s56
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s54, s54, s55
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 4, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s58, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s58
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s56, s56, s57
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[76:77], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 2, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s60, s62, v12
	v_add_co_ci_u32_e64 v13, null, s63, 0, s60
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s58, s58, s59
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s60, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s61, s[76:77], v[12:13]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v12, s62, s62, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s63, 0, s62
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s60, s60, s61
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s62, s[74:75], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s63, s[76:77], v[12:13]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_mad_u64_u32 v[12:13], null, v31, s73, v[4:5]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s62, s62, s63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v5, 0x80000000, v12, s62
	buffer_store_b8 v51, v5, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v5, 2, v31
	v_mad_u64_u32 v[12:13], null, v5, s73, v[4:5]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v5, 0x80000000, v12, s60
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 4, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v54, v5, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[12:13], null, v12, s73, v[4:5]
	v_add_nc_u32_e32 v5, 6, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v12, 0x80000000, v12, s58
	buffer_store_b8 v22, v12, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[12:13], null, v5, s73, v[4:5]
	v_add_nc_u32_e32 v5, 8, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[13:14], null, v5, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v5, 0x80000000, v12, s56
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 10, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v60, v5, s[68:71], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v13, s54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[12:13], null, v12, s73, v[4:5]
	v_add_nc_u32_e32 v13, 12, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v15, v5, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v5, 14, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v12, 0x80000000, v12, s52
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[13:14], null, v13, s73, v[4:5]
	v_mad_u64_u32 v[14:15], null, v5, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v24, v12, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 16, v31
	v_add_nc_u32_e32 v15, 20, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v5, 0x80000000, v13, s50
	v_cndmask_b32_e64 v22, 0x80000000, v14, s48
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 18, v31
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[12:13], null, v12, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v18, v5, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[13:14], null, v14, s73, v[4:5]
	v_mad_u64_u32 v[14:15], null, v15, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v20, v22, s[68:71], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v12, s46
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 22, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v15, 0x80000000, v13, s44
	v_cndmask_b32_e64 v18, 0x80000000, v14, s42
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 24, v31
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[12:13], null, v12, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x2
	buffer_store_b8 v52, v5, s[68:71], 0 offen
	buffer_store_b8 v55, v15, s[68:71], 0 offen
	buffer_store_b8 v58, v18, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[13:14], null, v14, s73, v[4:5]
	v_add_nc_u32_e32 v5, 26, v31
	v_add_nc_u32_e32 v15, 28, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v14, 0x80000000, v12, s40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v18, 0x80000000, v13, s38
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[12:13], null, v5, s73, v[4:5]
	v_add_nc_u32_e32 v5, 30, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b8 v61, v14, s[68:71], 0 offen
	buffer_store_b8 v17, v18, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v18, 36, v31
	v_mad_u64_u32 v[13:14], null, v15, s73, v[4:5]
	v_add_nc_u32_e32 v14, 32, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v17, 0x80000000, v12, s36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 34, v31
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v20, 0x80000000, v13, s34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[12:13], null, v5, s73, v[4:5]
	v_add_nc_u32_e32 v5, 38, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b8 v25, v17, s[68:71], 0 offen
	buffer_store_b8 v19, v20, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 40, v31
	v_add_nc_u32_e32 v19, 42, v31
	v_mad_u64_u32 v[13:14], null, v14, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v14, 0x80000000, v12, s31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v20, 44, v31
	v_add_nc_u32_e32 v25, 58, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v21, v14, s[68:71], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v13, s29
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[12:13], null, v15, s73, v[4:5]
	v_mad_u64_u32 v[13:14], null, v18, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v53, v22, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 46, v31
	v_add_nc_u32_e32 v18, 48, v31
	v_add_nc_u32_e32 v21, 50, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v14, 0x80000000, v12, s27
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v22, 52, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v24, 0x80000000, v13, s25
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[12:13], null, v5, s73, v[4:5]
	v_add_nc_u32_e32 v5, 54, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b8 v57, v14, s[68:71], 0 offen
	buffer_store_b8 v59, v24, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v24, 56, v31
	v_add_nc_u32_e32 v31, 62, v31
	v_mad_u64_u32 v[13:14], null, v17, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v14, 0x80000000, v12, s23
	buffer_store_b8 v16, v14, s[68:71], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v13, s21
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[12:13], null, v19, s73, v[4:5]
	v_mad_u64_u32 v[13:14], null, v20, s73, v[4:5]
	v_mad_u64_u32 v[14:15], null, v15, s73, v[4:5]
	v_mad_u64_u32 v[15:16], null, v18, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v23, v17, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[16:17], null, v21, s73, v[4:5]
	v_mad_u64_u32 v[17:18], null, v22, s73, v[4:5]
	v_mad_u64_u32 v[18:19], null, v5, s73, v[4:5]
	v_mad_u64_u32 v[19:20], null, v24, s73, v[4:5]
	v_mad_u64_u32 v[20:21], null, v25, s73, v[4:5]
	v_mad_u64_u32 v[21:22], null, v32, s73, v[4:5]
	v_mad_u64_u32 v[4:5], null, v31, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v5, 0x80000000, v12, s19
	v_cndmask_b32_e64 v12, 0x80000000, v13, s17
	v_cndmask_b32_e64 v13, 0x80000000, v14, s15
	v_cndmask_b32_e64 v14, 0x80000000, v15, s13
	v_cndmask_b32_e64 v15, 0x80000000, v16, s11
	s_clause 0x4
	buffer_store_b8 v26, v5, s[68:71], 0 offen
	buffer_store_b8 v28, v12, s[68:71], 0 offen
	buffer_store_b8 v30, v13, s[68:71], 0 offen
	buffer_store_b8 v0, v14, s[68:71], 0 offen
	buffer_store_b8 v9, v15, s[68:71], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v17, s9
	v_cndmask_b32_e64 v5, 0x80000000, v18, s7
	v_cndmask_b32_e64 v9, 0x80000000, v19, s5
	v_cndmask_b32_e64 v12, 0x80000000, v20, s3
	v_cndmask_b32_e64 v13, 0x80000000, v21, s1
	s_clause 0x4
	buffer_store_b8 v7, v0, s[68:71], 0 offen
	buffer_store_b8 v10, v5, s[68:71], 0 offen
	buffer_store_b8 v11, v9, s[68:71], 0 offen
	buffer_store_b8 v27, v12, s[68:71], 0 offen
	buffer_store_b8 v29, v13, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v5, 4, v221
	v_lshrrev_b32_e32 v7, 2, v112
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v0, 0x80000000, v4, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshlrev_b32_e32 v4, 3, v160
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s1, s72, 31
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v5, 2, v5
	v_add_nc_u32_e32 v7, 0, v7
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v8, v0, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v4
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s1, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v4, v7, v5, v4
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s72, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s0, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v221
	s_and_b32 s69, s67, 0xffff
	s_mov_b32 s68, s66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s78, 1
	s_and_b32 vcc_lo, vcc_lo, s79
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[68:71], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp75:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 456
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
		.amdhsa_next_free_sgpr 80
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 80
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 456
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 35464
; TotalNumSgprs: 82
; NumVgprs: 256
; ScratchSize: 456
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 82
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
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
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
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 456
    .sgpr_count:     82
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 137
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
