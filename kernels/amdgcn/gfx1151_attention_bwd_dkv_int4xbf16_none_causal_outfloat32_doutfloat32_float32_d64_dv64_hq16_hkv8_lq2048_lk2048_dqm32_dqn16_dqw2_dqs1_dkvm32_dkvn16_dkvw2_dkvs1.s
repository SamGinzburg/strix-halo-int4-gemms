	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[44:47], s[0:1], 0x74
	s_load_b256 s[24:31], s[0:1], 0x0
.Ltmp0:
	.loc	1 524 23 prologue_end           ; attention_backward.py:524:23
	v_lshlrev_b32_e32 v34, 3, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s21, s2, 4
	.loc	1 521 24                        ; attention_backward.py:521:24
	s_lshl_b32 s22, s3, 11
	s_mov_b32 s11, 0x31027000
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_add_i32 s22, s22, s21
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_and_b32_e32 v1, 24, v34
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_or_b32_e32 v3, s22, v2
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v4, s21, v2
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 514 33 is_stmt 0              ; attention_backward.py:514:33
	v_bfe_u32 v63, v0, 4, 1
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x58
	s_load_b64 s[12:13], s[0:1], 0x20
	.loc	1 517 21 is_stmt 1              ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	v_mov_b32_e32 v33, 0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v46, 4, v63
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_and_b32_e32 v43, 7, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v45, 2, v63
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s45, v3, v[1:2]
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_cmp_gt_i32_e64 s2, s45, v1
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_and_b32 s9, s27, 0xffff
	s_mov_b32 s8, s26
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v8, s22, v46
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_dual_cndmask_b32 v1, 0x80000000, v2 :: v_dual_lshlrev_b32 v4, 3, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v8, 1, v8
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v5, s21, v3
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_mul_lo_u32 v3, s46, v3
	s_mul_i32 s23, s46, s22
	.loc	1 522 24                        ; attention_backward.py:522:24
	buffer_load_b64 v[1:2], v1, s[8:11], 0 offen
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s4, s46, v4
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v5
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_lshl_b32 s7, s46, 3
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v47, 6, v63
	v_mov_b32_e32 v65, 0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add3_u32 v3, s23, v4, v3
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s9, s29, 0xffff
	s_mov_b32 s8, s28
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v48, 8, v63
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v4, 1, v3
	v_add_lshl_u32 v3, v3, s7, 1
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_and_b32_e32 v44, 48, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v49, 10, v63
	v_or_b32_e32 v50, 12, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshrrev_b32_e32 v6, 1, v44
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v51, 14, v63
	.loc	1 514 23 is_stmt 0              ; attention_backward.py:514:23
	v_or_b32_e32 v93, s21, v63
	.loc	1 528 17 is_stmt 1              ; attention_backward.py:528:17
	v_or_b32_e32 v7, s22, v63
	v_or_b32_e32 v9, s22, v47
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xad_u32 v5, v34, v6, 0
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v6, s22, v45
	v_or_b32_e32 v10, s22, v48
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v7, 1, v7
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v11, s22, v49
	v_or_b32_e32 v12, s22, v50
	v_or_b32_e32 v13, s22, v51
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, 0x800, v93
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v6, 1, v6
	v_lshlrev_b32_e32 v9, 1, v9
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	v_lshlrev_b32_e32 v11, 1, v11
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
	s_and_b32 s13, s13, 0xffff
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v88, 15, v0
	v_dual_mov_b32 v15, v33 :: v_dual_lshlrev_b32 v94, 4, v0
	v_and_b32_e32 v52, 56, v0
	v_and_b32_e32 v53, 16, v0
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v171, 1, v0
	v_and_b32_e32 v54, 32, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v55, 4, v0
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshlrev_b32_e32 v56, 1, v0
	v_dual_mov_b32 v14, v33 :: v_dual_and_b32 v57, 1, v0
	v_dual_mov_b32 v27, v33 :: v_dual_lshlrev_b32 v0, 6, v0
	v_xor_b32_e32 v168, v94, v44
	v_mov_b32_e32 v30, v33
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v97, s21, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v175, 0, v0
	v_or_b32_e32 v0, s21, v45
	v_xor_b32_e32 v45, 0x880, v168
	v_or_b32_e32 v99, s21, v48
	v_or_b32_e32 v169, s21, v49
	v_dual_mov_b32 v71, v33 :: v_dual_and_b32 v34, 48, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v190, 0, v45
	s_clause 0x1
	s_load_b256 s[36:43], s[0:1], 0x38
	s_load_b32 s34, s[0:1], 0xa0
	v_dual_mov_b32 v16, v33 :: v_dual_lshlrev_b32 v59, 5, v57
	v_or_b32_e32 v170, s21, v50
	v_or_b32_e32 v172, s21, v51
	s_lshl_b32 s35, s3, 12
	v_or_b32_e32 v98, s21, v46
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s3, s44, v59
	v_xor_b32_e32 v46, 0xcc0, v168
	v_mov_b32_e32 v68, v33
	.loc	1 641 25                        ; attention_backward.py:641:25
	s_mul_f32 s50, s47, 0x3fb8aa3b
	s_mov_b32 s6, 0
	s_mov_b32 s33, -1
	v_add_nc_u32_e32 v191, 0, v46
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_mov_b32 s28, s30
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s56, s40
	s_mov_b32 s52, s38
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt vmcnt(0)
	ds_store_b64 v5, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_clause 0x1
	buffer_load_b128 v[35:38], v4, s[8:11], 0 offen
	buffer_load_b128 v[39:42], v3, s[8:11], 0 offen
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v1, 1, v12
	v_lshlrev_b32_e32 v2, 1, v13
	v_cndmask_b32_e64 v5, 0x80000000, v9, s2
	v_mov_b32_e32 v9, 0
	v_cndmask_b32_e64 v3, 0x80000000, v6, s2
	v_cndmask_b32_e64 v4, 0x80000000, v8, s2
	v_cndmask_b32_e64 v6, 0x80000000, v10, s2
	v_cndmask_b32_e64 v8, 0x80000000, v11, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_mov_b32_e32 v10, v33
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_clause 0x7
	buffer_load_u16 v73, v7, s[12:15], 0 offen
	buffer_load_u16 v74, v3, s[12:15], 0 offen
	buffer_load_u16 v75, v4, s[12:15], 0 offen
	buffer_load_u16 v76, v5, s[12:15], 0 offen
	buffer_load_u16 v77, v6, s[12:15], 0 offen
	buffer_load_u16 v78, v8, s[12:15], 0 offen
	buffer_load_u16 v79, v1, s[12:15], 0 offen
	buffer_load_u16 v80, v2, s[12:15], 0 offen
	v_mov_b32_e32 v7, v33
	v_mul_u32_u24_e32 v61, 0x110, v88
	v_mov_b32_e32 v11, v33
	v_mov_b32_e32 v13, v33
	v_dual_mov_b32 v29, v33 :: v_dual_and_b32 v58, 24, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v176, v54, 7, v61
	v_mov_b32_e32 v2, v33
	v_mov_b32_e32 v26, v33
	v_dual_mov_b32 v67, v33 :: v_dual_lshlrev_b32 v60, 4, v43
	v_xor_b32_e32 v45, 32, v176
	v_xor_b32_e32 v17, 0x90, v176
	v_xor_b32_e32 v22, 0xc0, v176
	v_xor_b32_e32 v23, 0xd0, v176
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshl_or_b32 v44, v88, 5, v58
	v_add_nc_u32_e32 v174, 0, v45
	v_add_nc_u32_e32 v45, 0, v17
	v_add_nc_u32_e32 v17, 0, v22
	v_xor_b32_e32 v24, 0xe0, v176
	v_dual_mov_b32 v32, v33 :: v_dual_add_nc_u32 v47, 0, v44
	v_xor_b32_e32 v18, 0xa0, v176
	scratch_store_b32 off, v17, off offset:120 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v23
	scratch_store_b32 off, v63, off offset:124 ; 4-byte Folded Spill
	v_xad_u32 v48, v44, 8, 0
	v_add_nc_u32_e32 v103, 0, v18
	v_xad_u32 v49, v44, 16, 0
	scratch_store_b32 off, v17, off offset:64 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v24
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshlrev_b32_e32 v43, 2, v88
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xad_u32 v44, v44, 24, 0
	v_mov_b32_e32 v5, v33
	v_mov_b32_e32 v12, v33
	scratch_store_b32 off, v17, off offset:100 ; 4-byte Folded Spill
	ds_load_b64 v[181:182], v47
	ds_load_b64 v[17:18], v48
	v_mov_b32_e32 v28, v33
	v_dual_mov_b32 v31, v33 :: v_dual_lshlrev_b32 v52, 1, v52
	v_dual_mov_b32 v69, v33 :: v_dual_lshlrev_b32 v62, 1, v88
	v_cmp_eq_u32_e64 s0, 0, v53
	v_lshlrev_b32_e32 v53, 2, v53
	v_and_or_b32 v56, v56, 30, v63
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshl_or_b32 v58, v88, 7, v60
	v_add_nc_u32_e32 v60, 0, v43
	v_lshl_or_b32 v173, v88, 6, v34
	v_xor_b32_e32 v34, 0x440, v168
	v_mov_b32_e32 v66, v33
	v_xad_u32 v52, v94, v52, 0
	v_or3_b32 v95, v62, v53, v54
	v_add3_u32 v178, 0, v54, v62
	v_lshlrev_b32_e32 v186, 2, v56
	v_add_nc_u32_e32 v50, 0, v58
	v_xad_u32 v51, v58, 16, 0
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[17:18], off offset:104 ; 8-byte Folded Spill
	ds_load_b64 v[17:18], v49
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v53, v58, 32, 0
	v_xad_u32 v56, v58, 48, 0
	v_xad_u32 v61, v58, 64, 0
	v_xad_u32 v62, 0x50, v58, 0
	v_xad_u32 v19, 0x60, v58, 0
	v_xad_u32 v20, 0x70, v58, 0
	v_lshl_add_u32 v188, v54, 1, v60
	v_add_nc_u32_e32 v189, 0, v34
	v_xor_b32_e32 v34, 16, v176
	v_xor_b32_e32 v58, 0x50, v176
	v_xor_b32_e32 v60, 0x60, v176
	v_xor_b32_e32 v63, 0x70, v176
	v_xor_b32_e32 v64, 0x80, v176
	v_xor_b32_e32 v21, 0xb0, v176
	v_mad_u64_u32 v[91:92], null, s46, v55, v[43:44]
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s1, s46, v43
	v_add_nc_u32_e32 v92, 0, v34
	v_add_nc_u32_e32 v100, 0, v58
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[17:18], off offset:112 ; 8-byte Folded Spill
	ds_load_b64 v[17:18], v44
	.loc	1 620 52                        ; attention_backward.py:620:52
	v_lshlrev_b32_e32 v96, 4, v57
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v57, 16, v59
	v_add_nc_u32_e32 v102, 0, v63
	v_add_nc_u32_e32 v43, 0, v64
	v_add_nc_u32_e32 v34, 0, v21
	v_add_nc_u32_e32 v101, 0, v60
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s4, s44, v57
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v89, 1, v54
	v_xor_b32_e32 v54, 64, v176
	v_xor_b32_e32 v46, 48, v176
	v_xor_b32_e32 v81, 0xf0, v176
	v_xor_b32_e32 v82, 0x90, v95
	v_xor_b32_e32 v83, 0x120, v95
	v_xor_b32_e32 v84, 0x1b0, v95
	v_xor_b32_e32 v85, 16, v173
	v_xor_b32_e32 v86, 32, v173
	v_xor_b32_e32 v87, 48, v173
	.loc	1 603 39                        ; attention_backward.py:603:39
	s_sub_i32 s8, s21, s34
	v_dual_mov_b32 v72, v33 :: v_dual_add_nc_u32 v179, 0, v54
	v_mad_u64_u32 v[47:48], null, s46, 20, v[91:92]
	.loc	1 603 25 is_stmt 0              ; attention_backward.py:603:25
	s_max_i32 s9, s8, 0
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v3, v33
	v_mov_b32_e32 v4, v33
	v_mov_b32_e32 v6, v33
	v_mov_b32_e32 v8, v33
	v_dual_mov_b32 v70, v33 :: v_dual_add_nc_u32 v221, 0, v46
	v_add_nc_u32_e32 v180, 0, v81
	v_add_nc_u32_e32 v207, 0, v82
	v_add_nc_u32_e32 v208, 0, v83
	v_add_nc_u32_e32 v209, 0, v84
	v_add_nc_u32_e32 v210, 0, v85
	v_add_nc_u32_e32 v211, 0, v86
	.loc	1 604 45 is_stmt 1              ; attention_backward.py:604:45
	s_and_b32 s40, s9, 0x7fffffe0
	v_add_nc_u32_e32 v212, 0, v87
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v48, v89, v88
	v_xor_b32_e32 v222, 4, v186
	s_cmpk_lt_i32 s8, 0x800
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt vmcnt(9)
	ds_store_b128 v52, v[35:38]
	s_waitcnt vmcnt(8)
	ds_store_b128 v52, v[39:42] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[213:216], v50
	ds_load_b128 v[217:220], v51
	ds_load_b128 v[237:240], v53
	ds_load_b128 v[241:244], v56
	ds_load_b128 v[245:248], v61
	ds_load_b128 v[249:252], v62
	ds_load_b128 v[57:60], v19
	ds_load_b128 v[61:64], v20
	v_mad_u64_u32 v[49:50], null, s46, 12, v[91:92]
	v_mad_u64_u32 v[50:51], null, s46, 24, v[91:92]
	v_mad_u64_u32 v[53:54], null, s46, 28, v[91:92]
	v_mov_b32_e32 v56, v18
	v_dual_mov_b32 v42, v34 :: v_dual_mov_b32 v55, v17
	.loc	1 620 52                        ; attention_backward.py:620:52
	v_cmp_gt_i32_e64 s5, s45, v96
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v223, 16, v73
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v18, 16, v74
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v20, 16, v75
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v22, 16, v76
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v21, 16, v77
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v23, 16, v78
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v44, 16, v79
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v80
	v_add_nc_u32_e32 v54, s7, v91
	s_cselect_b32 s51, -1, 0
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s29, s31, 0xffff
	s_and_b32 s53, s39, 0xffff
	s_and_b32 s57, s41, 0xffff
	s_and_b32 s37, s37, 0xffff
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v88, off offset:128
	scratch_store_b32 off, v89, off offset:132
	s_waitcnt lgkmcnt(5)
	scratch_store_b128 off, v[237:240], off ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(4)
	scratch_store_b128 off, v[241:244], off offset:16 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(3)
	scratch_store_b128 off, v[245:248], off offset:32 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(2)
	scratch_store_b128 off, v[249:252], off offset:48 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[57:60], off offset:68 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[61:64], off offset:84 ; 16-byte Folded Spill
	s_branch .LBB0_2
.LBB0_1:                                ; %Flow255
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 29 is_stmt 0                ; attention_backward.py:0:29
	s_xor_b32 s7, s33, -1
	s_movk_i32 s6, 0x800
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_mov_b32 s33, 0
	s_cbranch_vccz .LBB0_5
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s51
	s_cbranch_vccnz .LBB0_1
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 613 25                        ; attention_backward.py:613:25
	s_or_b32 s41, s35, s6
	s_mov_b32 s60, s40
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 25 is_stmt 0                ; attention_backward.py:0:25
	v_lshl_add_u32 v38, s46, 2, v91
	.loc	1 616 25 is_stmt 1              ; attention_backward.py:616:25
	s_or_b32 s6, s60, s41
	v_or_b32_e32 v37, s41, v171
	v_or_b32_e32 v34, s6, v171
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s6, s6, s46
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_mov_b32 s30, s26
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v38, s6, v38, 2
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v37, s60, v37, 1
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_mad_u64_u32 v[34:35], null, v34, s45, v[96:97]
	v_or_b32_e32 v35, s41, v48
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v39, 0x80000000, v38, s1
	v_add_lshl_u32 v38, s6, v54, 2
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_mov_b32 s31, s27
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s54, s26
	.loc	1 624 25                        ; attention_backward.py:624:25
	v_or_b32_e32 v35, s60, v35
	.loc	1 623 39                        ; attention_backward.py:623:39
	buffer_load_u16 v82, v37, s[28:31], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v40, 0x80000000, v38, s1
	v_add_lshl_u32 v38, s6, v49, 2
	v_add_lshl_u32 v37, s6, v91, 2
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v36, 1, v35
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v35, 2, v35
	s_mov_b32 s55, s27
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v85, 0x80000000, v38, s1
	v_lshl_add_u32 v38, s46, 4, v91
	v_cndmask_b32_e64 v37, 0x80000000, v37, s1
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v34, 0x80000000, v34, s5
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s58, s26
	s_mov_b32 s59, s27
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v38, s6, v38, 2
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v104, 0x1800, v188
	v_add_nc_u32_e32 v132, 0x1c00, v188
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v86, 0x80000000, v38, s1
	v_add_lshl_u32 v38, s6, v47, 2
	v_mov_b32_e32 v24, v23
	v_mov_b32_e32 v52, v50
	.loc	1 651 43                        ; attention_backward.py:651:43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v87, 0x80000000, v38, s1
	v_add_lshl_u32 v38, s6, v50, 2
	.loc	1 651 43                        ; attention_backward.py:651:43
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v88, 0x80000000, v38, s1
	v_add_lshl_u32 v38, s6, v53, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v89, 0x80000000, v38, s1
	.loc	1 623 39                        ; attention_backward.py:623:39
	buffer_load_u16 v83, v36, s[28:31], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v81, v35, s[52:55], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v84, v35, s[56:59], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b128 v[35:38], v37, s[36:39], 0 offen
	buffer_load_b128 v[73:76], v39, s[36:39], 0 offen
	buffer_load_b128 v[77:80], v40, s[36:39], 0 offen
	buffer_load_b128 v[192:195], v85, s[36:39], 0 offen
	buffer_load_b128 v[196:199], v86, s[36:39], 0 offen
	buffer_load_b128 v[224:227], v87, s[36:39], 0 offen
	buffer_load_b128 v[228:231], v88, s[36:39], 0 offen
	buffer_load_b128 v[232:235], v89, s[36:39], 0 offen
	.loc	1 615 36                        ; attention_backward.py:615:36
	buffer_load_b128 v[87:90], v34, s[24:27], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v34, 0, v94
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v39, 0x800, v188
	v_add_nc_u32_e32 v40, 0xc00, v188
	v_add_nc_u32_e32 v85, 0x1000, v188
	v_add_nc_u32_e32 v86, 0x1400, v188
	s_waitcnt vmcnt(8)
	ds_store_b128 v34, v[35:38]
	s_waitcnt vmcnt(7)
	ds_store_b128 v34, v[73:76] offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b128 v34, v[77:80] offset:2048
	s_waitcnt vmcnt(5)
	ds_store_b128 v34, v[192:195] offset:3072
	s_waitcnt vmcnt(4)
	ds_store_b128 v34, v[196:199] offset:4096
	s_waitcnt vmcnt(3)
	ds_store_b128 v34, v[224:227] offset:5120
	s_waitcnt vmcnt(2)
	ds_store_b128 v34, v[228:231] offset:6144
	s_waitcnt vmcnt(1)
	ds_store_b128 v34, v[232:235] offset:7168
	v_add_nc_u32_e32 v34, 0x400, v188
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[130:131], v34 offset1:32
	ds_load_2addr_b32 v[136:137], v34 offset0:64 offset1:96
	ds_load_2addr_b32 v[128:129], v34 offset0:128 offset1:160
	ds_load_2addr_b32 v[138:139], v34 offset0:192 offset1:224
	ds_load_2addr_b32 v[126:127], v39 offset1:32
	ds_load_2addr_b32 v[140:141], v39 offset0:64 offset1:96
	ds_load_2addr_b32 v[124:125], v39 offset0:128 offset1:160
	ds_load_2addr_b32 v[142:143], v39 offset0:192 offset1:224
	ds_load_2addr_b32 v[122:123], v40 offset1:32
	ds_load_2addr_b32 v[144:145], v40 offset0:64 offset1:96
	ds_load_2addr_b32 v[120:121], v40 offset0:128 offset1:160
	ds_load_2addr_b32 v[146:147], v40 offset0:192 offset1:224
	ds_load_2addr_b32 v[118:119], v85 offset1:32
	ds_load_2addr_b32 v[148:149], v85 offset0:64 offset1:96
	ds_load_2addr_b32 v[116:117], v85 offset0:128 offset1:160
	ds_load_2addr_b32 v[150:151], v85 offset0:192 offset1:224
	ds_load_2addr_b32 v[114:115], v86 offset1:32
	ds_load_2addr_b32 v[152:153], v86 offset0:64 offset1:96
	ds_load_2addr_b32 v[112:113], v86 offset0:128 offset1:160
	ds_load_2addr_b32 v[154:155], v86 offset0:192 offset1:224
	ds_load_2addr_b32 v[110:111], v104 offset1:32
	ds_load_2addr_b32 v[156:157], v104 offset0:64 offset1:96
	ds_load_2addr_b32 v[108:109], v104 offset0:128 offset1:160
	ds_load_2addr_b32 v[158:159], v104 offset0:192 offset1:224
	ds_load_2addr_b32 v[106:107], v132 offset1:32
	ds_load_2addr_b32 v[160:161], v132 offset0:64 offset1:96
	ds_load_2addr_b32 v[104:105], v132 offset0:128 offset1:160
	ds_load_2addr_b32 v[162:163], v132 offset0:192 offset1:224
	ds_load_2addr_b32 v[134:135], v188 offset1:32
	ds_load_2addr_b32 v[164:165], v188 offset0:64 offset1:96
	ds_load_2addr_b32 v[132:133], v188 offset0:128 offset1:160
	ds_load_2addr_b32 v[166:167], v188 offset0:192 offset1:224
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v34, 0, v168
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v34, v[35:38]
	ds_store_b128 v34, v[196:199] offset:4096
	ds_store_b128 v189, v[73:76]
	ds_store_b128 v189, v[224:227] offset:4096
	ds_store_b128 v190, v[77:80]
	ds_store_b128 v190, v[228:231] offset:4096
	ds_store_b128 v191, v[192:195]
	ds_store_b128 v191, v[232:235] offset:4096
	v_add_nc_u32_e32 v34, 0, v176
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v34
	ds_load_b128 v[73:76], v92
	scratch_load_b32 v41, off, off offset:120 ; 4-byte Folded Reload
	v_dual_mov_b32 v46, v45 :: v_dual_lshlrev_b32 v83, 16, v83
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 640 41                        ; attention_backward.py:640:41
	v_mul_f32_e32 v83, s50, v83
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v38, v34, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	v_cmp_o_f32_e64 s6, v35, v35
	v_cmp_o_f32_e64 s7, v36, v36
	v_cmp_o_f32_e64 s8, v37, v37
	v_add3_u32 v38, v34, v38, 0x7fff
	v_bfe_u32 v34, v35, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s9, v73, v73
	v_cmp_o_f32_e64 s10, v74, v74
	v_cmp_o_f32_e64 s11, v75, v75
	v_cmp_o_f32_e64 s12, v76, v76
	v_add3_u32 v39, v35, v34, 0x7fff
	v_bfe_u32 v34, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v40, v36, v34, 0x7fff
	v_bfe_u32 v34, v37, 16, 1
	v_add3_u32 v77, v37, v34, 0x7fff
	v_bfe_u32 v34, v73, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v78, v73, v34, 0x7fff
	v_bfe_u32 v34, v74, 16, 1
	v_add3_u32 v79, v74, v34, 0x7fff
	v_bfe_u32 v34, v75, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v80, v75, v34, 0x7fff
	v_bfe_u32 v34, v76, 16, 1
	v_add3_u32 v85, v76, v34, 0x7fff
	ds_load_b128 v[34:37], v174
	ds_load_b128 v[73:76], v221
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v86, v34, 16, 1
	v_cmp_o_f32_e64 s13, v34, v34
	v_cmp_o_f32_e64 s14, v35, v35
	v_cmp_o_f32_e64 s15, v36, v36
	v_cmp_o_f32_e64 s16, v37, v37
	v_add3_u32 v34, v34, v86, 0x7fff
	v_bfe_u32 v86, v35, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s17, v73, v73
	v_cmp_o_f32_e64 s18, v74, v74
	v_cmp_o_f32_e64 s19, v75, v75
	v_cmp_o_f32_e64 s20, v76, v76
	v_add3_u32 v35, v35, v86, 0x7fff
	v_bfe_u32 v86, v36, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v34.h, s13
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v34, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v36, v36, v86, 0x7fff
	v_bfe_u32 v86, v37, 16, 1
	v_cndmask_b16 v78.l, 0x7fff, v36.h, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v37, v37, v86, 0x7fff
	v_bfe_u32 v86, v73, 16, 1
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v36, v33
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v86, v73, v86, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.l, 0x7fff, v86.h, s17
	v_add3_u32 v192, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	v_cndmask_b16 v74.l, 0x7fff, v40.h, s7
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v40, v33
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v74.h, 0x7fff, v77.h, s8
	v_cndmask_b16 v77.h, 0x7fff, v35.h, s14
	v_add3_u32 v193, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	v_cndmask_b16 v75.l, 0x7fff, v78.h, s9
	v_cndmask_b16 v78.h, 0x7fff, v37.h, s16
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v37, v33
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v194, v76, v73, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v38.h, vcc_lo
	v_cndmask_b16 v73.h, 0x7fff, v39.h, s6
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v231, v40
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v75.h, 0x7fff, v79.h, s10
	v_cndmask_b16 v76.l, 0x7fff, v80.h, s11
	v_cndmask_b16 v76.h, 0x7fff, v85.h, s12
	v_cndmask_b16 v79.h, 0x7fff, v192.h, s18
	v_cndmask_b16 v80.l, 0x7fff, v193.h, s19
	v_cndmask_b16 v80.h, 0x7fff, v194.h, s20
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v230, v39 :: v_dual_mov_b32 v225, v34
	v_dual_mov_b32 v229, v38 :: v_dual_mov_b32 v228, v37
	v_dual_mov_b32 v227, v36 :: v_dual_mov_b32 v226, v35
	v_mov_b32_e32 v224, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[224:231], v[213:220], v[73:80], v[224:231]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[73:76], v179
	ds_load_b128 v[77:80], v100
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v85, v73, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_cmp_o_f32_e64 s6, v74, v74
	v_cmp_o_f32_e64 s7, v75, v75
	v_cmp_o_f32_e64 s8, v76, v76
	v_add3_u32 v85, v73, v85, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s9, v77, v77
	v_cmp_o_f32_e64 s10, v78, v78
	v_cmp_o_f32_e64 s11, v79, v79
	v_cmp_o_f32_e64 s12, v80, v80
	v_add3_u32 v86, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v192, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	v_add3_u32 v193, v76, v73, 0x7fff
	v_bfe_u32 v73, v77, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v194, v77, v73, 0x7fff
	v_bfe_u32 v73, v78, 16, 1
	v_add3_u32 v195, v78, v73, 0x7fff
	v_bfe_u32 v73, v79, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v196, v79, v73, 0x7fff
	v_bfe_u32 v73, v80, 16, 1
	v_add3_u32 v197, v80, v73, 0x7fff
	ds_load_b128 v[73:76], v101
	ds_load_b128 v[77:80], v102
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v198, v73, 16, 1
	v_cmp_o_f32_e64 s13, v73, v73
	v_cmp_o_f32_e64 s14, v74, v74
	v_cmp_o_f32_e64 s15, v75, v75
	v_cmp_o_f32_e64 s16, v76, v76
	v_add3_u32 v198, v73, v198, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s17, v77, v77
	v_cmp_o_f32_e64 s18, v78, v78
	v_cmp_o_f32_e64 s19, v79, v79
	v_cmp_o_f32_e64 s20, v80, v80
	v_add3_u32 v199, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	v_cndmask_b16 v74.l, 0x7fff, v192.h, s7
	v_cndmask_b16 v74.h, 0x7fff, v193.h, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v232, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	v_cndmask_b16 v75.l, 0x7fff, v194.h, s9
	v_cndmask_b16 v75.h, 0x7fff, v195.h, s10
	v_add3_u32 v233, v76, v73, 0x7fff
	v_bfe_u32 v73, v77, 16, 1
	v_cndmask_b16 v76.l, 0x7fff, v196.h, s11
	v_cndmask_b16 v76.h, 0x7fff, v197.h, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v234, v77, v73, 0x7fff
	v_bfe_u32 v73, v78, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v198.h, s13
	v_cndmask_b16 v77.h, 0x7fff, v199.h, s14
	v_add3_u32 v235, v78, v73, 0x7fff
	v_bfe_u32 v73, v79, 16, 1
	v_cndmask_b16 v78.l, 0x7fff, v232.h, s15
	v_cndmask_b16 v78.h, 0x7fff, v233.h, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v236, v79, v73, 0x7fff
	v_bfe_u32 v73, v80, 16, 1
	v_cndmask_b16 v79.l, 0x7fff, v234.h, s17
	v_cndmask_b16 v79.h, 0x7fff, v235.h, s18
	v_add3_u32 v80, v80, v73, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v85.h, vcc_lo
	v_cndmask_b16 v73.h, 0x7fff, v86.h, s6
	v_cndmask_b16 v80.l, 0x7fff, v236.h, s19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v80.h, 0x7fff, v80.h, s20
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_wmma_f32_16x16x16_bf16 v[224:231], v[237:244], v[73:80], v[224:231]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[73:76], v43
	ds_load_b128 v[77:80], v45
	.loc	1 649 34                        ; attention_backward.py:649:34
	s_waitcnt vmcnt(1)
	v_bfe_u32 v240, v90, 20, 4
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v237, 24, v90
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v239, v90, 8, 4
	v_bfe_u32 v241, v90, 16, 4
	v_bfe_u32 v242, v90, 24, 4
	v_mov_b32_e32 v45, v43
	v_mov_b32_e32 v43, v180
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v244, -16, v241
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v85, v73, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_cmp_o_f32_e64 s6, v74, v74
	v_cmp_o_f32_e64 s7, v75, v75
	v_cmp_o_f32_e64 s8, v76, v76
	v_add3_u32 v85, v73, v85, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s9, v77, v77
	v_cmp_o_f32_e64 s10, v78, v78
	v_cmp_o_f32_e64 s11, v79, v79
	v_cmp_o_f32_e64 s12, v80, v80
	v_add3_u32 v86, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v192, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	v_add3_u32 v193, v76, v73, 0x7fff
	v_bfe_u32 v73, v77, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v194, v77, v73, 0x7fff
	v_bfe_u32 v73, v78, 16, 1
	v_add3_u32 v195, v78, v73, 0x7fff
	v_bfe_u32 v73, v79, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v196, v79, v73, 0x7fff
	v_bfe_u32 v73, v80, 16, 1
	v_add3_u32 v197, v80, v73, 0x7fff
	ds_load_b128 v[73:76], v103
	ds_load_b128 v[77:80], v42
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v198, v73, 16, 1
	v_cmp_o_f32_e64 s13, v73, v73
	v_cmp_o_f32_e64 s14, v74, v74
	v_cmp_o_f32_e64 s15, v75, v75
	v_cmp_o_f32_e64 s16, v76, v76
	v_add3_u32 v198, v73, v198, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s17, v77, v77
	v_cmp_o_f32_e64 s18, v78, v78
	v_cmp_o_f32_e64 s19, v79, v79
	v_cmp_o_f32_e64 s20, v80, v80
	v_add3_u32 v199, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	v_cndmask_b16 v74.l, 0x7fff, v192.h, s7
	v_cndmask_b16 v74.h, 0x7fff, v193.h, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v232, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	v_cndmask_b16 v75.l, 0x7fff, v194.h, s9
	v_cndmask_b16 v75.h, 0x7fff, v195.h, s10
	v_add3_u32 v233, v76, v73, 0x7fff
	v_bfe_u32 v73, v77, 16, 1
	v_cndmask_b16 v76.l, 0x7fff, v196.h, s11
	v_cndmask_b16 v76.h, 0x7fff, v197.h, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v234, v77, v73, 0x7fff
	v_bfe_u32 v73, v78, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v198.h, s13
	v_cndmask_b16 v77.h, 0x7fff, v199.h, s14
	v_add3_u32 v235, v78, v73, 0x7fff
	v_bfe_u32 v73, v79, 16, 1
	v_cndmask_b16 v78.l, 0x7fff, v232.h, s15
	v_cndmask_b16 v78.h, 0x7fff, v233.h, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v236, v79, v73, 0x7fff
	v_bfe_u32 v73, v80, 16, 1
	v_cndmask_b16 v79.l, 0x7fff, v234.h, s17
	v_cndmask_b16 v79.h, 0x7fff, v235.h, s18
	v_add3_u32 v80, v80, v73, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v85.h, vcc_lo
	v_cndmask_b16 v73.h, 0x7fff, v86.h, s6
	v_cndmask_b16 v80.l, 0x7fff, v236.h, s19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v80.h, 0x7fff, v80.h, s20
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_wmma_f32_16x16x16_bf16 v[224:231], v[245:252], v[73:80], v[224:231]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_load_b128 v[73:76], v41
	v_mov_b32_e32 v41, v19
	scratch_load_b32 v19, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v85, v73, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_cmp_o_f32_e64 s6, v74, v74
	v_cmp_o_f32_e64 s7, v75, v75
	v_cmp_o_f32_e64 s8, v76, v76
	v_add3_u32 v85, v73, v85, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v86, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	v_add3_u32 v192, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v193, v76, v73, 0x7fff
	s_waitcnt vmcnt(0)
	ds_load_b128 v[77:80], v19
	v_mov_b32_e32 v19, v41
	scratch_load_b32 v41, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v73, v77, 16, 1
	v_cmp_o_f32_e64 s9, v77, v77
	v_cmp_o_f32_e64 s10, v78, v78
	v_cmp_o_f32_e64 s11, v79, v79
	v_cmp_o_f32_e64 s12, v80, v80
	v_add3_u32 v194, v77, v73, 0x7fff
	v_bfe_u32 v73, v78, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v195, v78, v73, 0x7fff
	v_bfe_u32 v73, v79, 16, 1
	v_add3_u32 v196, v79, v73, 0x7fff
	v_bfe_u32 v73, v80, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v197, v80, v73, 0x7fff
	s_waitcnt vmcnt(0)
	ds_load_b128 v[73:76], v41
	ds_load_b128 v[77:80], v180
	v_mov_b32_e32 v41, v102
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v198, v73, 16, 1
	v_cmp_o_f32_e64 s13, v73, v73
	v_cmp_o_f32_e64 s14, v74, v74
	v_cmp_o_f32_e64 s15, v75, v75
	v_cmp_o_f32_e64 s16, v76, v76
	v_add3_u32 v198, v73, v198, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s17, v77, v77
	v_cmp_o_f32_e64 s18, v78, v78
	v_cmp_o_f32_e64 s19, v79, v79
	v_cmp_o_f32_e64 s20, v80, v80
	v_add3_u32 v199, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	v_cndmask_b16 v74.l, 0x7fff, v192.h, s7
	v_cndmask_b16 v74.h, 0x7fff, v193.h, s8
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v193, v222, v88
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v232, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	v_cndmask_b16 v75.l, 0x7fff, v194.h, s9
	v_cndmask_b16 v75.h, 0x7fff, v195.h, s10
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v195, v222, v89
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v233, v76, v73, 0x7fff
	v_bfe_u32 v73, v77, 16, 1
	v_cndmask_b16 v76.l, 0x7fff, v196.h, s11
	v_cndmask_b16 v76.h, 0x7fff, v197.h, s12
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v197, v222, v90
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v234, v77, v73, 0x7fff
	v_bfe_u32 v73, v78, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v198.h, s13
	v_cndmask_b16 v77.h, 0x7fff, v199.h, s14
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v235, v78, v73, 0x7fff
	v_bfe_u32 v73, v79, 16, 1
	v_cndmask_b16 v78.l, 0x7fff, v232.h, s15
	v_cndmask_b16 v78.h, 0x7fff, v233.h, s16
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_alignbit_b32 v232, v90, v89, 24
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v233, v89, 20, 4
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v236, v79, v73, 0x7fff
	v_bfe_u32 v73, v80, 16, 1
	v_cndmask_b16 v79.l, 0x7fff, v234.h, s17
	v_cndmask_b16 v79.h, 0x7fff, v235.h, s18
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v234, v90, 0, 8
	v_lshrrev_b32_e32 v235, 8, v90
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v80, v80, v73, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v85.h, vcc_lo
	v_cndmask_b16 v73.h, 0x7fff, v86.h, s6
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v85, v186, v87
	ds_bpermute_b32 v86, v222, v87
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v80.l, 0x7fff, v236.h, s19
	v_cndmask_b16 v80.h, 0x7fff, v80.h, s20
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e64 v236.l, v90.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s18, v108, v108
	v_cmp_o_f32_e64 s19, v106, v106
	v_cmp_o_f32_e64 s20, v104, v104
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_wmma_f32_16x16x16_bf16 v[224:231], v[57:64], v[73:80], v[224:231]
	v_mov_b32_e32 v57, v213
	v_mov_b32_e32 v59, v215
	v_dual_mov_b32 v61, v217 :: v_dual_mov_b32 v58, v214
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v80, v224, v84
	v_sub_f32_e32 v79, v225, v84
	v_sub_f32_e32 v78, v226, v84
	v_sub_f32_e32 v77, v227, v84
	v_sub_f32_e32 v76, v228, v84
	v_sub_f32_e32 v75, v229, v84
	v_sub_f32_e32 v74, v230, v84
	v_sub_f32_e32 v73, v231, v84
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v84, v86, v85, s0
	v_cndmask_b32_e64 v192, v85, v86, s0
	ds_bpermute_b32 v86, v186, v88
	v_dual_mov_b32 v60, v216 :: v_dual_mov_b32 v63, v219
	v_mov_b32_e32 v64, v220
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v85, v193, v86, s0
	v_cndmask_b32_e64 v193, v86, v193, s0
	ds_bpermute_b32 v86, v186, v89
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[224:231], v[181:182], v[84:85], v[33:40] neg_lo:[1,1,0]
	scratch_load_b64 v[34:35], off, off offset:104 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v194, v195, v86, s0
	v_cndmask_b32_e64 v196, v86, v195, s0
	ds_bpermute_b32 v86, v186, v90
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v195, v197, v86, s0
	v_cndmask_b32_e64 v197, v86, v197, s0
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[224:231], v[34:35], v[194:195], v[224:231] neg_lo:[1,1,0]
	scratch_load_b64 v[34:35], off, off offset:112 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v194, v87, 0, 8
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s17, 0, v194.l
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[224:231], v[34:35], v[192:193], v[224:231] neg_lo:[1,1,0]
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v34, s60, v48
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b64 v[192:193], 24, v[87:88]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[224:231], v[55:56], v[196:197], v[224:231] neg_lo:[1,1,0]
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v34, s34, v34
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v196, v87, 16, 4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v193.l, 4, v192.l
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v35, v224
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s12, v93, v34
	v_cmp_le_i32_e64 s11, v0, v34
	v_cmp_le_i32_e64 s10, v98, v34
	v_cmp_le_i32_e64 s9, v97, v34
	v_cmp_le_i32_e64 s8, v99, v34
	v_cmp_le_i32_e64 s7, v169, v34
	v_cmp_le_i32_e64 s6, v170, v34
	v_cmp_le_i32_e32 vcc_lo, v172, v34
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v34.l, v87.l, 15
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v36, v225
	v_cvt_f32_i32_e32 v37, v226
	v_cvt_f32_i32_e32 v38, v227
	v_cvt_f32_i32_e32 v39, v228
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s13, 7, v34.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v34.l, v87.h, 15
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v40, v229
	v_cvt_f32_i32_e32 v84, v230
	v_cvt_f32_i32_e32 v85, v231
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v86, 15, v87
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s14, 7, v34.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v34.l, v88.l, 15
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v197, -16, v196
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_dual_mul_f32 v39, v83, v39 :: v_dual_and_b32 v198, 15, v88
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v224, v88, 16, 4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s15, 7, v34.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v34.l, v88.h, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e32 v34.h, 0
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v35, v83, v35
	v_mul_f32_e32 v36, v83, v36
	v_mul_f32_e32 v37, v83, v37
	v_mul_f32_e32 v38, v83, v38
	v_mul_f32_e32 v40, v83, v40
	v_mul_f32_e32 v84, v83, v84
	v_mul_f32_e32 v83, v83, v85
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v195, -16, v86
	v_or_b32_e32 v199, -16, v198
	v_or_b32_e32 v225, -16, v224
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s16, 7, v34.l
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v230, 24, v88
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v194, v86, v195, s13
	v_cndmask_b32_e64 v195, v196, v197, s14
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v196, 8, v87
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v197, v87, 8, 4
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v198, v198, v199, s15
	v_cndmask_b32_e64 v199, v224, v225, s16
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v224, 8, v88
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v86.l, v196.l, 15
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v228, -16, v197
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v225, v88, 8, 4
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v226, v192, 0, 8
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v192.l, v192.l, 15
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s13, 7, v86.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v86.l, v224.l, 15
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v34.l, 4, v87.l
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v37, v37, v20, -v81
	v_fma_f32 v38, v38, v22, -v81
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v197, v197, v228, s13
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v228, -16, v225
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s13, 7, v86.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v86.l, v230.l, 15
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v34.l, v34.l, 15
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v39, v39, v21, -v81
	v_fma_f32 v40, v40, v23, -v81
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v229, v225, v228, s13
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v225, v88, 24, 4
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s13, 7, v86.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_alignbit_b32 v86, v88, v87, 24
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v227, -16, v34
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v84, v84, v44, -v81
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v228, -16, v225
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s12, s2, s12
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v86, 15, v86
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s11, s2, s11
	s_and_b32 s10, s2, s10
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v231, v225, v228, s13
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s13, 7, v192.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v225, -16, v86
	.loc	1 676 21 is_stmt 1              ; attention_backward.py:676:21
	s_and_b32 s9, s2, s9
	s_and_b32 s8, s2, s8
	s_and_b32 s7, s2, s7
	s_and_b32 s6, s2, s6
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v225, v86, v225, s13
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e32 v86.l, v87.h
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v87, v87, 20, 4
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 vcc_lo, s2, vcc_lo
	v_dual_mov_b32 v23, v22 :: v_dual_mov_b32 v22, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v86, v86, 0, 8
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v192, -16, v87
	v_mov_b32_e32 v21, v49
	v_dual_mov_b32 v49, v181 :: v_dual_mov_b32 v50, v182
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s13, 0, v86.l
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_mov_b16_e32 v86.l, v88.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v253.l, v34.h
	v_mov_b16_e64 v255.l, v34.h
	v_mov_b16_e64 v182.l, v34.h
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v87, v87, v192, s13
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v86, v86, 0, 8
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v192, v88, 20, 4
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v252.l, v34.h
	v_mov_b16_e64 v206.l, v34.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v87, v87
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s13, 0, v86.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v228, -16, v192
	.loc	1 732 54 is_stmt 1              ; attention_backward.py:732:54
	v_mov_b16_e64 v254.l, v34.h
	v_mov_b16_e64 v183.l, v34.h
	v_mov_b16_e64 v205.l, v34.h
	v_mov_b16_e64 v184.l, v34.h
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v86, v192, v228, s13
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v228, 16, v82
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v82, v194
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v192, v34, v227, s17
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v185.l, v34.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v86, v86
	v_mul_f32_e32 v87, v228, v87
	v_mul_f32_e32 v82, v228, v82
	v_cvt_f32_i32_e32 v192, v192
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v177.l, v34.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v86, v228, v86
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v87, 0, v87, s3
	v_cndmask_b32_e64 v194, 0, v82, s3
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v82.l, 4, v196.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v192, v228, v192
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v86, 0, v86, s3
	v_cmp_o_f32_e64 s16, v87, v87
	v_mov_b16_e64 v34.l, v194.h
	v_cmp_o_f32_e64 s14, v194, v194
	v_cndmask_b32_e64 v192, 0, v192, s3
	v_cmp_o_f32_e64 s17, v86, v86
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v187.l, v34.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v227, 1, v34
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v34.l, v82.l, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v82, v196, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s15, v192, v192
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v202.l, v34.h
	v_mov_b16_e64 v204.l, v34.h
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v196, -16, v34
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s13, 0, v82.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_add3_u32 v82, v194, v227, 0x7fff
	v_mov_b16_e64 v194.h, v34.h
	v_mov_b16_e64 v194.l, v192.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v203.l, v34.h
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v85, v34, v196, s13
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v196, v35, v223, -v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v194, 1, v194
	v_add3_u32 v192, v192, v194, 0x7fff
	v_mov_b16_e64 v194.h, v34.h
	v_mov_b16_e64 v194.l, v87.h
	v_cndmask_b16 v192.l, 0x7fff, v82.h, s14
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v82, v197
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v192.h, 0x7fff, v192.h, s15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v194, 1, v194
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v82, v228, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v87, v87, v194, 0x7fff
	v_mov_b16_e64 v194.h, v34.h
	v_mov_b16_e64 v194.l, v86.h
	v_cndmask_b32_e64 v82, 0, v82, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v194, 1, v194
	v_mov_b16_e32 v34.l, v82.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s14, v82, v82
	v_add3_u32 v86, v86, v194, 0x7fff
	v_cndmask_b16 v194.h, 0x7fff, v87.h, s16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v87, 1, v34
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s16, v112, v112
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v82, v82, v87, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v87, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v87, v228, v87
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v87, 0, v87, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v34.l, v87.h
	v_cmp_o_f32_e64 s13, v87, v87
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v195, 1, v34
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v34.l, v193.l, 15
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v36, v36, v18, -v81
	v_fma_f32 v81, v83, v19, -v81
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v193.l, 0x7fff, v82.h, s14
	v_add3_u32 v35, v87, v195, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v35.l, v226.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v83, -16, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b16 v194.l, 0x7fff, v35.h, s13
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s15, 0, v35.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v35, v225
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v83, v34, v83, s15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v35, v228, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v82, 0, v35, s3
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v35.l, 4, v88.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v34.l, v82.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s14, v82, v82
	v_and_b32_e32 v87, 1, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v34.l, v35.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v35, v85
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v85.h, v34.h
	v_add3_u32 v82, v82, v87, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v35, v228, v35
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v195.l, 0x7fff, v82.h, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v35, 0, v35, s3
	v_mov_b16_e32 v85.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s13, v35, v35
	v_and_b32_e32 v85, 1, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v35, v35, v85, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v85, v88, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v193.h, 0x7fff, v35.h, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v35.l, v85.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v85, -16, v34
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s15, 0, v35.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v35, v198
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v198.h, 0x7fff, v86.h, s17
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s17, v110, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v85, v34, v85, s15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v35, v228, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v82, 0, v35, s3
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v35.l, 4, v224.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v34.l, v82.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s14, v82, v82
	v_and_b32_e32 v87, 1, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v34.l, v35.l, 15
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v35, v196
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v226, 0, v35, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_dual_mul_f32 v35, v226, v80 :: v_dual_and_b32 v238, 15, v90
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v35, s47, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v243, -16, v238
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v80, v35, 16, 1
	v_cmp_o_f32_e64 s12, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v80, v35, v80, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v35, v36
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v225, 0, v35, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v35, v225, v79
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v35, s47, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v36, v35, 16, 1
	v_cmp_o_f32_e64 s11, v35, v35
	v_add3_u32 v79, v35, v36, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v35, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v35, 0, v35, s10
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v36, v35, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v36, s47, v36
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v37, v36, 16, 1
	v_cmp_o_f32_e64 s10, v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v78, v36, v37, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v36, v38
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v36, 0, v36, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v37, v36, v77
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v37, s47, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v38, v37, 16, 1
	v_cmp_o_f32_e64 s9, v37, v37
	v_add3_u32 v77, v37, v38, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v37, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v227, 0, v37, s8
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v37, v227, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v37, s47, v37
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v38, v37, 16, 1
	v_cmp_o_f32_e64 s8, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v76, v37, v38, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v37, v40
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v37, 0, v37, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v38, v37, v75
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v38, s47, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v39, v38, 16, 1
	v_cmp_o_f32_e64 s7, v38, v38
	v_add3_u32 v75, v38, v39, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v38, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v38, 0, v38, s6
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v39, v38, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v39, s47, v39
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v40, v39, 16, 1
	v_cmp_o_f32_e64 s6, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add3_u32 v74, v39, v40, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v39, v81
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v81, -16, v34
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v39, 0, v39, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v40, v39, v73
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v40, s47, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v73, v40, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	v_add3_u32 v73, v40, v73, 0x7fff
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_bfe_i32 v40, v224, 0, 8
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v224, 0, v95
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s13, 0, v40.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v40, v82, v87, 0x7fff
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v40.l, 0x7fff, v80.h, s12
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v82, v83
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v83.h, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s12, v120, v120
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v196.l, 0x7fff, v40.h, s14
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v40.h, 0x7fff, v76.h, s8
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v224, v40
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v40.l, 0x7fff, v79.h, s11
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v82, v228, v82
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s14, v116, v116
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v224, v40 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v40.h, 0x7fff, v75.h, s7
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v207, v40
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v40.l, 0x7fff, v78.h, s10
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v75.h, v34.h
	v_cndmask_b32_e64 v82, 0, v82, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v207, v40 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v40.h, 0x7fff, v74.h, s6
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v208, v40
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v40.l, 0x7fff, v77.h, s9
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v83.l, v82.h
	v_cmp_o_f32_e64 s15, v82, v82
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v208, v40 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v40.h, 0x7fff, v73.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v209, v40
	ds_store_b16_d16_hi v209, v40 offset:512
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v40, v229
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v73, v34, v81, s13
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v83, 1, v83
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v40, v228, v40
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v229, v89, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v82, v82, v83, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s10, v38, v38
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s13, v118, v118
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v40, 0, v40, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v195.h, 0x7fff, v82.h, s15
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s15, v114, v114
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v34.l, v40.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	v_and_b32_e32 v74, 1, v34
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s11, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v40, v40, v74, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v74, v85
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v197.l, 0x7fff, v40.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v74, v228, v74
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v74, 0, v74, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v75.l, v74.h
	v_cmp_o_f32_e64 s6, v74, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v75, 1, v75
	v_add3_u32 v74, v74, v75, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v75, v199
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v196.h, 0x7fff, v74.h, s6
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v75, v228, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v75, 0, v75, s3
	v_mov_b16_e32 v34.l, v75.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s7, v75, v75
	v_and_b32_e32 v76, 1, v34
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v34.l, 4, v230.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v75, v75, v76, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v76, v230, 0, 8
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v230, v89, 8, 4
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v198.l, 0x7fff, v75.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v40.l, v76.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v76, -16, v34
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v40.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v40, v73
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v73.h, v34.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v74, v34, v76, s8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v40, v228, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v40, 0, v40, s3
	v_mov_b16_e32 v73.l, v40.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v73, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v73, v231
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e64 v231.l, v89.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v197.h, 0x7fff, v40.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v73, v228, v73
	v_cvt_f32_i32_e32 v40, v74
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v73, 0, v73, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v34.l, v73.h
	v_cmp_o_f32_e64 s6, v73, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v75, 1, v34
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v34.l, v89.l, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v73, v73, v75, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b16 v199.l, 0x7fff, v73.h, s6
	v_mov_b16_e32 v73.h, v34.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v40, v228, v40
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v40, 0, v40, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v73.l, v40.h
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v40, v40, v73, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v199.h, 0x7fff, v40.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v40, 0, v173
	ds_load_b128 v[81:84], v40
	ds_load_b128 v[85:88], v210
	ds_load_b128 v[73:76], v211
	ds_load_b128 v[77:80], v212
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v175, v[192:195]
	ds_store_b128 v175, v[196:199] offset:16
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v197, 15, v89
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v198, 8, v89
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v192.l, v89.h, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_bfe_u32 v199, v89, 16, 4
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v193.h, 4, v90.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v193.l, v90.l, 15
	v_and_b16 v194.l, v90.h, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b64 v[195:196], 24, v[89:90]
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v90, -16, v197
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v34.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v89.h, v198.l, 15
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v196, -16, v199
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s6, 7, v192.l
	v_cmp_lt_u16_e64 s8, 7, v194.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v194, v197, v90, vcc_lo
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v90, -16, v230
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v89.h
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v89.h, v235.l, 15
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v192.h, 4, v89.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v245, v195, 0, 8
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v89.l, 4, v195.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v34.l, v195.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v195, v199, v196, s6
	v_cndmask_b32_e32 v196, v230, v90, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v90, -16, v239
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v89.h
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v89.h, v237.l, 15
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s7, 7, v193.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v195, v195
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v199, v241, v244, s8
	v_cndmask_b32_e32 v230, v239, v90, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v90, -16, v242
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v89.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v197, v238, v243, s7
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v89.h, 4, v198.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v195, v228, v195
	v_cvt_f32_i32_e32 v199, v199
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v238, v242, v90, vcc_lo
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v90, 15, v232
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v34.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v195, 0, v195, s4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v199, v228, v199
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v232, -16, v90
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v199, 0, v199, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v232, v90, v232, vcc_lo
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v90, v231, 0, 8
	v_bfe_i32 v231, v236, 0, 8
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v34.l, v90.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v90, -16, v233
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v34.l
	v_mov_b16_e64 v34.l, v231.l
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v231, -16, v240
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v90, v233, v90, vcc_lo
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_mov_b16_e64 v233.h, v34.h
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v34.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v34.l, v192.h, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v90, v90
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v231, v240, v231, vcc_lo
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v192, -16, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_mul_f32_e32 v90, v228, v90
	v_cvt_f32_i32_e32 v231, v231
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v90, 0, v90, s4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v231, v228, v231
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v233.l, v90.h
	v_cmp_o_f32_e32 vcc_lo, v90, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v231, 0, v231, s4
	v_and_b32_e32 v233, 1, v233
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v194, v194
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s6, v231, v231
	v_add3_u32 v90, v90, v233, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v90.l, v229.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v194, v228, v194
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v233.h, v34.h
	v_mov_b16_e64 v233.l, v231.h
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v90.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v194, 0, v194, s4
	v_and_b32_e32 v233, 1, v233
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v229, v34, v192, s7
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v34.l, v194.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s7, v194, v194
	v_add3_u32 v231, v231, v233, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v192, 1, v34
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v34.l, v89.h, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v192, v194, v192, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v194, v198, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v194.h, 0x7fff, v90.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v198, -16, v34
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v192.l, 0x7fff, v192.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v90.l, v194.l
	v_cmp_gt_i16_e64 s8, 0, v90.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v90, v196
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v196, v34, v198, s8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v90, v228, v90
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s8, v195, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v196, v196
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v90, 0, v90, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v196, v228, v196
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v34.l, v90.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v90, v90
	v_cndmask_b32_e64 v196, 0, v196, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v198, 1, v34
	v_mov_b16_e64 v34.l, v195.h
	v_add3_u32 v90, v90, v198, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v198, 1, v34
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v34.l, v89.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v89, v229
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v229.h, v34.h
	v_cndmask_b16 v193.l, 0x7fff, v90.h, vcc_lo
	v_add3_u32 v195, v195, v198, 0x7fff
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v198, -16, v34
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v89, v228, v89
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v196, v196
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v194.l, 0x7fff, v195.h, s8
	v_cndmask_b32_e64 v89, 0, v89, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v229.l, v89.h
	v_cmp_o_f32_e64 s7, v89, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v229, 1, v229
	v_add3_u32 v89, v89, v229, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v89.l, v245.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v192.h, 0x7fff, v89.h, s7
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s9, 0, v89.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v89, v232
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v90, v34, v198, s9
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v89, v228, v89
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v198.h, v34.h
	v_mov_b16_e64 v198.l, v196.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s9, v36, v36
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v90, v90
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v89, 0, v89, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v198, 1, v198
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v90, v228, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v34.l, v89.h
	v_cmp_o_f32_e64 s7, v89, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v196, v196, v198, 0x7fff
	v_cndmask_b32_e64 v90, 0, v90, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v195, 1, v34
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v34.l, v193.h, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v193.h, 0x7fff, v196.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v89, v89, v195, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v89.l, v234.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v198, -16, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b16 v195.l, 0x7fff, v89.h, s7
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v89.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v89, v197
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v197, v34, v198, s8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v89, v228, v89
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s8, v90, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v197, v197
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v196, 0, v89, s4
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v89.l, 4, v235.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v197, v228, v197
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v34.l, v196.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s7, v196, v196
	v_cndmask_b32_e64 v197, 0, v197, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v198, 1, v34
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v34.l, v89.l, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v89, v235, 0, 8
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v229, -16, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v89.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_add3_u32 v89, v196, v198, 0x7fff
	v_mov_b16_e64 v196.h, v34.h
	v_mov_b16_e64 v196.l, v90.h
	v_cndmask_b16 v198.h, 0x7fff, v231.h, s6
	v_and_b32_e32 v196, 1, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v90, v90, v196, 0x7fff
	v_cndmask_b16 v196.l, 0x7fff, v89.h, s7
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v89, v230
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s7, v199, v199
	v_cndmask_b16 v195.h, 0x7fff, v90.h, s8
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v90, v34, v229, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v89, v228, v89
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v197, v197
	v_cndmask_b32_e64 v89, 0, v89, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v34.l, v89.h
	v_cmp_o_f32_e64 s6, v89, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v229, 1, v34
	v_mov_b16_e64 v34.l, v199.h
	v_add3_u32 v89, v89, v229, 0x7fff
	v_mov_b16_e64 v229.h, v34.h
	v_mov_b16_e64 v229.l, v197.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v229, 1, v229
	v_add3_u32 v197, v197, v229, 0x7fff
	v_and_b32_e32 v229, 1, v34
	v_cndmask_b16 v197.l, 0x7fff, v89.h, s6
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v34.l, 4, v237.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v196.h, 0x7fff, v197.h, vcc_lo
	v_add3_u32 v199, v199, v229, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v229, v237, 0, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v198.l, 0x7fff, v199.h, s7
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v89.l, v229.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v229, -16, v34
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s7, v225, v225
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v89.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v89, v90
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v90.h, v34.h
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v199, v34, v229, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v89, v228, v89
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v37, v37
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v199, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v89, 0, v89, s4
	v_mov_b16_e32 v90.l, v89.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v89, v89
	v_and_b32_e32 v90, 1, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v89, v89, v90, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v90, v238
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v197.h, 0x7fff, v89.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v90, v228, v90
	v_mul_f32_e32 v228, v228, v199
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v90, 0, v90, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v89, 0, v228, s4
	v_mov_b16_e32 v34.l, v90.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s6, v90, v90
	v_cmp_o_f32_e32 vcc_lo, v89, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v229, 1, v34
	v_add3_u32 v90, v90, v229, 0x7fff
	v_mov_b16_e32 v90.l, v89.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v199.l, 0x7fff, v90.h, s6
	v_mov_b16_e32 v90.h, v34.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s6, v227, v227
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v90, 1, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v89, v89, v90, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v90.l, v34.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v199.h, 0x7fff, v89.h, vcc_lo
	ds_store_b128 v175, v[192:195] offset:32
	ds_store_b128 v175, v[196:199] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v229, v178 offset:256
	ds_load_u16_d16 v228, v178
	ds_load_u16_d16 v230, v178 offset:512
	ds_load_u16_d16 v231, v178 offset:768
	ds_load_u16_d16 v232, v178 offset:1024
	ds_load_u16_d16 v234, v178 offset:1536
	ds_load_u16_d16 v233, v178 offset:1280
	ds_load_u16_d16 v240, v178 offset:1088
	ds_load_u16_d16 v239, v178 offset:832
	ds_load_u16_d16 v235, v178 offset:1792
	ds_load_u16_d16 v244, v178 offset:2048
	ds_load_u16_d16 v245, v178 offset:2304
	ds_load_u16_d16 v246, v178 offset:2560
	ds_load_u16_d16 v248, v178 offset:3072
	ds_load_u16_d16 v194, v178 offset:2624
	ds_load_u16_d16 v193, v178 offset:2368
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v240, v178 offset:1216
	ds_load_u16_d16_hi v230, v178 offset:640
	ds_load_u16_d16_hi v231, v178 offset:896
	ds_load_u16_d16_hi v232, v178 offset:1152
	ds_load_u16_d16 v241, v178 offset:1344
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v194, v178 offset:2752
	ds_load_u16_d16_hi v234, v178 offset:1664
	ds_load_u16_d16_hi v233, v178 offset:1408
	ds_load_u16_d16 v236, v178 offset:64
	ds_load_u16_d16_hi v229, v178 offset:384
	ds_load_u16_d16_hi v228, v178 offset:128
	ds_load_u16_d16 v238, v178 offset:576
	ds_load_u16_d16 v237, v178 offset:320
	ds_load_u16_d16_hi v235, v178 offset:1920
	ds_load_u16_d16 v242, v178 offset:1600
	ds_load_u16_d16 v192, v178 offset:2112
	ds_load_u16_d16 v243, v178 offset:1856
	ds_load_u16_d16_hi v239, v178 offset:960
	ds_load_u16_d16 v251, v178 offset:3840
	ds_load_u16_d16 v249, v178 offset:3328
	ds_load_u16_d16 v247, v178 offset:2816
	ds_load_u16_d16 v250, v178 offset:3584
	ds_load_u16_d16 v199, v178 offset:3904
	ds_load_u16_d16 v196, v178 offset:3136
	ds_load_u16_d16 v198, v178 offset:3648
	ds_load_u16_d16 v197, v178 offset:3392
	ds_load_u16_d16_hi v248, v178 offset:3200
	ds_load_u16_d16 v195, v178 offset:2880
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v193, v178 offset:2496
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v241, v178 offset:1472
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v242, v178 offset:1728
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v243, v178 offset:1984
	ds_load_u16_d16_hi v244, v178 offset:2176
	ds_load_u16_d16_hi v192, v178 offset:2240
	ds_load_u16_d16_hi v236, v178 offset:192
	ds_load_u16_d16_hi v238, v178 offset:704
	ds_load_u16_d16_hi v237, v178 offset:448
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v249, v178 offset:3456
	ds_load_u16_d16_hi v245, v178 offset:2432
	ds_load_u16_d16_hi v246, v178 offset:2688
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v247, v178 offset:2944
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v250, v178 offset:3712
	ds_load_u16_d16_hi v251, v178 offset:3968
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v199, v178 offset:4032
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v195, v178 offset:3008
	ds_load_u16_d16_hi v196, v178 offset:3264
	ds_load_u16_d16_hi v198, v178 offset:3776
	ds_load_u16_d16_hi v197, v178 offset:3520
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[228:235], v[81:88], v[25:32]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v226, v226
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v228.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v229, v110, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[65:72], v[236:243], v[81:88], v[65:72]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v232.l, v34.h
	v_mov_b16_e64 v233.l, v34.h
	v_mov_b16_e64 v234.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v240, v110, v229, 0x7fff
	v_bfe_u32 v229, v108, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v235.l, v34.h
	v_mov_b16_e64 v236.l, v34.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[244:251], v[73:80], v[25:32]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v237.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v241, v108, v229, 0x7fff
	v_bfe_u32 v229, v106, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v238.l, v34.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[65:72], v[192:199], v[73:80], v[65:72]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v73, v226, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v76.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v192, v166, 16, 1
	v_add3_u32 v242, v106, v229, 0x7fff
	v_bfe_u32 v229, v104, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v73, v226, v73, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v73.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v193, v166, v192, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v192.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v243, v104, v229, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v73.h, 0x7fff, v73.h, vcc_lo
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v193.l, v34.h
	v_mov_b16_e64 v194.l, v34.h
	v_mov_b16_e64 v195.l, v34.h
	v_mov_b16_e64 v196.l, v34.h
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v74, v226, v73
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e64 v226.l, v34.h
	.loc	1 732 54 is_stmt 1              ; attention_backward.py:732:54
	v_mov_b16_e64 v197.l, v34.h
	v_mov_b16_e64 v198.l, v34.h
	v_mov_b16_e64 v199.l, v34.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v75, v74, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v239.l, v34.h
	v_mov_b16_e64 v249.l, v34.h
	v_mov_b16_e64 v251.l, v34.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v74, v74, v75, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v75, v227, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v248.l, v34.h
	v_mov_b16_e64 v250.l, v34.h
	v_mov_b16_e64 v231.l, v34.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v34.l, 0x7fff, v74.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v75, v227, v75, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v164, v164
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v230.l, v34.h
	v_mov_b16_e64 v229.l, v34.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v76.h, 0x7fff, v75.h, s6
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v224, v73
	ds_store_b16_d16_hi v224, v76 offset:512
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v75, v227, v76
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v76, v36, 16, 1
	v_bfe_u32 v73, v37, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v227.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v77, v75, 16, 1
	v_cmp_o_f32_e64 s6, v75, v75
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_add3_u32 v76, v36, v76, 0x7fff
	v_add3_u32 v73, v37, v73, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v75, v75, v77, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v77, v225, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v226.h, 0x7fff, v76.h, s9
	v_cndmask_b16 v90.h, 0x7fff, v73.h, s8
	v_bfe_u32 v73, v35, 16, 1
	v_cmp_o_f32_e64 s8, v35, v35
	v_add3_u32 v77, v225, v77, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v77.l, v34.h
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v36, v36, v226
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_add3_u32 v73, v35, v73, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v37, v37, v90
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v77.h, 0x7fff, v77.h, s7
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v78, v225, v77
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v207, v77
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v77, v38, 16, 1
	v_cndmask_b16 v225.h, 0x7fff, v73.h, s8
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v225.l, v34.h
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v79, v78, 16, 1
	v_cmp_o_f32_e64 s7, v78, v78
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_add3_u32 v77, v38, v77, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v35, v35, v225
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_add3_u32 v89, v78, v79, 0x7fff
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_bfe_u32 v78, v39, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v89.l, 0x7fff, v75.h, s6
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v227.h, 0x7fff, v77.h, s10
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s6, v166, v166
	v_cmp_o_f32_e64 s10, v124, v124
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v78, v39, v78, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v38, v38, v227
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v193.h, 0x7fff, v193.h, s6
	v_cmp_o_f32_e64 s6, v150, v150
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v228.h, 0x7fff, v78.h, s11
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v207, v90 offset:512
	ds_store_b16_d16_hi v208, v225
	ds_store_b16_d16_hi v208, v227 offset:512
	ds_store_b16_d16_hi v209, v226
	ds_store_b16_d16_hi v209, v228 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[81:84], v40
	ds_load_b128 v[85:88], v210
	ds_load_b128 v[73:76], v211
	ds_load_b128 v[77:80], v212
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v224, v34
	ds_store_b16 v224, v89 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v34.l, 0x7fff, v89.h, s7
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v89, v164, 16, 1
	v_bfe_u32 v224, v150, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v39, v39, v228
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s7, v37, v37
	v_cmp_o_f32_e64 s8, v38, v38
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v89, v164, v89, 0x7fff
	v_add3_u32 v224, v150, v224, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s9, v39, v39
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v90, v122, 16, 1
	v_bfe_u32 v225, v118, 16, 1
	v_cndmask_b16 v192.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v136, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v136, v136
	v_cndmask_b16 v233.h, 0x7fff, v224.h, s6
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s6, v36, v36
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v224, v120, 16, 1
	v_add3_u32 v89, v136, v89, 0x7fff
	v_bfe_u32 v226, v116, 16, 1
	v_bfe_u32 v227, v114, 16, 1
	v_cmp_o_f32_e64 s11, v122, v122
	v_add3_u32 v90, v122, v90, 0x7fff
	v_cndmask_b16 v194.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v138, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v138, v138
	v_add3_u32 v224, v120, v224, 0x7fff
	v_add3_u32 v225, v118, v225, 0x7fff
	v_add3_u32 v226, v116, v226, 0x7fff
	v_add3_u32 v89, v138, v89, 0x7fff
	v_add3_u32 v227, v114, v227, 0x7fff
	v_bfe_u32 v228, v112, 16, 1
	v_cndmask_b16 v177.h, 0x7fff, v90.h, s11
	v_cndmask_b16 v187.h, 0x7fff, v224.h, s12
	v_cndmask_b16 v195.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v140, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v140, v140
	v_add3_u32 v228, v112, v228, 0x7fff
	v_cndmask_b16 v231.h, 0x7fff, v225.h, s13
	v_cndmask_b16 v230.h, 0x7fff, v226.h, s14
	v_add3_u32 v89, v140, v89, 0x7fff
	v_cndmask_b16 v229.h, 0x7fff, v227.h, s15
	v_cndmask_b16 v227.h, 0x7fff, v240.h, s17
	v_cndmask_b16 v226.h, 0x7fff, v241.h, s18
	v_cndmask_b16 v225.h, 0x7fff, v242.h, s19
	v_cndmask_b16 v196.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v142, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v142, v142
	v_cndmask_b16 v224.h, 0x7fff, v243.h, s20
	v_cndmask_b16 v228.h, 0x7fff, v228.h, s16
	v_mov_b32_e32 v102, v101
	v_add3_u32 v89, v142, v89, 0x7fff
	v_dual_mov_b32 v101, v100 :: v_dual_mov_b32 v100, v179
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v181, v140, v196 :: v_dual_sub_f32 v166, v166, v193
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v197.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v144, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v144, v144
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v164, v164, v192
	v_sub_f32_e32 v150, v150, v233
	v_sub_f32_e32 v180, v142, v197
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v89, v144, v89, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v233.l, v230.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s11, v123, v123
	v_cmp_o_f32_e64 s12, v121, v121
	v_cmp_o_f32_e64 s13, v119, v119
	v_cndmask_b16 v198.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v146, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v146, v146
	v_mov_b32_e32 v62, v218
	v_dual_mov_b32 v214, v99 :: v_dual_mov_b32 v99, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v89, v146, v89, 0x7fff
	v_dual_mov_b32 v97, v0 :: v_dual_mov_b32 v220, v174
	v_mov_b32_e32 v217, v172
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v179, v144, v198
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v199.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v148, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v148, v148
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v198.l, v177.h
	v_mov_b32_e32 v218, v173
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v172, v146, v199
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v89, v148, v89, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v199.l, v187.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v173, v138, v195
	v_dual_mov_b32 v216, v170 :: v_dual_mov_b32 v215, v169
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v232.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v152, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v152, v152
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v170, v136, v194 :: v_dual_mov_b32 v213, v98
	v_sub_f32_e32 v148, v148, v232
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v89, v152, v89, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v232.l, v231.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s14, v117, v117
	v_cmp_o_f32_e64 s15, v115, v115
	v_cmp_o_f32_e64 s16, v113, v113
	v_cndmask_b16 v234.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v154, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v154, v154
	v_cmp_o_f32_e64 s17, v111, v111
	v_cmp_o_f32_e64 s18, v109, v109
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v146, v152, v234
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v89, v154, v89, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v234.l, v229.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v152, v119, 16, 1
	v_cmp_o_f32_e64 s19, v107, v107
	v_cmp_o_f32_e64 s20, v105, v105
	v_cndmask_b16 v235.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v156, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v156, v156
	v_add3_u32 v152, v119, v152, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v219, v92 :: v_dual_sub_f32 v144, v154, v235
	v_add3_u32 v89, v156, v89, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v235.l, v228.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v154, v115, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v174.l, v34.h
	v_mov_b16_e64 v226.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v236.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v158, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v158, v158
	v_add3_u32 v154, v115, v154, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v120, v120, v187
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e32 v0.l, v34.h
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v89, v158, v89, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v92.l, v34.h
	v_mov_b16_e64 v228.l, v34.h
	v_mov_b16_e64 v227.l, v34.h
	v_mov_b16_e64 v225.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v237.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v160, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v160, v160
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v224.l, v34.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v106, v106, v225
	v_sub_f32_e32 v140, v158, v237
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v89, v160, v89, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v237.l, v226.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v158, v107, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v104, v104, v224
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v238.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v162, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v162, v162
	v_add3_u32 v158, v107, v158, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v138, v160, v238
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v89, v162, v89, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v238.l, v225.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v239.h, 0x7fff, v89.h, vcc_lo
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v89, v35, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v136, v162, v239
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v35, v35, v89, 0x7fff
	v_bfe_u32 v89, v36, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v239.l, v224.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v36, v36, v89, 0x7fff
	v_bfe_u32 v89, v37, 16, 1
	v_add3_u32 v37, v37, v89, 0x7fff
	v_bfe_u32 v89, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v35.l, 0x7fff, v37.h, s7
	v_add3_u32 v38, v38, v89, 0x7fff
	v_bfe_u32 v89, v39, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v207, v34
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v34.l, 0x7fff, v35.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v207, v35 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v35.l, 0x7fff, v38.h, s8
	v_add3_u32 v39, v39, v89, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v37, v130, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v208, v34
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v34.l, 0x7fff, v36.h, s6
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v208, v35 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v35.l, 0x7fff, v39.h, s9
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v209, v34
	ds_store_b16 v209, v35 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v35, v134, 16, 1
	v_bfe_u32 v36, v132, 16, 1
	v_bfe_u32 v38, v128, 16, 1
	v_bfe_u32 v39, v126, 16, 1
	v_bfe_u32 v89, v124, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v134, v134
	v_cmp_o_f32_e64 s6, v132, v132
	v_cmp_o_f32_e64 s7, v130, v130
	v_cmp_o_f32_e64 s8, v128, v128
	v_cmp_o_f32_e64 s9, v126, v126
	v_add3_u32 v35, v134, v35, 0x7fff
	v_add3_u32 v36, v132, v36, 0x7fff
	v_add3_u32 v37, v130, v37, 0x7fff
	v_add3_u32 v38, v128, v38, 0x7fff
	v_add3_u32 v39, v126, v39, 0x7fff
	v_add3_u32 v89, v124, v89, 0x7fff
	v_cndmask_b16 v182.h, 0x7fff, v35.h, vcc_lo
	v_cndmask_b16 v183.h, 0x7fff, v36.h, s6
	v_cndmask_b16 v0.h, 0x7fff, v37.h, s7
	v_cndmask_b16 v184.h, 0x7fff, v38.h, s8
	v_cndmask_b16 v185.h, 0x7fff, v39.h, s9
	v_cndmask_b16 v174.h, 0x7fff, v89.h, s10
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[240:243], v40
	ds_load_b128 v[244:247], v210
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v196.l, v185.h
	v_mov_b16_e64 v197.l, v174.h
	v_mov_b16_e64 v195.l, v184.h
	v_mov_b16_e64 v194.l, v0.h
	v_mov_b16_e64 v193.l, v183.h
	v_mov_b16_e64 v192.l, v182.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v142, v156, v236
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v236.l, v227.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v35, v165, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v165, v165
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[192:199], v[81:88], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v36, v167, 16, 1
	v_cmp_o_f32_e64 s6, v167, v167
	v_add3_u32 v35, v165, v35, 0x7fff
	v_cmp_o_f32_e64 s7, v131, v131
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[232:239], v[73:80], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v36, v167, v36, 0x7fff
	v_cmp_o_f32_e64 s8, v129, v129
	v_cmp_o_f32_e64 s9, v127, v127
	v_cmp_o_f32_e64 s10, v125, v125
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[192:199], v[240:247], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v192.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v137, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v137, v137
	v_cndmask_b16 v193.h, 0x7fff, v36.h, s6
	v_bfe_u32 v36, v151, 16, 1
	v_cmp_o_f32_e64 s6, v151, v151
	v_add3_u32 v35, v137, v35, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v192.l, v34.h
	v_mov_b16_e64 v193.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v36, v151, v36, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v194.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v194.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v139, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v139, v139
	v_cndmask_b16 v249.h, 0x7fff, v36.h, s6
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v195.l, v34.h
	v_mov_b16_e64 v196.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v35, v139, v35, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v197.l, v34.h
	v_mov_b16_e64 v198.l, v34.h
	v_mov_b16_e64 v199.l, v34.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v160, v165, v192
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v195.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v141, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v141, v141
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v162, v167, v193 :: v_dual_sub_f32 v165, v137, v194
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v167, v139, v195
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v35, v141, v35, 0x7fff
	v_dual_mov_b32 v98, v95 :: v_dual_mov_b32 v95, v168
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v89, v151, v249
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v137, v135, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v196.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v143, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v143, v143
	v_bfe_u32 v139, v133, 16, 1
	v_bfe_u32 v151, v121, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v168, v141, v196
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v35, v143, v35, 0x7fff
	v_bfe_u32 v141, v131, 16, 1
	v_cmp_o_f32_e64 s6, v133, v133
	v_add3_u32 v137, v135, v137, 0x7fff
	v_add3_u32 v139, v133, v139, 0x7fff
	v_cndmask_b16 v197.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v145, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v145, v145
	v_add3_u32 v141, v131, v141, 0x7fff
	v_add3_u32 v151, v121, v151, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v169, v143, v197
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v35, v145, v35, 0x7fff
	v_bfe_u32 v143, v129, 16, 1
	v_bfe_u32 v156, v111, 16, 1
	v_cndmask_b16 v202.h, 0x7fff, v141.h, s7
	v_cndmask_b16 v92.h, 0x7fff, v151.h, s12
	v_cndmask_b16 v198.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v147, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v147, v147
	v_add3_u32 v143, v129, v143, 0x7fff
	v_add3_u32 v156, v111, v156, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v200, v145, v198
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v35, v147, v35, 0x7fff
	v_bfe_u32 v145, v127, 16, 1
	v_cndmask_b16 v203.h, 0x7fff, v143.h, s8
	v_cndmask_b16 v151.h, 0x7fff, v152.h, s13
	v_cndmask_b16 v143.h, 0x7fff, v156.h, s17
	v_cndmask_b16 v199.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v149, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v149, v149
	v_add3_u32 v145, v127, v145, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v195.l, v203.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v201, v147, v199
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v35, v149, v35, 0x7fff
	v_bfe_u32 v147, v125, 16, 1
	v_cndmask_b16 v204.h, 0x7fff, v145.h, s9
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v199.l, v92.h
	v_mov_b16_e64 v194.l, v202.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v248.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v153, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v153, v153
	v_add3_u32 v147, v125, v147, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v196.l, v204.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v90, v149, v248
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v35, v153, v35, 0x7fff
	v_bfe_u32 v149, v123, 16, 1
	v_cndmask_b16 v205.h, 0x7fff, v147.h, s10
	v_cndmask_b16 v147.h, 0x7fff, v154.h, s15
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v248.l, v151.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v250.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v155, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v155, v155
	v_add3_u32 v149, v123, v149, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v197.l, v205.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v40, v153, v250
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v35, v155, v35, 0x7fff
	v_bfe_u32 v153, v117, 16, 1
	v_cndmask_b16 v206.h, 0x7fff, v149.h, s11
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v250.l, v147.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v132, v132, v183 :: v_dual_sub_f32 v125, v125, v205
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v251.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v157, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v157, v157
	v_add3_u32 v153, v117, v153, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v198.l, v206.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v39, v155, v251
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v35, v157, v35, 0x7fff
	v_bfe_u32 v155, v113, 16, 1
	v_cndmask_b16 v149.h, 0x7fff, v153.h, s14
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v132, v132
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v145.l, v34.h
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v252.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v159, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v159, v159
	v_add3_u32 v155, v113, v155, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v249.l, v149.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v38, v157, v252
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v35, v159, v35, 0x7fff
	v_bfe_u32 v157, v109, 16, 1
	v_cndmask_b16 v145.h, 0x7fff, v155.h, s16
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v252.l, v143.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v128, v128, v184
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v253.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v161, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v161, v161
	v_add3_u32 v157, v109, v157, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v251.l, v145.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v37, v159, v253
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v35, v161, v35, 0x7fff
	v_bfe_u32 v159, v105, 16, 1
	v_cndmask_b16 v141.h, 0x7fff, v157.h, s18
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v128, v128
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v126, v126, v185
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v254.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v163, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v163, v163
	v_add3_u32 v159, v105, v159, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v253.l, v141.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v36, v161, v254
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v35, v163, v35, 0x7fff
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v126, v126
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v124, v124, v174
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s10, v170, v170
	v_cmp_o_f32_e64 s18, v179, v179
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v255.h, 0x7fff, v35.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v135, v135
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s15, v124, v124
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v123, v123, v206
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v161.l, v34.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v35, v163, v255
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v161.h, 0x7fff, v137.h, vcc_lo
	v_cndmask_b16 v163.h, 0x7fff, v139.h, s6
	v_cndmask_b16 v139.h, 0x7fff, v158.h, s19
	v_cndmask_b16 v137.h, 0x7fff, v159.h, s20
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_load_b128 v[152:155], v211
	ds_load_b128 v[156:159], v212
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v192.l, v161.h
	v_mov_b16_e64 v193.l, v163.h
	v_mov_b16_e64 v254.l, v139.h
	v_mov_b16_e64 v255.l, v137.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s19, v120, v120
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v163.l, v34.h
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[192:199], v[81:88], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v130, v0
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v164, v164
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v92, v121, v92
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v181, v181
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[248:255], v[73:80], v[9:16]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v141.l, v34.h
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v166, v166
	v_cmp_o_f32_e64 s12, v173, v173
	v_cmp_o_f32_e64 s16, v180, v180
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[192:199], v[240:247], v[9:16]
	v_mov_b32_e32 v192, v93
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v122, v122, v177
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[232:239], v[152:159], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v93, v134, v182
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[248:255], v[152:159], v[9:16]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v152, v132, 16, 1
	v_cmp_o_f32_e64 s17, v122, v122
	v_cmp_o_f32_e64 s20, v172, v172
	v_bfe_u32 v134, v93, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v93, v93
	v_add3_u32 v132, v132, v152, 0x7fff
	v_bfe_u32 v152, v166, 16, 1
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v149.l, v34.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v93, v93, v134, 0x7fff
	v_bfe_u32 v134, v164, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v151.l, v34.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v153, v166, v152, 0x7fff
	v_bfe_u32 v152, v128, 16, 1
	v_cndmask_b16 v153.l, 0x7fff, v132.h, s7
	v_add3_u32 v134, v164, v134, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v147.l, v34.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v153.h, 0x7fff, v153.h, s8
	v_add3_u32 v128, v128, v152, 0x7fff
	v_bfe_u32 v152, v173, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v143.l, v34.h
	v_mov_b16_e64 v139.l, v34.h
	v_mov_b16_e64 v137.l, v34.h
	v_mov_b32_e32 v174, v220
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v155, v173, v152, 0x7fff
	v_bfe_u32 v152, v126, 16, 1
	v_cndmask_b16 v155.l, 0x7fff, v128.h, s11
	v_dual_mov_b32 v173, v218 :: v_dual_sub_f32 v34, v105, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v155.h, 0x7fff, v155.h, s12
	v_add3_u32 v126, v126, v152, 0x7fff
	v_bfe_u32 v152, v181, 16, 1
	v_cmp_o_f32_e64 s12, v167, v167
	s_clause 0x3                            ; 64-byte Folded Reload
	scratch_load_b128 v[237:240], off, off
	scratch_load_b128 v[241:244], off, off offset:16
	scratch_load_b128 v[245:248], off, off offset:32
	scratch_load_b128 v[249:252], off, off offset:48
	v_add3_u32 v156, v181, v152, 0x7fff
	v_bfe_u32 v152, v124, 16, 1
	v_cndmask_b16 v156.l, 0x7fff, v126.h, s13
	v_dual_mov_b32 v182, v50 :: v_dual_mov_b32 v181, v49
	v_mov_b32_e32 v49, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v124, v124, v152, 0x7fff
	v_bfe_u32 v152, v180, 16, 1
	v_dual_mov_b32 v21, v22 :: v_dual_mov_b32 v22, v23
	v_mov_b32_e32 v23, v24
	v_cndmask_b16 v156.h, 0x7fff, v156.h, s14
	v_add3_u32 v157, v180, v152, 0x7fff
	v_bfe_u32 v152, v122, 16, 1
	v_cndmask_b16 v157.l, 0x7fff, v124.h, s15
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v124, v127, v204
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s15, v125, v125
	v_mov_b32_e32 v180, v43
	v_add3_u32 v122, v122, v152, 0x7fff
	v_bfe_u32 v152, v179, 16, 1
	v_cmp_o_f32_e64 s13, v124, v124
	v_mov_b32_e32 v43, v45
	v_cndmask_b16 v157.h, 0x7fff, v157.h, s16
	v_cmp_o_f32_e64 s8, v162, v162
	v_add3_u32 v158, v179, v152, 0x7fff
	v_bfe_u32 v152, v120, 16, 1
	v_cndmask_b16 v158.l, 0x7fff, v122.h, s17
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v122, v129, v203 :: v_dual_mov_b32 v179, v100
	v_mov_b32_e32 v100, v101
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v120, v120, v152, 0x7fff
	v_bfe_u32 v152, v172, 16, 1
	v_mov_b32_e32 v101, v102
	v_cndmask_b16 v158.h, 0x7fff, v158.h, s18
	v_cmp_o_f32_e64 s11, v122, v122
	v_cmp_o_f32_e64 s14, v168, v168
	v_add3_u32 v159, v172, v152, 0x7fff
	v_cndmask_b16 v152.l, 0x7fff, v93.h, vcc_lo
	v_cndmask_b16 v159.l, 0x7fff, v120.h, s19
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v93, v133, v163
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v130, v0, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v120, v131, v202
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v0, v0
	v_cndmask_b16 v152.h, 0x7fff, v134.h, s6
	v_bfe_u32 v126, v93, 16, 1
	v_add3_u32 v0, v0, v130, 0x7fff
	v_bfe_u32 v127, v120, 16, 1
	v_bfe_u32 v130, v170, 16, 1
	v_cmp_o_f32_e64 s7, v93, v93
	v_add3_u32 v93, v93, v126, 0x7fff
	v_cndmask_b16 v154.l, 0x7fff, v0.h, s9
	v_cmp_o_f32_e64 s9, v120, v120
	v_add3_u32 v127, v120, v127, 0x7fff
	v_bfe_u32 v120, v165, 16, 1
	v_add3_u32 v130, v170, v130, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v135, v161
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v126, v162, 16, 1
	v_cmp_o_f32_e64 s19, v92, v92
	v_add3_u32 v128, v165, v120, 0x7fff
	v_bfe_u32 v120, v122, 16, 1
	v_cndmask_b16 v154.h, 0x7fff, v130.h, s10
	v_bfe_u32 v121, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v159.h, 0x7fff, v159.h, s20
	v_add3_u32 v129, v122, v120, 0x7fff
	v_bfe_u32 v120, v167, 16, 1
	v_add3_u32 v0, v0, v121, 0x7fff
	v_bfe_u32 v121, v160, 16, 1
	v_cmp_o_f32_e64 s6, v160, v160
	v_add3_u32 v126, v162, v126, 0x7fff
	v_add3_u32 v130, v167, v120, 0x7fff
	v_bfe_u32 v120, v124, 16, 1
	v_add3_u32 v121, v160, v121, 0x7fff
	v_cmp_o_f32_e64 s10, v165, v165
	v_cmp_o_f32_e64 s16, v169, v169
	v_cmp_o_f32_e64 s17, v123, v123
	v_add3_u32 v124, v124, v120, 0x7fff
	v_bfe_u32 v120, v168, 16, 1
	v_cmp_o_f32_e64 s18, v200, v200
	v_cmp_o_f32_e64 s20, v201, v201
	v_cndmask_b16 v121.l, 0x7fff, v93.h, s7
	v_cndmask_b16 v122.l, 0x7fff, v127.h, s9
	v_add3_u32 v131, v168, v120, 0x7fff
	v_bfe_u32 v120, v125, 16, 1
	v_cndmask_b16 v122.h, 0x7fff, v128.h, s10
	v_cndmask_b16 v124.l, 0x7fff, v124.h, s13
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[152:159], v[81:88], v[1:8]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v124.h, 0x7fff, v131.h, s14
	v_add3_u32 v125, v125, v120, 0x7fff
	v_bfe_u32 v120, v169, 16, 1
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v93, v108, v226
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s10, v146, v146
	v_cmp_o_f32_e64 s14, v142, v142
	v_cndmask_b16 v125.l, 0x7fff, v125.h, s15
	v_add3_u32 v132, v169, v120, 0x7fff
	v_bfe_u32 v120, v123, 16, 1
	v_bfe_u32 v108, v93, 16, 1
	v_cmp_o_f32_e64 s15, v93, v93
	v_mov_b32_e32 v170, v216
	v_cndmask_b16 v125.h, 0x7fff, v132.h, s16
	v_add3_u32 v133, v123, v120, 0x7fff
	v_bfe_u32 v120, v200, 16, 1
	v_cndmask_b16 v123.l, 0x7fff, v129.h, s11
	v_cndmask_b16 v123.h, 0x7fff, v130.h, s12
	v_add3_u32 v93, v93, v108, 0x7fff
	v_cndmask_b16 v126.l, 0x7fff, v133.h, s17
	v_add3_u32 v134, v200, v120, 0x7fff
	v_bfe_u32 v120, v92, 16, 1
	v_bfe_u32 v108, v140, 16, 1
	v_cmp_o_f32_e64 s17, v106, v106
	v_cmp_o_f32_e64 s12, v144, v144
	v_cmp_o_f32_e64 s16, v140, v140
	v_add3_u32 v92, v92, v120, 0x7fff
	v_bfe_u32 v120, v201, 16, 1
	v_add3_u32 v108, v140, v108, 0x7fff
	v_dual_mov_b32 v45, v46 :: v_dual_mov_b32 v168, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v127.l, 0x7fff, v92.h, s19
	v_add3_u32 v135, v201, v120, 0x7fff
	v_cndmask_b16 v120.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v120.h, 0x7fff, v121.h, s6
	v_cndmask_b16 v121.h, 0x7fff, v126.h, s8
	v_cndmask_b16 v126.h, 0x7fff, v134.h, s18
	v_cndmask_b16 v127.h, 0x7fff, v135.h, s20
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v118, v231
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s19, v104, v104
	v_cmp_o_f32_e64 s6, v148, v148
	v_cmp_o_f32_e64 s8, v150, v150
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[120:127], v[81:88], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v82, v116, v230
	v_sub_f32_e32 v84, v114, v229
	v_sub_f32_e32 v86, v112, v228
	v_sub_f32_e32 v88, v110, v227
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v81, v0, 16, 1
	v_bfe_u32 v83, v82, 16, 1
	v_bfe_u32 v85, v84, 16, 1
	v_bfe_u32 v87, v86, 16, 1
	v_bfe_u32 v92, v88, 16, 1
	v_bfe_u32 v110, v106, 16, 1
	v_bfe_u32 v112, v104, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_add3_u32 v0, v0, v81, 0x7fff
	v_bfe_u32 v81, v148, 16, 1
	v_cmp_o_f32_e64 s7, v82, v82
	v_add3_u32 v82, v82, v83, 0x7fff
	v_bfe_u32 v83, v150, 16, 1
	v_cmp_o_f32_e64 s9, v84, v84
	v_add3_u32 v84, v84, v85, 0x7fff
	v_bfe_u32 v85, v146, 16, 1
	v_cmp_o_f32_e64 s11, v86, v86
	v_add3_u32 v86, v86, v87, 0x7fff
	v_bfe_u32 v87, v144, 16, 1
	v_cmp_o_f32_e64 s13, v88, v88
	v_add3_u32 v88, v88, v92, 0x7fff
	v_bfe_u32 v92, v142, 16, 1
	v_add3_u32 v106, v106, v110, 0x7fff
	v_bfe_u32 v110, v138, 16, 1
	v_add3_u32 v104, v104, v112, 0x7fff
	v_bfe_u32 v112, v136, 16, 1
	v_add3_u32 v81, v148, v81, 0x7fff
	v_add3_u32 v83, v150, v83, 0x7fff
	v_add3_u32 v85, v146, v85, 0x7fff
	v_add3_u32 v87, v144, v87, 0x7fff
	v_add3_u32 v92, v142, v92, 0x7fff
	v_cmp_o_f32_e64 s18, v138, v138
	v_add3_u32 v110, v138, v110, 0x7fff
	v_cmp_o_f32_e64 s20, v136, v136
	v_add3_u32 v112, v136, v112, 0x7fff
	v_cndmask_b16 v81.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v81.h, 0x7fff, v81.h, s6
	v_cndmask_b16 v82.l, 0x7fff, v82.h, s7
	v_cndmask_b16 v82.h, 0x7fff, v83.h, s8
	v_cndmask_b16 v83.l, 0x7fff, v84.h, s9
	v_cndmask_b16 v83.h, 0x7fff, v85.h, s10
	v_cndmask_b16 v84.l, 0x7fff, v86.h, s11
	v_cndmask_b16 v84.h, 0x7fff, v87.h, s12
	v_cndmask_b16 v85.l, 0x7fff, v88.h, s13
	v_cndmask_b16 v85.h, 0x7fff, v92.h, s14
	v_cndmask_b16 v86.l, 0x7fff, v93.h, s15
	v_cndmask_b16 v86.h, 0x7fff, v108.h, s16
	v_cndmask_b16 v87.l, 0x7fff, v106.h, s17
	v_cndmask_b16 v87.h, 0x7fff, v110.h, s18
	v_cndmask_b16 v88.l, 0x7fff, v104.h, s19
	v_cndmask_b16 v88.h, 0x7fff, v112.h, s20
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v119, v151
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v89, v89
	v_mov_b32_e32 v95, v98
	v_cmp_o_f32_e64 s6, v90, v90
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[81:88], v[73:80], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v81, v117, v149 :: v_dual_sub_f32 v82, v115, v147
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v87, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v83, v113, v145
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v88, v81, 16, 1
	v_cmp_o_f32_e64 s7, v81, v81
	v_add3_u32 v0, v0, v87, 0x7fff
	v_bfe_u32 v87, v90, 16, 1
	v_cmp_o_f32_e64 s10, v40, v40
	v_add3_u32 v88, v81, v88, 0x7fff
	v_bfe_u32 v81, v89, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v84, v111, v143
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v87, v90, v87, 0x7fff
	v_cmp_o_f32_e64 s12, v39, v39
	v_mov_b32_e32 v169, v215
	v_add3_u32 v89, v89, v81, 0x7fff
	v_bfe_u32 v81, v82, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v85, v109, v141
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v38, v38
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v86, v107, v139
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s16, v37, v37
	v_add3_u32 v90, v82, v81, 0x7fff
	v_bfe_u32 v81, v40, 16, 1
	v_cmp_o_f32_e64 s18, v36, v36
	v_cmp_o_f32_e64 s11, v83, v83
	v_cmp_o_f32_e64 s19, v34, v34
	v_mov_b32_e32 v172, v217
	v_add3_u32 v40, v40, v81, 0x7fff
	v_bfe_u32 v81, v83, 16, 1
	v_mov_b32_e32 v98, v213
	v_cmp_o_f32_e64 s13, v84, v84
	v_cmp_o_f32_e64 s20, v35, v35
	v_cmp_o_f32_e64 s9, v82, v82
	v_add3_u32 v92, v83, v81, 0x7fff
	v_bfe_u32 v81, v39, 16, 1
	v_cmp_o_f32_e64 s15, v85, v85
	v_cmp_o_f32_e64 s17, v86, v86
	v_cndmask_b16 v82.l, 0x7fff, v88.h, s7
	v_cndmask_b16 v82.h, 0x7fff, v89.h, s8
	v_add3_u32 v39, v39, v81, 0x7fff
	v_bfe_u32 v81, v84, 16, 1
	v_cndmask_b16 v83.l, 0x7fff, v90.h, s9
	v_cndmask_b16 v83.h, 0x7fff, v40.h, s10
	v_mov_b32_e32 v102, v41
	v_mov_b32_e32 v50, v52
	v_add3_u32 v93, v84, v81, 0x7fff
	v_bfe_u32 v81, v38, 16, 1
	v_cndmask_b16 v84.l, 0x7fff, v92.h, s11
	v_mov_b32_e32 v92, v219
	v_cndmask_b16 v84.h, 0x7fff, v39.h, s12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v38, v38, v81, 0x7fff
	v_bfe_u32 v81, v85, 16, 1
	v_add3_u32 v104, v85, v81, 0x7fff
	v_bfe_u32 v81, v37, 16, 1
	v_cndmask_b16 v85.l, 0x7fff, v93.h, s13
	v_cndmask_b16 v85.h, 0x7fff, v38.h, s14
	v_mov_b32_e32 v93, v192
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v37, v81, 0x7fff
	v_bfe_u32 v81, v86, 16, 1
	v_add3_u32 v105, v86, v81, 0x7fff
	v_bfe_u32 v81, v36, 16, 1
	v_cndmask_b16 v86.l, 0x7fff, v104.h, s15
	v_cndmask_b16 v86.h, 0x7fff, v37.h, s16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v87.l, 0x7fff, v105.h, s17
	v_add3_u32 v36, v36, v81, 0x7fff
	v_bfe_u32 v81, v34, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v34, v34, v81, 0x7fff
	v_bfe_u32 v81, v35, 16, 1
	v_cndmask_b16 v88.l, 0x7fff, v34.h, s19
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v35, v35, v81, 0x7fff
	v_cndmask_b16 v81.l, 0x7fff, v0.h, vcc_lo
	v_dual_mov_b32 v0, v97 :: v_dual_mov_b32 v97, v99
	v_dual_mov_b32 v99, v214 :: v_dual_mov_b32 v220, v64
	v_dual_mov_b32 v219, v63 :: v_dual_mov_b32 v218, v62
	v_dual_mov_b32 v217, v61 :: v_dual_mov_b32 v216, v60
	v_dual_mov_b32 v215, v59 :: v_dual_mov_b32 v214, v58
	v_mov_b32_e32 v213, v57
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[57:60], off, off offset:68
	scratch_load_b128 v[61:64], off, off offset:84
	v_cndmask_b16 v81.h, 0x7fff, v87.h, s6
	v_cndmask_b16 v87.h, 0x7fff, v36.h, s18
	v_cndmask_b16 v88.h, 0x7fff, v35.h, s20
	.loc	1 607 13 is_stmt 1              ; attention_backward.py:607:13
	s_add_i32 s6, s60, 32
	s_cmpk_lt_u32 s60, 0x7e0
	s_mov_b32 s60, s6
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[73:80], v[9:16]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_4
	s_branch .LBB0_1
.LBB0_5:
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v53, off, off offset:128
	scratch_load_b32 v33, off, off offset:124
	scratch_load_b32 v34, off, off offset:132
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s5, s43, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s42
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s50, s6
	s_mov_b32 s51, s7
	.loc	1 514 23                        ; attention_backward.py:514:23
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v0, s21, v53
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, v33, v34
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_or_b32_e32 v34, s22, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s2, s44, v33
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v34, s44, v34
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v48, 2, v33
	v_or_b32_e32 v47, 4, v33
	v_or_b32_e32 v46, 6, v33
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v45, 8, v33
	v_or_b32_e32 v44, 10, v33
	v_or_b32_e32 v0, 32, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v49, v34, v33, 2
	v_add_lshl_u32 v50, v34, v48, 2
	v_add_lshl_u32 v51, v34, v47, 2
	v_add_lshl_u32 v52, v34, v44, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v42, 14, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v43, 12, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s3, s44, v0
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v41, 34, v33
	v_or_b32_e32 v40, 36, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v25, v49, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v50, s2
	v_add_lshl_u32 v49, v34, v46, 2
	v_cndmask_b32_e64 v50, 0x80000000, v51, s2
	v_add_lshl_u32 v51, v34, v45, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v39, 38, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v26, v25, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v49, s2
	buffer_store_b32 v27, v50, s[4:7], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v51, s2
	v_cndmask_b32_e64 v27, 0x80000000, v52, s2
	v_add_lshl_u32 v49, v34, v43, 2
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	v_add_lshl_u32 v25, v34, v42, 2
	s_clause 0x1
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	buffer_store_b32 v30, v27, s[4:7], 0 offen
	v_add_lshl_u32 v27, v34, v0, 2
	v_cndmask_b32_e64 v26, 0x80000000, v49, s2
	v_add_lshl_u32 v28, v34, v41, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s3
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v29, v34, v40, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v38, 40, v33
	v_or_b32_e32 v37, 42, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x2
	buffer_store_b32 v31, v26, s[4:7], 0 offen
	buffer_store_b32 v32, v25, s[4:7], 0 offen
	buffer_store_b32 v65, v27, s[4:7], 0 offen
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v27, s46, v53
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v36, 44, v33
	v_or_b32_e32 v35, 46, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v26, 0x80000000, v28, s2
	v_cndmask_b32_e64 v28, 0x80000000, v29, s2
	v_add_lshl_u32 v17, v34, v39, 2
	v_add_lshl_u32 v18, v34, v38, 2
	v_add_lshl_u32 v19, v34, v37, 2
	v_add_lshl_u32 v25, v34, v36, 2
	s_clause 0x1
	buffer_store_b32 v66, v26, s[4:7], 0 offen
	buffer_store_b32 v67, v28, s[4:7], 0 offen
	v_add_lshl_u32 v26, v34, v35, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s0, s46, v33
	v_cmp_gt_i32_e64 s1, s46, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v0, v27, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	s_clause 0x4
	buffer_store_b32 v68, v17, s[4:7], 0 offen
	buffer_store_b32 v69, v18, s[4:7], 0 offen
	buffer_store_b32 v70, v19, s[4:7], 0 offen
	buffer_store_b32 v71, v25, s[4:7], 0 offen
	buffer_store_b32 v72, v26, s[4:7], 0 offen
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s0, vcc_lo, s0
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v0, v0, s23, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v17, v27, v33
	v_add_nc_u32_e32 v18, v27, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_add_nc_u32 v19, v27, v47
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v20, v27, v46
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v17, v17, s23, 2
	s_delay_alu instid0(VALU_DEP_4)
	v_add_lshl_u32 v18, v18, s23, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v21, v27, v45
	v_add_nc_u32_e32 v22, v27, v44
	v_add_nc_u32_e32 v23, v27, v43
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v24, v27, v42
	v_add_nc_u32_e32 v25, v27, v41
	v_add_nc_u32_e32 v26, v27, v40
	v_add_nc_u32_e32 v28, v27, v39
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v1, v17, s[48:51], 0 offen
	v_add_lshl_u32 v1, v19, s23, 2
	v_cndmask_b32_e64 v17, 0x80000000, v18, s0
	v_add_lshl_u32 v18, v20, s23, 2
	v_add_lshl_u32 v19, v21, s23, 2
	v_add_lshl_u32 v20, v22, s23, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	buffer_store_b32 v2, v17, s[48:51], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v18, s0
	v_cndmask_b32_e64 v17, 0x80000000, v19, s0
	v_cndmask_b32_e64 v18, 0x80000000, v20, s0
	buffer_store_b32 v3, v1, s[48:51], 0 offen
	v_add_lshl_u32 v1, v23, s23, 2
	s_clause 0x2
	buffer_store_b32 v4, v2, s[48:51], 0 offen
	buffer_store_b32 v5, v17, s[48:51], 0 offen
	buffer_store_b32 v6, v18, s[48:51], 0 offen
	v_add_lshl_u32 v2, v24, s23, 2
	v_add_lshl_u32 v3, v25, s23, 2
	v_add_lshl_u32 v4, v26, s23, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v29, v27, v38
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v30, v27, v37
	v_add_nc_u32_e32 v31, v27, v36
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_add_nc_u32 v27, v27, v35
	s_clause 0x4
	buffer_store_b32 v7, v1, s[48:51], 0 offen
	buffer_store_b32 v8, v2, s[48:51], 0 offen
	buffer_store_b32 v9, v0, s[48:51], 0 offen
	buffer_store_b32 v10, v3, s[48:51], 0 offen
	buffer_store_b32 v11, v4, s[48:51], 0 offen
	v_add_lshl_u32 v0, v28, s23, 2
	v_add_lshl_u32 v1, v29, s23, 2
	v_add_lshl_u32 v2, v30, s23, 2
	v_add_lshl_u32 v3, v31, s23, 2
	v_add_lshl_u32 v4, v27, s23, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b32 v12, v0, s[48:51], 0 offen
	buffer_store_b32 v13, v1, s[48:51], 0 offen
	buffer_store_b32 v14, v2, s[48:51], 0 offen
	buffer_store_b32 v15, v3, s[48:51], 0 offen
	buffer_store_b32 v16, v4, s[48:51], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 140
		.amdhsa_kernarg_size 184
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
		.amdhsa_next_free_sgpr 61
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 61
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 140
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19980
; TotalNumSgprs: 63
; NumVgprs: 256
; ScratchSize: 140
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 63
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
	.byte	0                               ; DW_CHILDREN_no
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x1f DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention_backward.py"         ; string offset=7 ; attention_backward.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=29 ; <repo>/src/amd_strix_halo_kernels
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
      - .address_space:  global
        .offset:         80
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         88
        .size:           8
        .value_kind:     global_buffer
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .offset:         140
        .size:           4
        .value_kind:     by_value
      - .offset:         144
        .size:           4
        .value_kind:     by_value
      - .offset:         148
        .size:           1
        .value_kind:     by_value
      - .offset:         149
        .size:           1
        .value_kind:     by_value
      - .offset:         152
        .size:           4
        .value_kind:     by_value
      - .offset:         156
        .size:           4
        .value_kind:     by_value
      - .offset:         160
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         168
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         176
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 184
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 140
    .sgpr_count:     63
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 34
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
