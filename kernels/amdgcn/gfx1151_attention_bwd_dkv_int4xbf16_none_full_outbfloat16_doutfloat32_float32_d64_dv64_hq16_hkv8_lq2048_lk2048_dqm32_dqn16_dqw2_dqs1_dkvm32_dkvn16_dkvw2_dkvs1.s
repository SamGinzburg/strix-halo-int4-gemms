	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	v_lshlrev_b32_e32 v26, 3, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s22, s2, 4
	.loc	1 521 24                        ; attention_backward.py:521:24
	s_lshl_b32 s4, s3, 11
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v64, 0 :: v_dual_and_b32 v1, 24, v26
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_add_i32 s23, s4, s22
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v4, s22, v2
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_or_b32_e32 v3, s23, v2
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_and_b32_e32 v32, 7, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v55, v0, 4, 1
	v_mov_b32_e32 v25, 0
	s_load_b64 s[8:9], s[0:1], 0x20
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshlrev_b32_e32 v6, 3, v32
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_mov_b32 s10, s54
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s45, v3, v[1:2]
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_cmp_gt_i32_e64 s2, s45, v1
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_and_b32 s53, s27, 0xffff
	s_mov_b32 s52, s26
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_mul_i32 s21, s46, s23
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v4, s4, v55
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v5, s22, v3
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_mul_lo_u32 v3, s46, v3
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s4, s46, v6
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_lshl_b32 s7, s46, 3
	.loc	1 522 24                        ; attention_backward.py:522:24
	buffer_load_b64 v[1:2], v1, s[52:55], 0 offen
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v5
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v8, s22, v55
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_add_lshl_u32 v4, v4, s22, 1
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s53, s29, 0xffff
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add3_u32 v3, s21, v6, v3
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, 0x800, v8
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_mov_b32 s52, s28
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_or_b32_e32 v8, 4, v4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v6, 1, v3
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_and_b32_e32 v45, 48, v0
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_lshl_u32 v3, v3, s7, 1
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_or_b32_e32 v9, 8, v4
	v_or_b32_e32 v10, 12, v4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshrrev_b32_e32 v7, 1, v45
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_or_b32_e32 v11, 16, v4
	s_mov_b32 s11, s55
	s_and_b32 s9, s9, 0xffff
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xad_u32 v5, v26, v7, 0
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v7, 0x80000000, v4, s2
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v56, 15, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v47, 16, v0
	v_dual_mov_b32 v13, v25 :: v_dual_lshlrev_b32 v50, 1, v0
	v_dual_mov_b32 v14, v25 :: v_dual_lshlrev_b32 v95, 4, v0
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x58
	s_load_b256 s[36:43], s[0:1], 0x38
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_and_b32_e32 v48, 32, v0
	v_xor_b32_e32 v170, v95, v45
	v_dual_mov_b32 v12, v25 :: v_dual_and_b32 v51, 1, v0
	v_mov_b32_e32 v16, v25
	v_mov_b32_e32 v65, v25
	v_dual_mov_b32 v37, v25 :: v_dual_and_b32 v26, 48, v26
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshlrev_b32_e32 v53, 5, v51
	.loc	1 620 52                        ; attention_backward.py:620:52
	v_lshlrev_b32_e32 v96, 4, v51
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v49, 4, v0
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v172, 1, v0
	v_lshl_or_b32 v99, v56, 6, v26
	v_xor_b32_e32 v26, 0x440, v170
	v_mov_b32_e32 v69, v25
	s_lshl_b32 s28, s3, 12
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s3, s44, v53
	v_xor_b32_e32 v85, 16, v99
	v_xor_b32_e32 v86, 32, v99
	v_xor_b32_e32 v87, 48, v99
	.loc	1 620 52                        ; attention_backward.py:620:52
	v_cmp_gt_i32_e64 s5, s45, v96
	.loc	1 641 25                        ; attention_backward.py:641:25
	s_mul_f32 s29, s47, 0x3fb8aa3b
	v_add_nc_u32_e32 v204, 0, v85
	v_add_nc_u32_e32 v205, 0, v86
	v_add_nc_u32_e32 v206, 0, v87
	s_and_b32 s31, s31, 0xffff
	s_waitcnt lgkmcnt(0)
	s_and_b32 s39, s39, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s6, 0
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	s_mov_b32 s62, s54
	s_mov_b32 s63, s55
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s26, s54
	s_mov_b32 s27, s55
	s_mov_b32 s56, s38
	s_mov_b32 s60, s40
	s_mov_b32 s38, s54
	s_mov_b32 s57, s39
	s_mov_b32 s61, s41
	s_mov_b32 s39, s55
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshlrev_b32_e32 v32, 4, v32
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_and_b32_e32 v52, 24, v50
	v_and_or_b32 v50, v50, 30, v55
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshlrev_b32_e32 v31, 2, v56
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v46, 56, v0
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshl_or_b32 v32, v56, 7, v32
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshl_or_b32 v51, v56, 5, v52
	v_mov_b32_e32 v67, v25
	v_dual_mov_b32 v34, v25 :: v_dual_lshlrev_b32 v181, 2, v50
	v_dual_mov_b32 v15, v25 :: v_dual_lshlrev_b32 v0, 6, v0
	v_mov_b32_e32 v39, v25
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v52, 16, v53
	v_cmp_gt_i32_e64 s1, s46, v31
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v58, v32, 48, 0
	v_xad_u32 v59, v32, 64, 0
	v_xad_u32 v61, 0x50, v32, 0
	v_xad_u32 v17, 0x60, v32, 0
	v_lshlrev_b32_e32 v46, 1, v46
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v88, 0, v51
	v_xad_u32 v50, v51, 8, 0
	v_add_nc_u32_e32 v176, 0, v0
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s4, s44, v52
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v24, v95, v46, 0
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt vmcnt(0)
	ds_store_b64 v5, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_clause 0x1
	buffer_load_b128 v[27:30], v6, s[52:55], 0 offen
	buffer_load_b128 v[41:44], v3, s[52:55], 0 offen
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_or_b32_e32 v1, 20, v4
	v_or_b32_e32 v2, 24, v4
	v_or_b32_e32 v3, 28, v4
	v_cndmask_b32_e64 v4, 0x80000000, v8, s2
	v_cndmask_b32_e64 v5, 0x80000000, v9, s2
	v_cndmask_b32_e64 v6, 0x80000000, v10, s2
	v_cndmask_b32_e64 v8, 0x80000000, v11, s2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_clause 0x6
	buffer_load_u16 v73, v7, s[8:11], 0 offen
	buffer_load_u16 v74, v4, s[8:11], 0 offen
	buffer_load_u16 v75, v5, s[8:11], 0 offen
	buffer_load_u16 v76, v6, s[8:11], 0 offen
	buffer_load_u16 v77, v8, s[8:11], 0 offen
	buffer_load_u16 v78, v1, s[8:11], 0 offen
	buffer_load_u16 v79, v2, s[8:11], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v3, s2
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v3, v25
	v_dual_mov_b32 v4, v25 :: v_dual_lshlrev_b32 v45, 2, v47
	buffer_load_u16 v80, v1, s[8:11], 0 offen
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v6, v25
	scratch_store_b32 off, v55, off offset:92 ; 4-byte Folded Spill
	v_cmp_eq_u32_e64 s0, 0, v47
	v_mul_u32_u24_e32 v47, 0x110, v56
	v_lshlrev_b32_e32 v55, 1, v56
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v2, v25
	v_lshl_or_b32 v97, v48, 7, v47
	v_or3_b32 v171, v55, v45, v48
	v_xor_b32_e32 v45, 0x880, v170
	v_mov_b32_e32 v71, v25
	v_dual_mov_b32 v35, v25 :: v_dual_lshlrev_b32 v54, 1, v48
	v_xor_b32_e32 v18, 0x80, v97
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v46, 0, v45
	v_xor_b32_e32 v45, 32, v97
	v_xor_b32_e32 v22, 0xc0, v97
	v_mov_b32_e32 v38, v25
	v_mov_b32_e32 v66, v25
	v_xor_b32_e32 v23, 0xd0, v97
	v_add_nc_u32_e32 v207, 0, v45
	v_add_nc_u32_e32 v45, 0, v18
	v_add_nc_u32_e32 v18, 0, v22
	v_xor_b32_e32 v72, 0xe0, v97
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v57, 1, v48
	v_xor_b32_e32 v19, 0x90, v97
	v_mov_b32_e32 v8, v25
	scratch_store_b32 off, v18, off offset:80 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v18, 0, v23
	v_add3_u32 v177, 0, v54, v31
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xad_u32 v54, v51, 16, 0
	v_dual_mov_b32 v68, v25 :: v_dual_add_nc_u32 v211, 0, v19
	scratch_store_b32 off, v18, off offset:76 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v18, 0, v72
	scratch_store_b32 off, v57, off offset:88 ; 4-byte Folded Spill
	v_mov_b32_e32 v7, v25
	v_xad_u32 v51, v51, 24, 0
	v_add3_u32 v180, 0, v48, v55
	scratch_store_b32 off, v18, off offset:72 ; 4-byte Folded Spill
	ds_load_b64 v[186:187], v88
	ds_load_b64 v[212:213], v50
	ds_load_b64 v[18:19], v54
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_add_nc_u32_e32 v55, 0, v32
	v_xor_b32_e32 v60, 64, v97
	v_xor_b32_e32 v62, 0x50, v97
	v_xor_b32_e32 v63, 0x60, v97
	scratch_store_b32 off, v56, off offset:84 ; 4-byte Folded Spill
	v_xad_u32 v56, v32, 16, 0
	v_xad_u32 v57, v32, 32, 0
	v_xad_u32 v32, 0x70, v32, 0
	.loc	1 522 24                        ; attention_backward.py:522:24
	ds_load_b64 v[50:51], v51
	v_dual_mov_b32 v40, v25 :: v_dual_add_nc_u32 v209, 0, v62
	v_add_nc_u32_e32 v208, 0, v60
	v_add_nc_u32_e32 v210, 0, v63
	v_mad_u64_u32 v[93:94], null, s46, v49, v[31:32]
	v_xor_b32_e32 v47, 0xcc0, v170
	v_xor_b32_e32 v21, 0xb0, v97
	v_mov_b32_e32 v36, v25
	v_add_nc_u32_e32 v48, 0, v26
	s_waitcnt lgkmcnt(1)
	scratch_store_b64 off, v[18:19], off offset:64 ; 8-byte Folded Spill
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v185, 0, v47
	v_xor_b32_e32 v26, 16, v97
	v_xor_b32_e32 v47, 48, v97
	v_xor_b32_e32 v0, 0x70, v97
	v_xor_b32_e32 v20, 0xa0, v97
	v_xor_b32_e32 v81, 0xf0, v97
	v_xor_b32_e32 v82, 0x90, v171
	v_xor_b32_e32 v83, 0x120, v171
	v_xor_b32_e32 v84, 0x1b0, v171
	v_add_nc_u32_e32 v111, 0, v21
	v_mad_u64_u32 v[21:22], null, s46, 20, v[93:94]
	v_mad_u64_u32 v[183:184], null, s46, 28, v[93:94]
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v70, v25
	v_add_nc_u32_e32 v217, 0, v20
	v_add_nc_u32_e32 v98, 0, v26
	v_add_nc_u32_e32 v100, 0, v47
	v_add_nc_u32_e32 v178, 0, v0
	v_add_nc_u32_e32 v179, 0, v81
	v_add_nc_u32_e32 v201, 0, v82
	v_add_nc_u32_e32 v202, 0, v83
	v_add_nc_u32_e32 v203, 0, v84
	v_add_nc_u32_e32 v184, s7, v93
	s_mov_b32 s8, -1
	s_mov_b32 s52, s30
	s_mov_b32 s53, s31
	s_waitcnt vmcnt(9)
	ds_store_b128 v24, v[27:30]
	s_waitcnt vmcnt(8)
	ds_store_b128 v24, v[41:44] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[188:191], v55
	ds_load_b128 v[192:195], v56
	ds_load_b128 v[237:240], v57
	ds_load_b128 v[241:244], v58
	ds_load_b128 v[245:248], v59
	ds_load_b128 v[249:252], v61
	ds_load_b128 v[56:59], v17
	ds_load_b128 v[60:63], v32
	v_mad_u64_u32 v[54:55], null, s46, 12, v[93:94]
	v_mad_u64_u32 v[42:43], null, s46, 24, v[93:94]
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v17, 16, v73
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v18, 16, v74
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v41, 16, v75
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v49, 16, v76
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v72, 16, v77
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v19, 16, v78
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v79
	v_xor_b32_e32 v44, 4, v181
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v102, 16, v80
	s_waitcnt lgkmcnt(5)
	scratch_store_b128 off, v[237:240], off ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(4)
	scratch_store_b128 off, v[241:244], off offset:16 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(3)
	scratch_store_b128 off, v[245:248], off offset:32 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(2)
	scratch_store_b128 off, v[249:252], off offset:48 ; 16-byte Folded Spill
.LBB0_1:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_2 Depth 2
	.loc	1 520 26                        ; attention_backward.py:520:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:84
	scratch_load_b32 v26, off, off offset:88
	.loc	1 613 25                        ; attention_backward.py:613:25
	s_or_b32 s31, s28, s6
	s_xor_b32 s30, s8, -1
	s_mov_b32 s33, 0
	.loc	1 520 26                        ; attention_backward.py:520:26
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v26, v26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v22, s31, v26
.LBB0_2:                                ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 26 is_stmt 0                ; attention_backward.py:0:26
	v_lshl_add_u32 v30, s46, 2, v93
	.loc	1 616 25 is_stmt 1              ; attention_backward.py:616:25
	s_or_b32 s6, s33, s31
	v_or_b32_e32 v29, s31, v172
	v_or_b32_e32 v26, s6, v172
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s6, s6, s46
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v106, 0x1000, v177
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v30, s6, v30, 2
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v29, s33, v29, 1
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_mad_u64_u32 v[26:27], null, v26, s45, v[96:97]
	.loc	1 624 25                        ; attention_backward.py:624:25
	v_or_b32_e32 v27, s33, v22
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v31, 0x80000000, v30, s1
	v_add_lshl_u32 v30, s6, v184, 2
	.loc	1 623 39                        ; attention_backward.py:623:39
	buffer_load_u16 v219, v29, s[52:55], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v29, s6, v93, 2
	v_dual_mov_b32 v55, v21 :: v_dual_lshlrev_b32 v28, 1, v27
	v_cndmask_b32_e64 v32, 0x80000000, v30, s1
	v_add_lshl_u32 v30, s6, v54, 2
	v_dual_mov_b32 v94, v95 :: v_dual_lshlrev_b32 v27, 2, v27
	v_cndmask_b32_e64 v29, 0x80000000, v29, s1
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v26, 0x80000000, v26, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v81, 0x80000000, v30, s1
	v_lshl_add_u32 v30, s46, 4, v93
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v107, 0x1400, v177
	v_add_nc_u32_e32 v108, 0x1800, v177
	v_add_nc_u32_e32 v134, 0x1c00, v177
	.loc	1 651 43                        ; attention_backward.py:651:43
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v30, s6, v30, 2
	.loc	1 651 43                        ; attention_backward.py:651:43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v85, 0x80000000, v30, s1
	v_add_lshl_u32 v30, s6, v21, 2
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_dual_mov_b32 v216, v42 :: v_dual_mov_b32 v101, v100
	v_mov_b32_e32 v47, v45
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v89, 0x80000000, v30, s1
	v_add_lshl_u32 v30, s6, v42, 2
	v_mov_b32_e32 v53, v49
	v_mov_b32_e32 v21, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v90, 0x80000000, v30, s1
	v_add_lshl_u32 v30, s6, v183, 2
	v_cndmask_b32_e64 v91, 0x80000000, v30, s1
	.loc	1 623 39                        ; attention_backward.py:623:39
	buffer_load_u16 v220, v28, s[52:55], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v218, v27, s[56:59], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v221, v27, s[60:63], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b128 v[27:30], v29, s[36:39], 0 offen
	buffer_load_b128 v[73:76], v31, s[36:39], 0 offen
	buffer_load_b128 v[77:80], v32, s[36:39], 0 offen
	buffer_load_b128 v[81:84], v81, s[36:39], 0 offen
	buffer_load_b128 v[85:88], v85, s[36:39], 0 offen
	buffer_load_b128 v[222:225], v89, s[36:39], 0 offen
	buffer_load_b128 v[226:229], v90, s[36:39], 0 offen
	buffer_load_b128 v[230:233], v91, s[36:39], 0 offen
	.loc	1 615 36                        ; attention_backward.py:615:36
	buffer_load_b128 v[89:92], v26, s[24:27], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v26, 0, v95
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(8)
	ds_store_b128 v26, v[27:30]
	s_waitcnt vmcnt(7)
	ds_store_b128 v26, v[73:76] offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b128 v26, v[77:80] offset:2048
	s_waitcnt vmcnt(5)
	ds_store_b128 v26, v[81:84] offset:3072
	s_waitcnt vmcnt(4)
	ds_store_b128 v26, v[85:88] offset:4096
	s_waitcnt vmcnt(3)
	ds_store_b128 v26, v[222:225] offset:5120
	s_waitcnt vmcnt(2)
	ds_store_b128 v26, v[226:229] offset:6144
	s_waitcnt vmcnt(1)
	ds_store_b128 v26, v[230:233] offset:7168
	v_add_nc_u32_e32 v26, 0x400, v177
	v_add_nc_u32_e32 v31, 0x800, v177
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v32, 0xc00, v177
	ds_load_2addr_b32 v[132:133], v26 offset1:32
	ds_load_2addr_b32 v[138:139], v26 offset0:64 offset1:96
	ds_load_2addr_b32 v[130:131], v26 offset0:128 offset1:160
	ds_load_2addr_b32 v[140:141], v26 offset0:192 offset1:224
	ds_load_2addr_b32 v[128:129], v31 offset1:32
	ds_load_2addr_b32 v[142:143], v31 offset0:64 offset1:96
	ds_load_2addr_b32 v[126:127], v31 offset0:128 offset1:160
	ds_load_2addr_b32 v[144:145], v31 offset0:192 offset1:224
	ds_load_2addr_b32 v[124:125], v32 offset1:32
	ds_load_2addr_b32 v[146:147], v32 offset0:64 offset1:96
	ds_load_2addr_b32 v[122:123], v32 offset0:128 offset1:160
	ds_load_2addr_b32 v[148:149], v32 offset0:192 offset1:224
	ds_load_2addr_b32 v[120:121], v106 offset1:32
	ds_load_2addr_b32 v[150:151], v106 offset0:64 offset1:96
	ds_load_2addr_b32 v[118:119], v106 offset0:128 offset1:160
	ds_load_2addr_b32 v[152:153], v106 offset0:192 offset1:224
	ds_load_2addr_b32 v[116:117], v107 offset1:32
	ds_load_2addr_b32 v[154:155], v107 offset0:64 offset1:96
	ds_load_2addr_b32 v[114:115], v107 offset0:128 offset1:160
	ds_load_2addr_b32 v[156:157], v107 offset0:192 offset1:224
	ds_load_2addr_b32 v[112:113], v108 offset1:32
	ds_load_2addr_b32 v[158:159], v108 offset0:64 offset1:96
	ds_load_2addr_b32 v[214:215], v108 offset0:128 offset1:160
	ds_load_2addr_b32 v[160:161], v108 offset0:192 offset1:224
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v26, 0, v170
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_load_2addr_b32 v[42:43], v134 offset1:32
	ds_load_2addr_b32 v[162:163], v134 offset0:64 offset1:96
	ds_load_2addr_b32 v[23:24], v134 offset0:128 offset1:160
	ds_load_2addr_b32 v[164:165], v134 offset0:192 offset1:224
	ds_load_2addr_b32 v[136:137], v177 offset1:32
	ds_load_2addr_b32 v[166:167], v177 offset0:64 offset1:96
	ds_load_2addr_b32 v[134:135], v177 offset0:128 offset1:160
	ds_load_2addr_b32 v[168:169], v177 offset0:192 offset1:224
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v26, v[27:30]
	ds_store_b128 v26, v[85:88] offset:4096
	ds_store_b128 v48, v[73:76]
	ds_store_b128 v48, v[222:225] offset:4096
	ds_store_b128 v46, v[77:80]
	ds_store_b128 v46, v[226:229] offset:4096
	ds_store_b128 v185, v[81:84]
	ds_store_b128 v185, v[230:233] offset:4096
	v_add_nc_u32_e32 v26, 0, v97
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v26
	ds_load_b128 v[73:76], v98
	scratch_load_b32 v0, off, off offset:80 ; 4-byte Folded Reload
	v_dual_mov_b32 v95, v170 :: v_dual_mov_b32 v110, v63
	v_dual_mov_b32 v109, v62 :: v_dual_mov_b32 v108, v61
	v_mov_b32_e32 v103, v56
	v_mov_b32_e32 v105, v58
	v_mov_b32_e32 v107, v60
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v30, v26, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_cmp_o_f32_e64 s6, v27, v27
	v_cmp_o_f32_e64 s7, v28, v28
	v_cmp_o_f32_e64 s8, v29, v29
	v_add3_u32 v30, v26, v30, 0x7fff
	v_bfe_u32 v26, v27, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s9, v73, v73
	v_cmp_o_f32_e64 s10, v74, v74
	v_cmp_o_f32_e64 s11, v75, v75
	v_cmp_o_f32_e64 s12, v76, v76
	v_add3_u32 v31, v27, v26, 0x7fff
	v_bfe_u32 v26, v28, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v32, v28, v26, 0x7fff
	v_bfe_u32 v26, v29, 16, 1
	v_add3_u32 v77, v29, v26, 0x7fff
	v_bfe_u32 v26, v73, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v78, v73, v26, 0x7fff
	v_bfe_u32 v26, v74, 16, 1
	v_add3_u32 v79, v74, v26, 0x7fff
	v_bfe_u32 v26, v75, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v80, v75, v26, 0x7fff
	v_bfe_u32 v26, v76, 16, 1
	v_add3_u32 v81, v76, v26, 0x7fff
	ds_load_b128 v[26:29], v207
	ds_load_b128 v[73:76], v100
	v_mov_b32_e32 v100, v99
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v82, v26, 16, 1
	v_cmp_o_f32_e64 s13, v26, v26
	v_cmp_o_f32_e64 s14, v27, v27
	v_cmp_o_f32_e64 s15, v28, v28
	v_cmp_o_f32_e64 s16, v29, v29
	v_add3_u32 v26, v26, v82, 0x7fff
	v_bfe_u32 v82, v27, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s17, v73, v73
	v_cmp_o_f32_e64 s18, v74, v74
	v_cmp_o_f32_e64 s19, v75, v75
	v_cmp_o_f32_e64 s20, v76, v76
	v_add3_u32 v27, v27, v82, 0x7fff
	v_bfe_u32 v82, v28, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v26.h, s13
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v26, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v28, v28, v82, 0x7fff
	v_bfe_u32 v82, v29, 16, 1
	v_cndmask_b16 v78.l, 0x7fff, v28.h, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v29, v29, v82, 0x7fff
	v_bfe_u32 v82, v73, 16, 1
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v28, v25
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v82, v73, v82, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.l, 0x7fff, v82.h, s17
	v_add3_u32 v83, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	v_cndmask_b16 v74.l, 0x7fff, v32.h, s7
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v32, v25
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v74.h, 0x7fff, v77.h, s8
	v_cndmask_b16 v77.h, 0x7fff, v27.h, s14
	v_add3_u32 v84, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	v_cndmask_b16 v75.l, 0x7fff, v78.h, s9
	v_cndmask_b16 v78.h, 0x7fff, v29.h, s16
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v27, v25
	v_mov_b32_e32 v29, v25
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v85, v76, v73, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v30.h, vcc_lo
	v_cndmask_b16 v73.h, 0x7fff, v31.h, s6
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v30, v25
	v_mov_b32_e32 v31, v25
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v75.h, 0x7fff, v79.h, s10
	v_cndmask_b16 v76.l, 0x7fff, v80.h, s11
	v_cndmask_b16 v76.h, 0x7fff, v81.h, s12
	v_cndmask_b16 v79.h, 0x7fff, v83.h, s18
	v_cndmask_b16 v80.l, 0x7fff, v84.h, s19
	v_cndmask_b16 v80.h, 0x7fff, v85.h, s20
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v88, v32 :: v_dual_mov_b32 v81, v25
	v_dual_mov_b32 v87, v31 :: v_dual_mov_b32 v86, v30
	v_dual_mov_b32 v85, v29 :: v_dual_mov_b32 v84, v28
	v_dual_mov_b32 v83, v27 :: v_dual_mov_b32 v82, v26
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[188:195], v[73:80], v[81:88]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[73:76], v208
	ds_load_b128 v[77:80], v209
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v222, v73, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_cmp_o_f32_e64 s6, v74, v74
	v_cmp_o_f32_e64 s7, v75, v75
	v_cmp_o_f32_e64 s8, v76, v76
	v_add3_u32 v222, v73, v222, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s9, v77, v77
	v_cmp_o_f32_e64 s10, v78, v78
	v_cmp_o_f32_e64 s11, v79, v79
	v_cmp_o_f32_e64 s12, v80, v80
	v_add3_u32 v223, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v224, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	v_add3_u32 v225, v76, v73, 0x7fff
	v_bfe_u32 v73, v77, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v226, v77, v73, 0x7fff
	v_bfe_u32 v73, v78, 16, 1
	v_add3_u32 v227, v78, v73, 0x7fff
	v_bfe_u32 v73, v79, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v228, v79, v73, 0x7fff
	v_bfe_u32 v73, v80, 16, 1
	v_add3_u32 v229, v80, v73, 0x7fff
	ds_load_b128 v[73:76], v210
	ds_load_b128 v[77:80], v178
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v230, v73, 16, 1
	v_cmp_o_f32_e64 s13, v73, v73
	v_cmp_o_f32_e64 s14, v74, v74
	v_cmp_o_f32_e64 s15, v75, v75
	v_cmp_o_f32_e64 s16, v76, v76
	v_add3_u32 v230, v73, v230, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s17, v77, v77
	v_cmp_o_f32_e64 s18, v78, v78
	v_cmp_o_f32_e64 s19, v79, v79
	v_cmp_o_f32_e64 s20, v80, v80
	v_add3_u32 v231, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	v_cndmask_b16 v74.l, 0x7fff, v224.h, s7
	v_cndmask_b16 v74.h, 0x7fff, v225.h, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v232, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	v_cndmask_b16 v75.l, 0x7fff, v226.h, s9
	v_cndmask_b16 v75.h, 0x7fff, v227.h, s10
	v_add3_u32 v233, v76, v73, 0x7fff
	v_bfe_u32 v73, v77, 16, 1
	v_cndmask_b16 v76.l, 0x7fff, v228.h, s11
	v_cndmask_b16 v76.h, 0x7fff, v229.h, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v234, v77, v73, 0x7fff
	v_bfe_u32 v73, v78, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v230.h, s13
	v_cndmask_b16 v77.h, 0x7fff, v231.h, s14
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
	v_cndmask_b16 v73.l, 0x7fff, v222.h, vcc_lo
	v_cndmask_b16 v73.h, 0x7fff, v223.h, s6
	v_cndmask_b16 v80.l, 0x7fff, v236.h, s19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v80.h, 0x7fff, v80.h, s20
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_wmma_f32_16x16x16_bf16 v[81:88], v[237:244], v[73:80], v[81:88]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[73:76], v45
	ds_load_b128 v[77:80], v211
	.loc	1 648 33                        ; attention_backward.py:648:33
	s_waitcnt vmcnt(1)
	v_bfe_u32 v238, v92, 8, 4
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v239, v92, 20, 4
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v240, v92, 16, 4
	v_bfe_u32 v241, v92, 24, 4
	v_mov_b32_e32 v45, v179
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v243, -16, v240
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v222, v73, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_cmp_o_f32_e64 s6, v74, v74
	v_cmp_o_f32_e64 s7, v75, v75
	v_cmp_o_f32_e64 s8, v76, v76
	v_add3_u32 v222, v73, v222, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s9, v77, v77
	v_cmp_o_f32_e64 s10, v78, v78
	v_cmp_o_f32_e64 s11, v79, v79
	v_cmp_o_f32_e64 s12, v80, v80
	v_add3_u32 v223, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v224, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	v_add3_u32 v225, v76, v73, 0x7fff
	v_bfe_u32 v73, v77, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v226, v77, v73, 0x7fff
	v_bfe_u32 v73, v78, 16, 1
	v_add3_u32 v227, v78, v73, 0x7fff
	v_bfe_u32 v73, v79, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v228, v79, v73, 0x7fff
	v_bfe_u32 v73, v80, 16, 1
	v_add3_u32 v229, v80, v73, 0x7fff
	ds_load_b128 v[73:76], v217
	ds_load_b128 v[77:80], v111
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v230, v73, 16, 1
	v_cmp_o_f32_e64 s13, v73, v73
	v_cmp_o_f32_e64 s14, v74, v74
	v_cmp_o_f32_e64 s15, v75, v75
	v_cmp_o_f32_e64 s16, v76, v76
	v_add3_u32 v230, v73, v230, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s17, v77, v77
	v_cmp_o_f32_e64 s18, v78, v78
	v_cmp_o_f32_e64 s19, v79, v79
	v_cmp_o_f32_e64 s20, v80, v80
	v_add3_u32 v231, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	v_cndmask_b16 v74.l, 0x7fff, v224.h, s7
	v_cndmask_b16 v74.h, 0x7fff, v225.h, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v232, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	v_cndmask_b16 v75.l, 0x7fff, v226.h, s9
	v_cndmask_b16 v75.h, 0x7fff, v227.h, s10
	v_add3_u32 v233, v76, v73, 0x7fff
	v_bfe_u32 v73, v77, 16, 1
	v_cndmask_b16 v76.l, 0x7fff, v228.h, s11
	v_cndmask_b16 v76.h, 0x7fff, v229.h, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v234, v77, v73, 0x7fff
	v_bfe_u32 v73, v78, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v230.h, s13
	v_cndmask_b16 v77.h, 0x7fff, v231.h, s14
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
	v_cndmask_b16 v73.l, 0x7fff, v222.h, vcc_lo
	v_cndmask_b16 v73.h, 0x7fff, v223.h, s6
	v_cndmask_b16 v80.l, 0x7fff, v236.h, s19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v80.h, 0x7fff, v80.h, s20
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_wmma_f32_16x16x16_bf16 v[81:88], v[245:252], v[73:80], v[81:88]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_load_b128 v[73:76], v0
	scratch_load_b32 v0, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v222, v73, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_cmp_o_f32_e64 s6, v74, v74
	v_cmp_o_f32_e64 s7, v75, v75
	v_cmp_o_f32_e64 s8, v76, v76
	v_add3_u32 v222, v73, v222, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v223, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	v_add3_u32 v224, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v225, v76, v73, 0x7fff
	s_waitcnt vmcnt(0)
	ds_load_b128 v[77:80], v0
	scratch_load_b32 v0, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v73, v77, 16, 1
	v_cmp_o_f32_e64 s9, v77, v77
	v_cmp_o_f32_e64 s10, v78, v78
	v_cmp_o_f32_e64 s11, v79, v79
	v_cmp_o_f32_e64 s12, v80, v80
	v_add3_u32 v226, v77, v73, 0x7fff
	v_bfe_u32 v73, v78, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v227, v78, v73, 0x7fff
	v_bfe_u32 v73, v79, 16, 1
	v_add3_u32 v228, v79, v73, 0x7fff
	v_bfe_u32 v73, v80, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v229, v80, v73, 0x7fff
	s_waitcnt vmcnt(0)
	ds_load_b128 v[73:76], v0
	ds_load_b128 v[77:80], v179
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v230, v73, 16, 1
	v_cmp_o_f32_e64 s13, v73, v73
	v_cmp_o_f32_e64 s14, v74, v74
	v_cmp_o_f32_e64 s15, v75, v75
	v_cmp_o_f32_e64 s16, v76, v76
	v_add3_u32 v230, v73, v230, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s17, v77, v77
	v_cmp_o_f32_e64 s18, v78, v78
	v_cmp_o_f32_e64 s19, v79, v79
	v_cmp_o_f32_e64 s20, v80, v80
	v_add3_u32 v231, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	v_cndmask_b16 v74.l, 0x7fff, v224.h, s7
	v_cndmask_b16 v74.h, 0x7fff, v225.h, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v232, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	v_cndmask_b16 v75.l, 0x7fff, v226.h, s9
	v_cndmask_b16 v75.h, 0x7fff, v227.h, s10
	v_add3_u32 v233, v76, v73, 0x7fff
	v_bfe_u32 v73, v77, 16, 1
	v_cndmask_b16 v76.l, 0x7fff, v228.h, s11
	v_cndmask_b16 v76.h, 0x7fff, v229.h, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v234, v77, v73, 0x7fff
	v_bfe_u32 v73, v78, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v230.h, s13
	v_cndmask_b16 v77.h, 0x7fff, v231.h, s14
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v231, 24, v90
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v235, v78, v73, 0x7fff
	v_bfe_u32 v73, v79, 16, 1
	v_cndmask_b16 v78.l, 0x7fff, v232.h, s15
	v_cndmask_b16 v78.h, 0x7fff, v233.h, s16
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e64 v235.l, v92.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v236, v79, v73, 0x7fff
	v_bfe_u32 v73, v80, 16, 1
	v_cndmask_b16 v79.l, 0x7fff, v234.h, s17
	v_cndmask_b16 v79.h, 0x7fff, v235.h, s18
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v234, 8, v92
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s17, v112, v112
	v_add3_u32 v80, v80, v73, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v222.h, vcc_lo
	v_cndmask_b16 v73.h, 0x7fff, v223.h, s6
	v_cndmask_b16 v80.l, 0x7fff, v236.h, s19
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v236, 24, v92
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v80.h, 0x7fff, v80.h, s20
	v_cmp_o_f32_e64 s18, v214, v214
	v_cmp_o_f32_e64 s19, v42, v42
	v_cmp_o_f32_e64 s20, v23, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_wmma_f32_16x16x16_bf16 v[81:88], v[56:63], v[73:80], v[81:88]
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v80, v81, v221
	s_delay_alu instid0(VALU_DEP_2)
	v_sub_f32_e32 v79, v82, v221
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v81, v181, v89
	ds_bpermute_b32 v82, v44, v89
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v78, v83, v221
	v_sub_f32_e32 v77, v84, v221
	v_sub_f32_e32 v76, v85, v221
	v_sub_f32_e32 v75, v86, v221
	v_sub_f32_e32 v74, v87, v221
	v_sub_f32_e32 v73, v88, v221
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v221, v82, v81, s0
	v_cndmask_b32_e64 v223, v81, v82, s0
	ds_bpermute_b32 v81, v181, v90
	ds_bpermute_b32 v82, v44, v90
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v222, v82, v81, s0
	v_cndmask_b32_e64 v224, v81, v82, s0
	ds_bpermute_b32 v81, v181, v91
	ds_bpermute_b32 v82, v44, v91
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v225, v82, v81, s0
	v_cndmask_b32_e64 v227, v81, v82, s0
	ds_bpermute_b32 v81, v181, v92
	ds_bpermute_b32 v82, v44, v92
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v226, v82, v81, s0
	v_cndmask_b32_e64 v228, v81, v82, s0
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[81:88], v[186:187], v[221:222], v[25:32] neg_lo:[1,1,0]
	scratch_load_b64 v[26:27], off, off offset:64 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b64 v[221:222], 24, v[89:90]
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[81:88], v[212:213], v[225:226], v[81:88] neg_lo:[1,1,0]
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v225, v90, 16, 4
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v226, -16, v225
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[26:27], v[223:224], v[81:88] neg_lo:[1,1,0]
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v26.l, v89.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v223, 15, v90
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_mov_b16_e32 v26.h, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[81:88], v[50:51], v[227:228], v[81:88] neg_lo:[1,1,0]
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v26.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v26.l, v89.h, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v227, v221, 0, 8
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v224, -16, v223
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v31, v85
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v85, v89, 16, 4
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v29, v83
	v_cvt_f32_i32_e32 v32, v86
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v83, 15, v89
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s6, 7, v26.l
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v86, -16, v85
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v26.l, v90.l, 15
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v28, v82
	v_cvt_f32_i32_e32 v30, v84
	v_cvt_f32_i32_e32 v82, v88
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v84, -16, v83
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s7, 7, v26.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v26.l, v90.h, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v88, v89, 0, 8
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v85, v85, v86, s6
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v86, 8, v89
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v84, v83, v84, vcc_lo
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s8, 7, v26.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s9, 0, v88.l
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v88, v89, 8, 4
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v83.l, v86.l, 15
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v27, v81
	v_cvt_f32_i32_e32 v81, v87
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v87.l, 4, v221.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v87.h, v221.l, 15
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v221, -16, v88
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v83.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v229, v225, v226, s8
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v226, 8, v90
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v228, v223, v224, s7
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v26.l, 4, v89.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v88, v88, v221, vcc_lo
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v221, v90, 8, 4
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v83.l, v226.l, 15
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v85, v85
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v26.l, v26.l, 15
	v_mov_b32_e32 v52, v51
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v223, -16, v221
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v83.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v83.l, v231.l, 15
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v222, -16, v26
	v_mov_b32_e32 v51, v50
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v253.l, v26.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v230, v221, v223, vcc_lo
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v221, v90, 24, 4
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v83.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_alignbit_b32 v83, v90, v89, 24
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v255.l, v26.h
	v_mov_b16_e64 v252.l, v26.h
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v223, -16, v221
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v198.l, v26.h
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v83, 15, v83
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v199.l, v26.h
	v_mov_b16_e64 v200.l, v26.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v232, v221, v223, vcc_lo
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v87.h
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v221, -16, v83
	.loc	1 732 54 is_stmt 1              ; attention_backward.py:732:54
	v_mov_b16_e64 v254.l, v26.h
	v_mov_b16_e64 v179.l, v26.h
	v_mov_b16_e64 v182.l, v26.h
	v_mov_b16_e64 v173.l, v26.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v225, v83, v221, vcc_lo
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e32 v83.l, v89.h
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v89, v89, 20, 4
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v175.l, v26.h
	v_mov_b16_e32 v0.l, v26.h
	v_mov_b16_e64 v174.l, v26.h
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v83, v83, 0, 8
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v221, -16, v89
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v196.l, v26.h
	v_mov_b16_e64 v197.l, v26.h
	v_mov_b16_e64 v170.l, v26.h
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v83.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e32 v83.l, v90.h
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v89, v89, v221, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v83, v83, 0, 8
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v221, v90, 20, 4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v89, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v83.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v223, -16, v221
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v83, v84
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v84, v26, v222, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v223, v221, v223, vcc_lo
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v221, 16, v219
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v84, v84
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v237, 15, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v83, v221, v83
	v_mul_f32_e32 v84, v221, v84
	v_mul_f32_e32 v89, v221, v89
	v_mul_f32_e32 v85, v221, v85
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v219, 0, v83, s3
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v83.l, 4, v86.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v84, 0, v84, s3
	v_cndmask_b32_e64 v89, 0, v89, s3
	v_cndmask_b32_e64 v85, 0, v85, s3
	v_mov_b16_e64 v26.l, v219.h
	v_cmp_o_f32_e64 s6, v219, v219
	v_cmp_o_f32_e64 s7, v84, v84
	v_cmp_o_f32_e64 s8, v89, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v222, 1, v26
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v26.l, v83.l, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v83, v86, 0, 8
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v86, -16, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v83.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_add3_u32 v83, v219, v222, 0x7fff
	v_mov_b16_e64 v219.h, v26.h
	v_mov_b16_e64 v219.l, v84.h
	v_mov_b16_e64 v222.h, v26.h
	v_and_b32_e32 v219, 1, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v84, v84, v219, 0x7fff
	v_mov_b16_e64 v219.h, v26.h
	v_mov_b16_e64 v219.l, v89.h
	v_and_b32_e32 v219, 1, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v89, v89, v219, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v219, v223
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v224.h, 0x7fff, v89.h, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v219, v221, v219
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v89, 0, v171
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v219, 0, v219, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v222.l, v219.h
	v_cmp_o_f32_e64 s9, v219, v219
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v222, 1, v222
	v_add3_u32 v233, v219, v222, 0x7fff
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v219, 16, v220
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v222.l, 0x7fff, v83.h, s6
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v83, v88
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v222.h, 0x7fff, v84.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_dual_cndmask_b32 v84, v26, v86 :: v_dual_mul_f32 v219, s29, v219
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v85, v85
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v83, v221, v83
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v220.l, v91.h, 15
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v220.h, 4, v91.l
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v28, v219, v28
	v_mul_f32_e32 v30, v219, v30
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v83, 0, v83, s3
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v29, v219, v29
	v_mul_f32_e32 v27, v219, v27
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v28, v28, v18, -v218
	v_fma_f32 v30, v30, v49, -v218
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v26.l, v83.h
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v31, v219, v31
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s6, v83, v83
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v29, v29, v41, -v218
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v49, v186 :: v_dual_and_b32 v86, 1, v26
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v26.l, v85.h
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v81, v219, v81
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v31, v31, v72, -v218
	v_mov_b32_e32 v50, v187
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v83, v83, v86, 0x7fff
	v_and_b32_e32 v86, 1, v26
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v26.l, v87.l, 15
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v87, v27, v17, -v218
	v_fma_f32 v81, v81, v20, -v218
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v223.l, 0x7fff, v83.h, s6
	v_add3_u32 v27, v85, v86, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v27.l, v227.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v85, -16, v26
	v_mov_b32_e32 v20, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b16 v224.l, 0x7fff, v27.h, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v27.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v27, v225
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v32, v219, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v85, v26, v85, s7
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v27, v221, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v32, v32, v19, -v218
	v_dual_mov_b32 v19, v72 :: v_dual_mov_b32 v72, v17
	v_mov_b32_e32 v17, v41
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v83, 0, v27, s3
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v27.l, 4, v90.l
	v_mov_b32_e32 v41, v178
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v26.l, v83.h
	v_cmp_o_f32_e64 s6, v83, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_and_b32_e32 v86, 1, v26
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v26.l, v27.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v27, v84
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v82, v219, v82
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v84.h, v26.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v27, v221, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v82, v82, v102, -v218
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v27, 0, v27, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v84.l, v27.h
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v84, 1, v84
	v_add3_u32 v27, v27, v84, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v84, v90, 0, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v223.h, 0x7fff, v27.h, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v27.l, v84.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v84, -16, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v27.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v27, v228
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v228.h, 0x7fff, v233.h, s9
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v233, v92, 0, 8
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v84, v26, v84, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v27, v221, v27
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v83, v83, v86, 0x7fff
	v_cndmask_b16 v225.l, 0x7fff, v83.h, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v83, 0, v27, s3
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v27.l, 4, v226.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v26.l, v83.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s15, v83, v83
	v_and_b32_e32 v86, 1, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v26.l, v27.l, 15
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v27, v87
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v219, 0, v27, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v27, v219, v80
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v27, s47, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v80, v27, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_add3_u32 v80, v27, v80, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v27, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v90, 0, v27, s2
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v27, v90, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v27, s47, v27
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v28, v27, 16, 1
	v_cmp_o_f32_e64 s6, v27, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v79, v27, v28, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v27, v29
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v27, 0, v27, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v28, v27, v78
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v28, s47, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v29, v28, 16, 1
	v_cmp_o_f32_e64 s7, v28, v28
	v_add3_u32 v78, v28, v29, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v28, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v28, 0, v28, s2
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v29, v28, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v29, s47, v29
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v30, v29, 16, 1
	v_cmp_o_f32_e64 s8, v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v77, v29, v30, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v29, v31
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v218, 0, v29, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v29, v218, v76
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v29, s47, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v30, v29, 16, 1
	v_cmp_o_f32_e64 s10, v29, v29
	v_add3_u32 v76, v29, v30, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v29, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v29, 0, v29, s2
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v30, v29, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v30, s47, v30
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v31, v30, 16, 1
	v_cmp_o_f32_e64 s11, v30, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add3_u32 v75, v30, v31, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v30, v81
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v81, -16, v26
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v30, 0, v30, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v31, v30, v74
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v31, s47, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v32, v31, 16, 1
	v_cmp_o_f32_e64 s12, v31, v31
	v_add3_u32 v74, v31, v32, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v31, v82
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v82, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v82, v221, v82
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v31, 0, v31, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v82, 0, v82, s3
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v32, v31, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s16, v82, v82
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v32, s47, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v73, v32, 16, 1
	v_cmp_o_f32_e64 s13, v32, v32
	v_add3_u32 v73, v32, v73, 0x7fff
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_bfe_i32 v32, v226, 0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s14, 0, v32.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v32, v83, v86, 0x7fff
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v32.l, 0x7fff, v80.h, vcc_lo
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v83.h, v26.h
	v_mov_b16_e32 v83.l, v82.h
	v_cndmask_b16 v226.l, 0x7fff, v32.h, s15
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v32.h, 0x7fff, v76.h, s10
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v89, v32
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v32.l, 0x7fff, v79.h, s6
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s10, v30, v30
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s15, v116, v116
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v89, v32 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v32.h, 0x7fff, v75.h, s11
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v201, v32
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v32.l, 0x7fff, v78.h, s7
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v75.h, v26.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s11, v31, v31
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v201, v32 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v32.h, 0x7fff, v74.h, s12
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v202, v32
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v32.l, 0x7fff, v77.h, s8
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s12, v122, v122
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v202, v32 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v32.h, 0x7fff, v73.h, s13
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v203, v32
	ds_store_b16_d16_hi v203, v32 offset:512
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v32, v230
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v73, v26, v81, s14
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e64 v230.l, v91.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v32, v221, v32
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s13, v120, v120
	v_cmp_o_f32_e64 s14, v118, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v32, 0, v32, s3
	v_mov_b16_e32 v26.l, v32.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	v_and_b32_e32 v74, 1, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v32, v32, v74, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v74, v84
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v83, 1, v83
	v_cndmask_b16 v227.l, 0x7fff, v32.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v74, v221, v74
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v82, v82, v83, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v74, 0, v74, s3
	v_cndmask_b16 v225.h, 0x7fff, v82.h, s16
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s16, v114, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v75.l, v74.h
	v_cmp_o_f32_e64 s6, v74, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v75, 1, v75
	v_add3_u32 v74, v74, v75, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v75, v229
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v226.h, 0x7fff, v74.h, s6
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v75, v221, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v75, 0, v75, s3
	v_mov_b16_e32 v26.l, v75.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s7, v75, v75
	v_and_b32_e32 v76, 1, v26
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v26.l, 4, v231.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v75, v75, v76, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v76, v231, 0, 8
	v_alignbit_b32 v231, v92, v91, 24
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v228.l, 0x7fff, v75.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v32.l, v76.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v76, -16, v26
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v32.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v32, v73
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v73.h, v26.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v74, v26, v76, s8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v32, v221, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v32, 0, v32, s3
	v_mov_b16_e32 v73.l, v32.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v32, v32, v73, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v73, v232
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v232, v91, 20, 4
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v227.h, 0x7fff, v32.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v73, v221, v73
	v_cvt_f32_i32_e32 v32, v74
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v73, 0, v73, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v32, v221, v32
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v26.l, v73.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s6, v73, v73
	v_cndmask_b32_e64 v32, 0, v32, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v75, 1, v26
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v26.l, v91.l, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v73, v73, v75, 0x7fff
	v_mov_b16_e32 v73.l, v32.h
	v_cndmask_b16 v229.l, 0x7fff, v73.h, s6
	v_mov_b16_e32 v73.h, v26.h
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s6, 7, v220.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v32, v32, v73, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v229.h, 0x7fff, v32.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v32, 0, v99
	ds_load_b128 v[81:84], v32
	ds_load_b128 v[85:88], v204
	ds_load_b128 v[73:76], v205
	ds_load_b128 v[77:80], v206
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v176, v[222:225]
	ds_store_b128 v176, v[226:229] offset:16
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v226, 15, v91
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v223, 8, v91
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v223.h, 4, v92.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v222.l, v92.l, 15
	v_and_b16 v222.h, v92.h, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b64 v[224:225], 24, v[91:92]
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v92, -16, v226
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v26.l
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_bfe_u32 v227, v91, 16, 4
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v228, v91, 0, 8
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v229, v91, 8, 4
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s7, 7, v222.l
	v_cmp_lt_u16_e64 s8, 7, v222.h
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v222, v226, v92, vcc_lo
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v91.h, v223.l, 15
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v92, -16, v229
	v_or_b32_e32 v225, -16, v227
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v26.l, v224.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v222, v222
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v91.h
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v91.h, v234.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v225, v227, v225, s6
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v244, v224, 0, 8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v222, v221, v222
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v242, -16, v237
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v226, v229, v92, vcc_lo
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v92, -16, v238
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v91.h
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v91.h, v236.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v227, v237, v242, s7
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v225, v225
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v91.l, 4, v224.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v237, v238, v92, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v92, -16, v241
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v91.h
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_mul_f32_e32 v225, v221, v225
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v222, 0, v222, s4
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v229, v240, v243, s8
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v91.h, 4, v223.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v238, v241, v92, vcc_lo
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v92, 15, v231
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v26.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v225, 0, v225, s4
	v_dual_mov_b32 v99, v98 :: v_dual_mov_b32 v98, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v224, -16, v92
	v_mov_b32_e32 v97, v171
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v171.l, v26.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v231, v92, v224, vcc_lo
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v92, v230, 0, 8
	v_bfe_i32 v224, v235, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v230.h, v26.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v26.l, v92.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v92, -16, v232
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v26.l
	v_mov_b16_e64 v26.l, v224.l
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v224, -16, v239
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v92, v232, v92, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v26.l
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v26.l, v220.h, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v92, v92
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v224, v239, v224, vcc_lo
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v220, -16, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_mul_f32_e32 v92, v221, v92
	v_cvt_f32_i32_e32 v224, v224
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v92, 0, v92, s4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v224, v221, v224
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v230.l, v92.h
	v_cmp_o_f32_e32 vcc_lo, v92, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v224, 0, v224, s4
	v_and_b32_e32 v230, 1, v230
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s6, v224, v224
	v_add3_u32 v92, v92, v230, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v92.l, v228.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v230.h, v26.h
	v_mov_b16_e64 v230.l, v224.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v92.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v230, 1, v230
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v220, v26, v220, s7
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v26.l, v222.h
	v_add3_u32 v230, v224, v230, 0x7fff
	v_cmp_o_f32_e64 s7, v222, v222
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v224, 1, v26
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v26.l, v91.h, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v222, v222, v224, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v224, v223, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v224.h, 0x7fff, v92.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v228, -16, v26
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v222.l, 0x7fff, v222.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v92.l, v224.l
	v_cmp_gt_i16_e64 s8, 0, v92.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v92, v226
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v226, v26, v228, s8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v92, v221, v92
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s8, v225, v225
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v92, 0, v92, s4
	v_mov_b16_e32 v26.l, v92.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v92, v92
	v_and_b32_e32 v228, 1, v26
	v_mov_b16_e64 v26.l, v225.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v92, v92, v228, 0x7fff
	v_and_b32_e32 v228, 1, v26
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v26.l, v91.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v91, v220
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v220.h, v26.h
	v_cndmask_b16 v223.l, 0x7fff, v92.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v91, v221, v91
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v91, 0, v91, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v220.l, v91.h
	v_cmp_o_f32_e64 s7, v91, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v220, 1, v220
	v_add3_u32 v91, v91, v220, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v91.l, v244.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v220, v225, v228, 0x7fff
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v225, -16, v26
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v228.h, 0x7fff, v230.h, s6
	v_cndmask_b16 v222.h, 0x7fff, v91.h, s7
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s9, 0, v91.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v91, v231
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v224.l, 0x7fff, v220.h, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v92, v26, v225, s9
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v91, v221, v91
	v_cvt_f32_i32_e32 v225, v226
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v226.h, v26.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s9, v28, v28
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v92, v92
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v91, 0, v91, s4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v225, v221, v225
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v92, v221, v92
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v26.l, v91.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v225, 0, v225, s4
	v_cmp_o_f32_e64 s7, v91, v91
	v_cndmask_b32_e64 v92, 0, v92, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v220, 1, v26
	v_mov_b16_e64 v226.l, v225.h
	v_cmp_o_f32_e32 vcc_lo, v225, v225
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v26.l, v223.h, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v91, v91, v220, 0x7fff
	v_and_b32_e32 v226, 1, v226
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v91.l, v233.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v220, -16, v26
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_add3_u32 v225, v225, v226, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v91.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v225.l, 0x7fff, v91.h, s7
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v91, v227
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v223.h, 0x7fff, v225.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v220, v26, v220, s8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s8, v92, v92
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v91, v221, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v220, v220
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v226, 0, v91, s4
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v91.l, 4, v234.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v220, v221, v220
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v26.l, v226.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s7, v226, v226
	v_cndmask_b32_e64 v220, 0, v220, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v227, 1, v26
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v26.l, v91.l, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v91, v234, 0, 8
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v231, -16, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v91.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_add3_u32 v91, v226, v227, 0x7fff
	v_mov_b16_e64 v226.h, v26.h
	v_mov_b16_e64 v226.l, v92.h
	v_and_b32_e32 v226, 1, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v92, v92, v226, 0x7fff
	v_cndmask_b16 v226.l, 0x7fff, v91.h, s7
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v91, v237
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v225.h, 0x7fff, v92.h, s8
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v92, v26, v231, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v91, v221, v91
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v220, v220
	v_cndmask_b32_e64 v91, 0, v91, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v26.l, v91.h
	v_cmp_o_f32_e64 s6, v91, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v227, 1, v26
	v_add3_u32 v91, v91, v227, 0x7fff
	v_mov_b16_e64 v227.h, v26.h
	v_mov_b16_e64 v227.l, v220.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v227, 1, v227
	v_add3_u32 v220, v220, v227, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v227, v229
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v226.h, 0x7fff, v220.h, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v227, v221, v227
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v227, 0, v227, s4
	v_mov_b16_e64 v26.l, v227.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s7, v227, v227
	v_and_b32_e32 v229, 1, v26
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v26.l, 4, v236.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v227, v227, v229, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v229, v236, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v227.l, 0x7fff, v91.h, s6
	v_cndmask_b16 v228.l, 0x7fff, v227.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v91.l, v229.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v229, -16, v26
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s7, v90, v90
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v91.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v91, v92
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v92.h, v26.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v220, v26, v229, s8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v91, v221, v91
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v29, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v220, v220
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v91, 0, v91, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v220, v221, v220
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v92.l, v91.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v91, v91
	v_and_b32_e32 v92, 1, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v91, v91, v92, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v92, v238
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v227.h, 0x7fff, v91.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v92, v221, v92
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v91, 0, v220, s4
	v_cndmask_b32_e64 v92, 0, v92, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v91, v91
	v_mov_b16_e32 v26.l, v92.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s6, v92, v92
	v_and_b32_e32 v229, 1, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v92, v92, v229, 0x7fff
	v_mov_b16_e32 v92.l, v91.h
	v_cndmask_b16 v229.l, 0x7fff, v92.h, s6
	v_mov_b16_e32 v92.h, v26.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s6, v218, v218
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v92, 1, v92
	v_add3_u32 v91, v91, v92, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v92.l, v26.h
	v_mov_b16_e32 v91.l, v26.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v229.h, 0x7fff, v91.h, vcc_lo
	ds_store_b128 v176, v[222:225] offset:32
	ds_store_b128 v176, v[226:229] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v221, v180 offset:256
	ds_load_u16_d16 v220, v180
	ds_load_u16_d16 v222, v180 offset:512
	ds_load_u16_d16 v223, v180 offset:768
	ds_load_u16_d16 v224, v180 offset:1024
	ds_load_u16_d16 v226, v180 offset:1536
	ds_load_u16_d16 v225, v180 offset:1280
	ds_load_u16_d16 v232, v180 offset:1088
	ds_load_u16_d16 v231, v180 offset:832
	ds_load_u16_d16 v227, v180 offset:1792
	ds_load_u16_d16 v236, v180 offset:2048
	ds_load_u16_d16 v237, v180 offset:2304
	ds_load_u16_d16 v238, v180 offset:2560
	ds_load_u16_d16 v240, v180 offset:3072
	ds_load_u16_d16 v246, v180 offset:2624
	ds_load_u16_d16 v245, v180 offset:2368
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v232, v180 offset:1216
	ds_load_u16_d16_hi v222, v180 offset:640
	ds_load_u16_d16_hi v223, v180 offset:896
	ds_load_u16_d16_hi v224, v180 offset:1152
	ds_load_u16_d16 v233, v180 offset:1344
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v246, v180 offset:2752
	ds_load_u16_d16_hi v226, v180 offset:1664
	ds_load_u16_d16_hi v225, v180 offset:1408
	ds_load_u16_d16 v228, v180 offset:64
	ds_load_u16_d16_hi v221, v180 offset:384
	ds_load_u16_d16_hi v220, v180 offset:128
	ds_load_u16_d16 v230, v180 offset:576
	ds_load_u16_d16 v229, v180 offset:320
	ds_load_u16_d16_hi v227, v180 offset:1920
	ds_load_u16_d16 v234, v180 offset:1600
	ds_load_u16_d16 v244, v180 offset:2112
	ds_load_u16_d16 v235, v180 offset:1856
	ds_load_u16_d16_hi v231, v180 offset:960
	ds_load_u16_d16 v243, v180 offset:3840
	ds_load_u16_d16 v241, v180 offset:3328
	ds_load_u16_d16 v239, v180 offset:2816
	ds_load_u16_d16 v242, v180 offset:3584
	ds_load_u16_d16 v251, v180 offset:3904
	ds_load_u16_d16 v248, v180 offset:3136
	ds_load_u16_d16 v250, v180 offset:3648
	ds_load_u16_d16 v249, v180 offset:3392
	ds_load_u16_d16_hi v240, v180 offset:3200
	ds_load_u16_d16 v247, v180 offset:2880
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v245, v180 offset:2496
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v233, v180 offset:1472
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v234, v180 offset:1728
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v235, v180 offset:1984
	ds_load_u16_d16_hi v236, v180 offset:2176
	ds_load_u16_d16_hi v244, v180 offset:2240
	ds_load_u16_d16_hi v228, v180 offset:192
	ds_load_u16_d16_hi v230, v180 offset:704
	ds_load_u16_d16_hi v229, v180 offset:448
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v241, v180 offset:3456
	ds_load_u16_d16_hi v237, v180 offset:2432
	ds_load_u16_d16_hi v238, v180 offset:2688
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v239, v180 offset:2944
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v242, v180 offset:3712
	ds_load_u16_d16_hi v243, v180 offset:3968
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v251, v180 offset:4032
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v247, v180 offset:3008
	ds_load_u16_d16_hi v248, v180 offset:3264
	ds_load_u16_d16_hi v250, v180 offset:3776
	ds_load_u16_d16_hi v249, v180 offset:3520
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[33:40], v[220:227], v[81:88], v[33:40]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v219, v219
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v220.l, v26.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v221, v112, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[64:71], v[228:235], v[81:88], v[64:71]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v224.l, v26.h
	v_mov_b16_e64 v225.l, v26.h
	v_mov_b16_e64 v226.l, v26.h
	v_mov_b16_e64 v227.l, v26.h
	v_mov_b16_e64 v228.l, v26.h
	v_mov_b16_e64 v229.l, v26.h
	v_mov_b16_e64 v230.l, v26.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[33:40], v[236:243], v[73:80], v[33:40]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v240, v112, v221, 0x7fff
	v_bfe_u32 v221, v214, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v231.l, v26.h
	v_mov_b16_e64 v232.l, v26.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[64:71], v[244:251], v[73:80], v[64:71]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v73, v219, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v241, v214, v221, 0x7fff
	v_bfe_u32 v221, v42, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v233.l, v26.h
	v_mov_b16_e64 v234.l, v26.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v73, v219, v73, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v73.l, v26.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v242, v42, v221, 0x7fff
	v_bfe_u32 v221, v23, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v235.l, v26.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v73.h, 0x7fff, v73.h, vcc_lo
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v236.l, v26.h
	v_mov_b16_e64 v237.l, v26.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v243, v23, v221, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v238.l, v26.h
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v74, v219, v73
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e64 v219.l, v26.h
	.loc	1 732 54 is_stmt 1              ; attention_backward.py:732:54
	v_mov_b16_e64 v239.l, v26.h
	v_mov_b16_e64 v249.l, v26.h
	v_mov_b16_e64 v251.l, v26.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v75, v74, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v248.l, v26.h
	v_mov_b16_e64 v250.l, v26.h
	v_mov_b16_e64 v223.l, v26.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v74, v74, v75, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v75, v218, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v222.l, v26.h
	v_mov_b16_e64 v221.l, v26.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v26.l, 0x7fff, v74.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v75, v218, v75, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v75.l, v26.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v166, v166
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v75.h, 0x7fff, v75.h, s6
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v89, v73
	ds_store_b16_d16_hi v89, v75 offset:512
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v76, v218, v75
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v73, v29, 16, 1
	v_bfe_u32 v75, v28, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v218.l, v26.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v77, v76, 16, 1
	v_cmp_o_f32_e64 s6, v76, v76
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_add3_u32 v73, v29, v73, 0x7fff
	v_add3_u32 v75, v28, v75, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v76, v76, v77, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v77, v90, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v91.h, 0x7fff, v73.h, s8
	v_bfe_u32 v73, v27, 16, 1
	v_cmp_o_f32_e64 s8, v27, v27
	v_cndmask_b16 v218.h, 0x7fff, v75.h, s9
	v_add3_u32 v77, v90, v77, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v77.l, v26.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v73, v27, v73, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v29, v29, v91 :: v_dual_sub_f32 v28, v28, v218
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v77.h, 0x7fff, v77.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v92.h, 0x7fff, v73.h, s8
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v78, v90, v77
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v201, v77
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v77, v30, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v27, v27, v92
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v79, v78, 16, 1
	v_cmp_o_f32_e64 s7, v78, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_add3_u32 v77, v30, v77, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v90, v78, v79, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v78, v31, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v90.l, 0x7fff, v76.h, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v219.h, 0x7fff, v77.h, s10
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s6, v168, v168
	v_cmp_o_f32_e64 s10, v126, v126
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v78, v31, v78, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v30, v30, v219
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v220.h, 0x7fff, v78.h, s11
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v201, v91 offset:512
	ds_store_b16_d16_hi v202, v92
	ds_store_b16_d16_hi v202, v219 offset:512
	ds_store_b16_d16_hi v203, v218
	ds_store_b16_d16_hi v203, v220 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[81:84], v32
	ds_load_b128 v[85:88], v204
	ds_load_b128 v[73:76], v205
	ds_load_b128 v[77:80], v206
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v89, v26
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v26.l, 0x7fff, v90.h, s7
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v89, v90 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v89, v166, 16, 1
	v_bfe_u32 v90, v168, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v31, v31, v220
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s7, v29, v29
	v_cmp_o_f32_e64 s8, v30, v30
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v89, v166, v89, 0x7fff
	v_add3_u32 v90, v168, v90, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s9, v31, v31
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v91, v122, 16, 1
	v_bfe_u32 v92, v120, 16, 1
	v_cndmask_b16 v224.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v138, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v138, v138
	v_cndmask_b16 v225.h, 0x7fff, v90.h, s6
	v_bfe_u32 v90, v152, 16, 1
	v_cmp_o_f32_e64 s6, v152, v152
	v_add3_u32 v89, v138, v89, 0x7fff
	v_bfe_u32 v218, v118, 16, 1
	v_bfe_u32 v219, v116, 16, 1
	v_add3_u32 v90, v152, v90, 0x7fff
	v_cmp_o_f32_e64 s11, v124, v124
	v_cndmask_b16 v226.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v140, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v140, v140
	v_cndmask_b16 v233.h, 0x7fff, v90.h, s6
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s6, v28, v28
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v90, v124, 16, 1
	v_add3_u32 v89, v140, v89, 0x7fff
	v_add3_u32 v91, v122, v91, 0x7fff
	v_add3_u32 v92, v120, v92, 0x7fff
	v_add3_u32 v218, v118, v218, 0x7fff
	v_add3_u32 v90, v124, v90, 0x7fff
	v_cndmask_b16 v227.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v142, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v142, v142
	v_add3_u32 v219, v116, v219, 0x7fff
	v_bfe_u32 v220, v114, 16, 1
	v_cndmask_b16 v179.h, 0x7fff, v90.h, s11
	v_add3_u32 v89, v142, v89, 0x7fff
	v_cndmask_b16 v182.h, 0x7fff, v91.h, s12
	v_cndmask_b16 v223.h, 0x7fff, v92.h, s13
	v_add3_u32 v220, v114, v220, 0x7fff
	v_cndmask_b16 v222.h, 0x7fff, v218.h, s14
	v_cndmask_b16 v228.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v144, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v144, v144
	v_cndmask_b16 v221.h, 0x7fff, v219.h, s15
	v_cndmask_b16 v219.h, 0x7fff, v240.h, s17
	v_cndmask_b16 v218.h, 0x7fff, v241.h, s18
	v_add3_u32 v89, v144, v89, 0x7fff
	v_cndmask_b16 v92.h, 0x7fff, v242.h, s19
	v_cndmask_b16 v91.h, 0x7fff, v243.h, s20
	v_mov_b32_e32 v106, v59
	v_mov_b32_e32 v104, v57
	v_cndmask_b16 v229.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v146, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v146, v146
	v_mov_b32_e32 v56, v188
	v_cndmask_b16 v220.h, 0x7fff, v220.h, s16
	v_mov_b32_e32 v57, v189
	v_add3_u32 v89, v146, v89, 0x7fff
	v_dual_mov_b32 v58, v190 :: v_dual_mov_b32 v59, v191
	v_dual_mov_b32 v60, v192 :: v_dual_mov_b32 v61, v193
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b16 v230.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v148, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v148, v148
	v_dual_mov_b32 v62, v194 :: v_dual_mov_b32 v63, v195
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v187, v146, v230
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v89, v148, v89, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v230.l, v179.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v188, v144, v229 :: v_dual_sub_f32 v189, v142, v228
	v_sub_f32_e32 v190, v140, v227
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v231.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v150, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v150, v150
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v191, v138, v226 :: v_dual_sub_f32 v168, v168, v225
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v186, v148, v231
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v89, v150, v89, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v231.l, v182.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v166, v166, v224
	v_sub_f32_e32 v152, v152, v233
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v233.l, v222.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v232.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v154, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v154, v154
	v_cmp_o_f32_e64 s11, v125, v125
	v_cmp_o_f32_e64 s12, v123, v123
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v150, v150, v232
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v89, v154, v89, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v232.l, v223.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s13, v121, v121
	v_cmp_o_f32_e64 s14, v119, v119
	v_cmp_o_f32_e64 s15, v117, v117
	v_cndmask_b16 v234.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v156, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v156, v156
	v_cmp_o_f32_e64 s16, v115, v115
	v_cmp_o_f32_e64 s17, v113, v113
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v148, v154, v234
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v89, v156, v89, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v234.l, v221.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v154, v121, 16, 1
	v_cmp_o_f32_e64 s18, v215, v215
	v_cmp_o_f32_e64 s19, v43, v43
	v_cndmask_b16 v235.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v158, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v158, v158
	v_cmp_o_f32_e64 s20, v24, v24
	v_add3_u32 v154, v121, v154, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v146, v156, v235
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v89, v158, v89, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v235.l, v220.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v156, v117, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v124, v124, v179
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e32 v91.l, v26.h
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v236.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v160, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v160, v160
	v_add3_u32 v156, v117, v156, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v195.l, v26.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v144, v158, v236
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v89, v160, v89, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v236.l, v219.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v158, v113, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v220.l, v26.h
	v_mov_b16_e64 v219.l, v26.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v237.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v162, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v162, v162
	v_add3_u32 v158, v113, v158, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v218.l, v26.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v142, v160, v237
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v89, v162, v89, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v237.l, v218.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v160, v43, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v92.l, v26.h
	v_mov_b32_e32 v179, v45
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v238.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v164, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v164, v164
	v_add3_u32 v160, v43, v160, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v45, v47 :: v_dual_sub_f32 v140, v162, v238
	v_add3_u32 v89, v164, v89, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v238.l, v92.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v92, v42, v92
	v_mov_b32_e32 v42, v216
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v239.h, 0x7fff, v89.h, vcc_lo
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v89, v27, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v138, v164, v239
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v27, v27, v89, 0x7fff
	v_bfe_u32 v89, v28, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v239.l, v91.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v91, v23, v91
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v28, v28, v89, 0x7fff
	v_bfe_u32 v89, v29, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v29, v29, v89, 0x7fff
	v_bfe_u32 v89, v30, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v29.h, s7
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v30, v30, v89, 0x7fff
	v_bfe_u32 v89, v31, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v201, v26
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v26.l, 0x7fff, v27.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v201, v27 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v27.l, 0x7fff, v30.h, s8
	v_add3_u32 v31, v31, v89, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v29, v132, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v202, v26
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v26.l, 0x7fff, v28.h, s6
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v202, v27 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v27.l, 0x7fff, v31.h, s9
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v203, v26
	ds_store_b16 v203, v27 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v27, v136, 16, 1
	v_bfe_u32 v28, v134, 16, 1
	v_bfe_u32 v30, v130, 16, 1
	v_bfe_u32 v31, v128, 16, 1
	v_bfe_u32 v89, v126, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v136, v136
	v_cmp_o_f32_e64 s6, v134, v134
	v_cmp_o_f32_e64 s7, v132, v132
	v_cmp_o_f32_e64 s8, v130, v130
	v_cmp_o_f32_e64 s9, v128, v128
	v_add3_u32 v27, v136, v27, 0x7fff
	v_add3_u32 v28, v134, v28, 0x7fff
	v_add3_u32 v29, v132, v29, 0x7fff
	v_add3_u32 v30, v130, v30, 0x7fff
	v_add3_u32 v31, v128, v31, 0x7fff
	v_add3_u32 v89, v126, v89, 0x7fff
	v_cndmask_b16 v170.h, 0x7fff, v27.h, vcc_lo
	v_cndmask_b16 v175.h, 0x7fff, v28.h, s6
	v_cndmask_b16 v171.h, 0x7fff, v29.h, s7
	v_cndmask_b16 v173.h, 0x7fff, v30.h, s8
	v_cndmask_b16 v174.h, 0x7fff, v31.h, s9
	v_cndmask_b16 v0.h, 0x7fff, v89.h, s10
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[240:243], v32
	ds_load_b128 v[244:247], v204
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v228.l, v174.h
	v_mov_b16_e64 v229.l, v0.h
	v_mov_b16_e64 v227.l, v173.h
	v_mov_b16_e64 v226.l, v171.h
	v_mov_b16_e64 v225.l, v175.h
	v_mov_b16_e64 v224.l, v170.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v27, v167, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v167, v167
	v_bfe_u32 v28, v169, 16, 1
	v_cmp_o_f32_e64 s6, v169, v169
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[224:231], v[81:88], v[9:16]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v27, v167, v27, 0x7fff
	v_cmp_o_f32_e64 s10, v127, v127
	v_add3_u32 v28, v169, v28, 0x7fff
	v_cmp_o_f32_e64 s7, v133, v133
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[232:239], v[73:80], v[9:16]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s8, v131, v131
	v_cmp_o_f32_e64 s9, v129, v129
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v130, v130, v173
	v_sub_f32_e32 v134, v134, v175
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[224:231], v[240:247], v[9:16]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v224.h, 0x7fff, v27.h, vcc_lo
	v_bfe_u32 v27, v139, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v139, v139
	v_cndmask_b16 v225.h, 0x7fff, v28.h, s6
	v_bfe_u32 v28, v153, 16, 1
	v_cmp_o_f32_e64 s6, v153, v153
	v_add3_u32 v27, v139, v27, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v224.l, v26.h
	v_mov_b16_e64 v226.l, v26.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v28, v153, v28, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v230.l, v26.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v226.h, 0x7fff, v27.h, vcc_lo
	v_bfe_u32 v27, v141, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v141, v141
	v_cndmask_b16 v249.h, 0x7fff, v28.h, s6
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v231.l, v26.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v162, v167, v224
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v27, v141, v27, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v167, v139, v226
	v_sub_f32_e32 v89, v153, v249
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v153, v123, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v225.l, v26.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v227.h, 0x7fff, v27.h, vcc_lo
	v_bfe_u32 v27, v143, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v143, v143
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v227.l, v26.h
	v_mov_b16_e64 v228.l, v26.h
	v_mov_b16_e64 v229.l, v26.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v27, v143, v27, 0x7fff
	v_add3_u32 v153, v123, v153, 0x7fff
	v_bfe_u32 v139, v137, 16, 1
	v_cmp_o_f32_e64 s6, v135, v135
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v132, v132, v171
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v228.h, 0x7fff, v27.h, vcc_lo
	v_bfe_u32 v27, v145, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v145, v145
	v_cndmask_b16 v200.h, 0x7fff, v153.h, s12
	v_add3_u32 v139, v137, v139, 0x7fff
	v_cndmask_b16 v153.h, 0x7fff, v154.h, s13
	v_add3_u32 v27, v145, v27, 0x7fff
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s12, v190, v190
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v123, v123, v200
	v_mov_b32_e32 v171, v97
	v_mov_b32_e32 v97, v98
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v229.h, 0x7fff, v27.h, vcc_lo
	v_bfe_u32 v27, v147, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v147, v147
	v_dual_mov_b32 v98, v99 :: v_dual_mov_b32 v99, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v178, v145, v229
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v27, v147, v27, 0x7fff
	v_bfe_u32 v145, v131, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v153.l, v26.h
	v_mov_b16_e64 v139.l, v26.h
	v_mov_b32_e32 v100, v101
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v230.h, 0x7fff, v27.h, vcc_lo
	v_bfe_u32 v27, v149, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v149, v149
	v_add3_u32 v145, v131, v145, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v145.l, v26.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v193, v147, v230
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v27, v149, v27, 0x7fff
	v_bfe_u32 v147, v129, 16, 1
	v_cndmask_b16 v196.h, 0x7fff, v145.h, s8
	v_cndmask_b16 v145.h, 0x7fff, v158.h, s17
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s17, v124, v124
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v231.h, 0x7fff, v27.h, vcc_lo
	v_bfe_u32 v27, v151, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v151, v151
	v_add3_u32 v147, v129, v147, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v147.l, v26.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v194, v149, v231
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v27, v151, v27, 0x7fff
	v_bfe_u32 v149, v127, 16, 1
	v_cndmask_b16 v197.h, 0x7fff, v147.h, s9
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v231.l, v200.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v132, v132
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v248.h, 0x7fff, v27.h, vcc_lo
	v_bfe_u32 v27, v155, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v155, v155
	v_add3_u32 v149, v127, v149, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v149.l, v26.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v90, v151, v248
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v27, v155, v27, 0x7fff
	v_bfe_u32 v151, v125, 16, 1
	v_cndmask_b16 v198.h, 0x7fff, v149.h, s10
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v164, v169, v225
	v_sub_f32_e32 v169, v141, v227
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v250.h, 0x7fff, v27.h, vcc_lo
	v_bfe_u32 v27, v157, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v157, v157
	v_add3_u32 v151, v125, v151, 0x7fff
	v_bfe_u32 v141, v135, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v32, v155, v250
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v27, v157, v27, 0x7fff
	v_bfe_u32 v155, v119, 16, 1
	v_cndmask_b16 v199.h, 0x7fff, v151.h, s11
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v192, v143, v228
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v143, v133, 16, 1
	v_cndmask_b16 v251.h, 0x7fff, v27.h, vcc_lo
	v_bfe_u32 v27, v159, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v159, v159
	v_add3_u32 v141, v135, v141, 0x7fff
	v_add3_u32 v143, v133, v143, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v31, v157, v251
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v27, v159, v27, 0x7fff
	v_bfe_u32 v157, v115, 16, 1
	v_add3_u32 v155, v119, v155, 0x7fff
	v_cndmask_b16 v195.h, 0x7fff, v143.h, s7
	v_cndmask_b16 v149.h, 0x7fff, v156.h, s15
	v_cndmask_b16 v252.h, 0x7fff, v27.h, vcc_lo
	v_bfe_u32 v27, v161, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v161, v161
	v_add3_u32 v157, v115, v157, 0x7fff
	v_cndmask_b16 v151.h, 0x7fff, v155.h, s14
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v30, v159, v252
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v27, v161, v27, 0x7fff
	v_bfe_u32 v159, v215, 16, 1
	v_cndmask_b16 v147.h, 0x7fff, v157.h, s16
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v230.l, v199.h
	v_mov_b16_e64 v229.l, v198.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v253.h, 0x7fff, v27.h, vcc_lo
	v_bfe_u32 v27, v163, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v163, v163
	v_add3_u32 v159, v215, v159, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v228.l, v197.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v29, v161, v253
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v27, v163, v27, 0x7fff
	v_bfe_u32 v161, v24, 16, 1
	v_cndmask_b16 v143.h, 0x7fff, v159.h, s18
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v227.l, v196.h
	v_mov_b16_e64 v226.l, v195.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v254.h, 0x7fff, v27.h, vcc_lo
	v_bfe_u32 v27, v165, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v165, v165
	v_add3_u32 v161, v24, v161, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v253.l, v143.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v28, v163, v254
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v27, v165, v27, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v252.l, v145.h
	v_mov_b16_e64 v251.l, v147.h
	v_mov_b16_e64 v250.l, v149.h
	v_mov_b16_e64 v249.l, v151.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v255.h, 0x7fff, v27.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v137, v137
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v248.l, v153.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v143.l, v26.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v122, v122, v182 :: v_dual_sub_f32 v27, v165, v255
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v163.h, 0x7fff, v139.h, vcc_lo
	v_cndmask_b16 v165.h, 0x7fff, v141.h, s6
	v_cndmask_b16 v141.h, 0x7fff, v160.h, s19
	v_cndmask_b16 v139.h, 0x7fff, v161.h, s20
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_load_b128 v[154:157], v205
	ds_load_b128 v[158:161], v206
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v224.l, v163.h
	v_mov_b16_e64 v225.l, v165.h
	v_mov_b16_e64 v254.l, v141.h
	v_mov_b16_e64 v255.l, v139.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s19, v122, v122
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v126, v0
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[224:231], v[81:88], v[1:8]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v165.l, v26.h
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v130, v130
	v_cmp_o_f32_e64 s7, v134, v134
	v_bfe_u32 v126, v0, 16, 1
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[248:255], v[73:80], v[1:8]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s15, v0, v0
	v_cmp_o_f32_e64 s16, v188, v188
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v127, v127, v198
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v0, v0, v126, 0x7fff
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[224:231], v[240:247], v[1:8]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v126, v188, 16, 1
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v151.l, v26.h
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[232:239], v[154:161], v[9:16]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[237:240], off, off
	scratch_load_b128 v[241:244], off, off offset:16
	v_wmma_f32_16x16x16_bf16 v[1:8], v[248:255], v[154:161], v[1:8]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[245:248], off, off offset:32
	scratch_load_b128 v[249:252], off, off offset:48
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v159, v124, 16, 1
	v_bfe_u32 v157, v130, 16, 1
	v_bfe_u32 v155, v134, 16, 1
	v_bfe_u32 v156, v132, 16, 1
	v_add3_u32 v126, v188, v126, 0x7fff
	v_add3_u32 v124, v124, v159, 0x7fff
	v_bfe_u32 v159, v187, 16, 1
	v_add3_u32 v130, v130, v157, 0x7fff
	v_bfe_u32 v157, v190, 16, 1
	v_add3_u32 v134, v134, v155, 0x7fff
	v_bfe_u32 v155, v168, 16, 1
	v_add3_u32 v160, v187, v159, 0x7fff
	v_bfe_u32 v159, v122, 16, 1
	v_add3_u32 v157, v190, v157, 0x7fff
	v_cndmask_b16 v157.l, 0x7fff, v130.h, s11
	v_add3_u32 v155, v168, v155, 0x7fff
	v_cndmask_b16 v155.l, 0x7fff, v134.h, s7
	v_add3_u32 v122, v122, v159, 0x7fff
	v_bfe_u32 v159, v186, 16, 1
	v_cndmask_b16 v160.l, 0x7fff, v124.h, s17
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v124, v133, v195
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v132, v132, v156, 0x7fff
	v_bfe_u32 v156, v191, 16, 1
	v_add3_u32 v161, v186, v159, 0x7fff
	v_cndmask_b16 v161.l, 0x7fff, v122.h, s19
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v122, v135, v165
	v_sub_f32_e32 v128, v128, v174
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v159.h, 0x7fff, v126.h, s16
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v126, v131, v196
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v156, v191, v156, 0x7fff
	v_bfe_u32 v130, v122, 16, 1
	v_cmp_o_f32_e64 s7, v122, v122
	v_bfe_u32 v158, v128, 16, 1
	v_cndmask_b16 v156.l, 0x7fff, v132.h, s9
	v_cmp_o_f32_e64 s9, v124, v124
	v_add3_u32 v130, v122, v130, 0x7fff
	v_bfe_u32 v122, v164, 16, 1
	v_cmp_o_f32_e64 s13, v128, v128
	v_add3_u32 v128, v128, v158, 0x7fff
	v_bfe_u32 v158, v189, 16, 1
	v_cmp_o_f32_e64 s11, v126, v126
	v_add3_u32 v131, v164, v122, 0x7fff
	v_bfe_u32 v122, v124, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v125, v125, v199
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v158, v189, v158, 0x7fff
	v_cndmask_b16 v158.l, 0x7fff, v128.h, s13
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v128, v129, v197
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v124, v124, v122, 0x7fff
	v_bfe_u32 v122, v167, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v136, v136, v170
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v159.l, 0x7fff, v0.h, s15
	v_cmp_o_f32_e64 s13, v128, v128
	v_cmp_o_f32_e64 s15, v127, v127
	v_add3_u32 v132, v167, v122, 0x7fff
	v_bfe_u32 v122, v126, 16, 1
	v_bfe_u32 v154, v136, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v136, v136
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v163.l, v26.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v166, v166
	v_add3_u32 v126, v126, v122, 0x7fff
	v_bfe_u32 v122, v169, 16, 1
	v_add3_u32 v136, v136, v154, 0x7fff
	v_bfe_u32 v154, v166, 16, 1
	v_cmp_o_f32_e64 s8, v168, v168
	v_cmp_o_f32_e64 s10, v191, v191
	v_add3_u32 v133, v169, v122, 0x7fff
	v_bfe_u32 v122, v128, 16, 1
	v_add3_u32 v154, v166, v154, 0x7fff
	v_cmp_o_f32_e64 s14, v189, v189
	v_cmp_o_f32_e64 s18, v187, v187
	v_cmp_o_f32_e64 s20, v186, v186
	v_add3_u32 v128, v128, v122, 0x7fff
	v_bfe_u32 v122, v192, 16, 1
	v_cndmask_b16 v154.l, 0x7fff, v136.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v137, v163
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v154.h, 0x7fff, v154.h, s6
	v_cndmask_b16 v155.h, 0x7fff, v155.h, s8
	v_add3_u32 v134, v192, v122, 0x7fff
	v_bfe_u32 v122, v127, 16, 1
	v_cndmask_b16 v156.h, 0x7fff, v156.h, s10
	v_cndmask_b16 v157.h, 0x7fff, v157.h, s12
	v_cndmask_b16 v158.h, 0x7fff, v158.h, s14
	v_cndmask_b16 v160.h, 0x7fff, v160.h, s18
	v_add3_u32 v127, v127, v122, 0x7fff
	v_bfe_u32 v122, v178, 16, 1
	v_cndmask_b16 v161.h, 0x7fff, v161.h, s20
	v_bfe_u32 v129, v0, 16, 1
	v_dual_mov_b32 v187, v50 :: v_dual_mov_b32 v186, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v135, v178, v122, 0x7fff
	v_bfe_u32 v122, v125, 16, 1
	v_mov_b32_e32 v50, v51
	v_mov_b32_e32 v51, v52
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[154:161], v[81:88], v[9:16]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_add3_u32 v136, v125, v122, 0x7fff
	v_bfe_u32 v122, v193, 16, 1
	v_add3_u32 v0, v0, v129, 0x7fff
	v_bfe_u32 v129, v162, 16, 1
	v_cmp_o_f32_e64 s6, v162, v162
	v_cmp_o_f32_e64 s8, v164, v164
	v_add3_u32 v137, v193, v122, 0x7fff
	v_bfe_u32 v122, v123, 16, 1
	v_add3_u32 v129, v162, v129, 0x7fff
	v_cmp_o_f32_e64 s10, v167, v167
	v_cmp_o_f32_e64 s12, v169, v169
	v_cmp_o_f32_e64 s14, v192, v192
	v_add3_u32 v154, v123, v122, 0x7fff
	v_bfe_u32 v122, v194, 16, 1
	v_cmp_o_f32_e64 s16, v178, v178
	v_cmp_o_f32_e64 s17, v125, v125
	v_cmp_o_f32_e64 s18, v193, v193
	v_cmp_o_f32_e64 s19, v123, v123
	v_cmp_o_f32_e64 s20, v194, v194
	v_add3_u32 v155, v194, v122, 0x7fff
	v_cndmask_b16 v122.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v122.h, 0x7fff, v129.h, s6
	v_cndmask_b16 v123.l, 0x7fff, v130.h, s7
	v_cndmask_b16 v123.h, 0x7fff, v131.h, s8
	v_cndmask_b16 v124.l, 0x7fff, v124.h, s9
	v_cndmask_b16 v124.h, 0x7fff, v132.h, s10
	v_cndmask_b16 v125.l, 0x7fff, v126.h, s11
	v_cndmask_b16 v125.h, 0x7fff, v133.h, s12
	v_cndmask_b16 v126.l, 0x7fff, v128.h, s13
	v_cndmask_b16 v126.h, 0x7fff, v134.h, s14
	v_cndmask_b16 v127.l, 0x7fff, v127.h, s15
	v_cndmask_b16 v127.h, 0x7fff, v135.h, s16
	v_cndmask_b16 v128.l, 0x7fff, v136.h, s17
	v_cndmask_b16 v128.h, 0x7fff, v137.h, s18
	v_cndmask_b16 v129.l, 0x7fff, v154.h, s19
	v_cndmask_b16 v129.h, 0x7fff, v155.h, s20
	v_dual_mov_b32 v195, v63 :: v_dual_mov_b32 v194, v62
	v_dual_mov_b32 v193, v61 :: v_dual_mov_b32 v192, v60
	v_dual_mov_b32 v191, v59 :: v_dual_mov_b32 v190, v58
	v_dual_mov_b32 v189, v57 :: v_dual_mov_b32 v188, v56
	v_mov_b32_e32 v56, v103
	v_dual_mov_b32 v170, v95 :: v_dual_mov_b32 v59, v106
	v_dual_mov_b32 v57, v104 :: v_dual_mov_b32 v58, v105
	v_dual_mov_b32 v60, v107 :: v_dual_mov_b32 v61, v108
	v_dual_mov_b32 v62, v109 :: v_dual_mov_b32 v63, v110
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[122:129], v[81:88], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v120, v223
	v_sub_f32_e32 v82, v118, v222
	v_sub_f32_e32 v84, v116, v221
	v_sub_f32_e32 v86, v114, v220
	v_sub_f32_e32 v88, v112, v219
	v_sub_f32_e32 v110, v214, v218
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v81, v0, 16, 1
	v_bfe_u32 v83, v82, 16, 1
	v_bfe_u32 v85, v84, 16, 1
	v_bfe_u32 v87, v86, 16, 1
	v_bfe_u32 v112, v88, 16, 1
	v_bfe_u32 v114, v110, 16, 1
	v_bfe_u32 v108, v92, 16, 1
	v_bfe_u32 v106, v91, 16, 1
	v_mov_b32_e32 v49, v53
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_add3_u32 v0, v0, v81, 0x7fff
	v_bfe_u32 v81, v150, 16, 1
	v_cmp_o_f32_e64 s7, v82, v82
	v_add3_u32 v82, v82, v83, 0x7fff
	v_bfe_u32 v83, v152, 16, 1
	v_cmp_o_f32_e64 s9, v84, v84
	v_add3_u32 v84, v84, v85, 0x7fff
	v_bfe_u32 v85, v148, 16, 1
	v_cmp_o_f32_e64 s11, v86, v86
	v_add3_u32 v86, v86, v87, 0x7fff
	v_bfe_u32 v87, v146, 16, 1
	v_cmp_o_f32_e64 s13, v88, v88
	v_add3_u32 v88, v88, v112, 0x7fff
	v_bfe_u32 v112, v144, 16, 1
	v_cmp_o_f32_e64 s15, v110, v110
	v_add3_u32 v110, v110, v114, 0x7fff
	v_bfe_u32 v114, v142, 16, 1
	v_cmp_o_f32_e64 s17, v92, v92
	v_add3_u32 v92, v92, v108, 0x7fff
	v_bfe_u32 v108, v140, 16, 1
	v_cmp_o_f32_e64 s19, v91, v91
	v_add3_u32 v91, v91, v106, 0x7fff
	v_bfe_u32 v106, v138, 16, 1
	v_cmp_o_f32_e64 s6, v150, v150
	v_add3_u32 v81, v150, v81, 0x7fff
	v_cmp_o_f32_e64 s8, v152, v152
	v_add3_u32 v83, v152, v83, 0x7fff
	v_cmp_o_f32_e64 s10, v148, v148
	v_add3_u32 v85, v148, v85, 0x7fff
	v_cmp_o_f32_e64 s12, v146, v146
	v_add3_u32 v87, v146, v87, 0x7fff
	v_cmp_o_f32_e64 s14, v144, v144
	v_add3_u32 v112, v144, v112, 0x7fff
	v_cmp_o_f32_e64 s16, v142, v142
	v_add3_u32 v114, v142, v114, 0x7fff
	v_cmp_o_f32_e64 s18, v140, v140
	v_add3_u32 v108, v140, v108, 0x7fff
	v_cmp_o_f32_e64 s20, v138, v138
	v_add3_u32 v106, v138, v106, 0x7fff
	v_cndmask_b16 v81.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v81.h, 0x7fff, v81.h, s6
	v_cndmask_b16 v82.l, 0x7fff, v82.h, s7
	v_cndmask_b16 v82.h, 0x7fff, v83.h, s8
	v_cndmask_b16 v83.l, 0x7fff, v84.h, s9
	v_cndmask_b16 v83.h, 0x7fff, v85.h, s10
	v_cndmask_b16 v84.l, 0x7fff, v86.h, s11
	v_cndmask_b16 v84.h, 0x7fff, v87.h, s12
	v_cndmask_b16 v85.l, 0x7fff, v88.h, s13
	v_cndmask_b16 v85.h, 0x7fff, v112.h, s14
	v_cndmask_b16 v86.l, 0x7fff, v110.h, s15
	v_cndmask_b16 v86.h, 0x7fff, v114.h, s16
	v_cndmask_b16 v87.l, 0x7fff, v92.h, s17
	v_cndmask_b16 v87.h, 0x7fff, v108.h, s18
	v_cndmask_b16 v88.l, 0x7fff, v91.h, s19
	v_cndmask_b16 v88.h, 0x7fff, v106.h, s20
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v121, v153
	v_mov_b32_e32 v178, v41
	v_mov_b32_e32 v41, v17
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v89, v89
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[73:80], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v81, v119, v151 :: v_dual_sub_f32 v82, v117, v149
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v87, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v83, v115, v147
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v88, v81, 16, 1
	v_cmp_o_f32_e64 s7, v81, v81
	v_add3_u32 v0, v0, v87, 0x7fff
	v_bfe_u32 v87, v90, 16, 1
	v_cmp_o_f32_e64 s6, v90, v90
	v_add3_u32 v88, v81, v88, 0x7fff
	v_bfe_u32 v81, v89, 16, 1
	v_cmp_o_f32_e64 s10, v32, v32
	v_add3_u32 v87, v90, v87, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v84, v113, v145
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s12, v31, v31
	v_add3_u32 v89, v89, v81, 0x7fff
	v_bfe_u32 v81, v82, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v85, v215, v143
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v141.l, v26.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v30, v30
	v_cmp_o_f32_e64 s16, v29, v29
	v_add3_u32 v90, v82, v81, 0x7fff
	v_bfe_u32 v81, v32, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v86, v43, v141
	v_sub_f32_e32 v26, v24, v139
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s18, v28, v28
	v_cmp_o_f32_e64 s9, v82, v82
	v_add3_u32 v32, v32, v81, 0x7fff
	v_bfe_u32 v81, v83, 16, 1
	v_cmp_o_f32_e64 s19, v26, v26
	v_cmp_o_f32_e64 s11, v83, v83
	v_cmp_o_f32_e64 s13, v84, v84
	v_cmp_o_f32_e64 s15, v85, v85
	v_add3_u32 v91, v83, v81, 0x7fff
	v_bfe_u32 v81, v31, 16, 1
	v_cmp_o_f32_e64 s17, v86, v86
	v_cmp_o_f32_e64 s20, v27, v27
	v_cndmask_b16 v82.l, 0x7fff, v88.h, s7
	v_cndmask_b16 v82.h, 0x7fff, v89.h, s8
	v_add3_u32 v31, v31, v81, 0x7fff
	v_bfe_u32 v81, v84, 16, 1
	v_cndmask_b16 v83.l, 0x7fff, v90.h, s9
	v_cndmask_b16 v83.h, 0x7fff, v32.h, s10
	v_dual_mov_b32 v17, v72 :: v_dual_mov_b32 v72, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v92, v84, v81, 0x7fff
	v_bfe_u32 v81, v30, 16, 1
	v_cndmask_b16 v84.l, 0x7fff, v91.h, s11
	v_cndmask_b16 v84.h, 0x7fff, v31.h, s12
	v_dual_mov_b32 v19, v20 :: v_dual_mov_b32 v20, v21
	v_add3_u32 v30, v30, v81, 0x7fff
	v_bfe_u32 v81, v85, 16, 1
	v_mov_b32_e32 v21, v55
	v_mov_b32_e32 v95, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v106, v85, v81, 0x7fff
	v_bfe_u32 v81, v29, 16, 1
	v_cndmask_b16 v85.l, 0x7fff, v92.h, s13
	v_cndmask_b16 v85.h, 0x7fff, v30.h, s14
	v_add3_u32 v29, v29, v81, 0x7fff
	v_bfe_u32 v81, v86, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v107, v86, v81, 0x7fff
	v_bfe_u32 v81, v28, 16, 1
	v_cndmask_b16 v86.l, 0x7fff, v106.h, s15
	v_cndmask_b16 v86.h, 0x7fff, v29.h, s16
	v_cndmask_b16 v87.l, 0x7fff, v107.h, s17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v28, v28, v81, 0x7fff
	v_bfe_u32 v81, v26, 16, 1
	v_add3_u32 v26, v26, v81, 0x7fff
	v_bfe_u32 v81, v27, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v88.l, 0x7fff, v26.h, s19
	v_add3_u32 v27, v27, v81, 0x7fff
	v_cndmask_b16 v81.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v81.h, 0x7fff, v87.h, s6
	v_cndmask_b16 v87.h, 0x7fff, v28.h, s18
	.loc	1 607 13 is_stmt 1              ; attention_backward.py:607:13
	s_add_i32 s6, s33, 32
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v88.h, 0x7fff, v27.h, s20
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmpk_lt_u32 s33, 0x7e0
	s_mov_b32 s33, s6
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[81:88], v[73:80], v[1:8]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ;   in Loop: Header=BB0_1 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_movk_i32 s6, 0x800
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_and_not1_b32 vcc_lo, exec_lo, s30
	s_mov_b32 s8, 0
	s_cbranch_vccnz .LBB0_1
; %bb.4:
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v53, off, off offset:84
	scratch_load_b32 v25, off, off offset:92
	scratch_load_b32 v26, off, off offset:88
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
	v_or_b32_e32 v0, s22, v53
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, v25, v26
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_or_b32_e32 v26, s23, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s2, s44, v25
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v26, s44, v26
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v48, 2, v25
	v_or_b32_e32 v47, 4, v25
	v_or_b32_e32 v46, 6, v25
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v45, 8, v25
	v_or_b32_e32 v44, 10, v25
	v_or_b32_e32 v43, 12, v25
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v49, v26, v25, 2
	v_add_lshl_u32 v50, v26, v48, 2
	v_add_lshl_u32 v51, v26, v47, 2
	v_add_lshl_u32 v52, v26, v44, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v0, 32, v25
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v42, 14, v25
	v_or_b32_e32 v41, 34, v25
	v_or_b32_e32 v32, 36, v25
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s3, s44, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v33, v49, s[4:7], 0 offen
	v_cndmask_b32_e64 v33, 0x80000000, v50, s2
	v_add_lshl_u32 v49, v26, v46, 2
	v_cndmask_b32_e64 v50, 0x80000000, v51, s2
	v_add_lshl_u32 v51, v26, v45, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v31, 38, v25
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v34, v33, s[4:7], 0 offen
	v_cndmask_b32_e64 v33, 0x80000000, v49, s2
	v_add_lshl_u32 v49, v26, v43, 2
	v_cndmask_b32_e64 v34, 0x80000000, v51, s2
	buffer_store_b32 v35, v50, s[4:7], 0 offen
	v_cndmask_b32_e64 v35, 0x80000000, v52, s2
	buffer_store_b32 v36, v33, s[4:7], 0 offen
	v_add_lshl_u32 v33, v26, v42, 2
	s_clause 0x1
	buffer_store_b32 v37, v34, s[4:7], 0 offen
	buffer_store_b32 v38, v35, s[4:7], 0 offen
	v_cndmask_b32_e64 v34, 0x80000000, v49, s2
	v_add_lshl_u32 v36, v26, v41, 2
	v_add_lshl_u32 v35, v26, v0, 2
	v_add_lshl_u32 v37, v26, v32, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s3
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v39, v34, s[4:7], 0 offen
	v_cndmask_b32_e64 v34, 0x80000000, v36, s2
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	v_cndmask_b32_e64 v36, 0x80000000, v37, s2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v30, 40, v25
	v_or_b32_e32 v29, 42, v25
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x3
	buffer_store_b32 v40, v33, s[4:7], 0 offen
	buffer_store_b32 v64, v35, s[4:7], 0 offen
	buffer_store_b32 v65, v34, s[4:7], 0 offen
	buffer_store_b32 v66, v36, s[4:7], 0 offen
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v34, s46, v53
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v28, 44, v25
	v_or_b32_e32 v27, 46, v25
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v17, v26, v31, 2
	v_add_lshl_u32 v18, v26, v30, 2
	v_add_lshl_u32 v19, v26, v29, 2
	v_add_lshl_u32 v33, v26, v28, 2
	v_add_lshl_u32 v26, v26, v27, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s0, s46, v25
	v_cmp_gt_i32_e64 s1, s46, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v0, v34, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	s_clause 0x4
	buffer_store_b32 v67, v17, s[4:7], 0 offen
	buffer_store_b32 v68, v18, s[4:7], 0 offen
	buffer_store_b32 v69, v19, s[4:7], 0 offen
	buffer_store_b32 v70, v33, s[4:7], 0 offen
	buffer_store_b32 v71, v26, s[4:7], 0 offen
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s0, vcc_lo, s0
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v0, v0, s21, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v17, v34, v25
	v_add_nc_u32_e32 v18, v34, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_add_nc_u32 v19, v34, v47
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v20, v34, v46
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v17, v17, s21, 2
	s_delay_alu instid0(VALU_DEP_4)
	v_add_lshl_u32 v18, v18, s21, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v21, v34, v45
	v_add_nc_u32_e32 v22, v34, v44
	v_add_nc_u32_e32 v23, v34, v43
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v24, v34, v42
	v_add_nc_u32_e32 v25, v34, v41
	v_add_nc_u32_e32 v26, v34, v32
	v_add_nc_u32_e32 v31, v34, v31
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v9, v17, s[48:51], 0 offen
	v_add_lshl_u32 v9, v19, s21, 2
	v_cndmask_b32_e64 v17, 0x80000000, v18, s0
	v_add_lshl_u32 v18, v20, s21, 2
	v_add_lshl_u32 v19, v21, s21, 2
	v_add_lshl_u32 v20, v22, s21, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	buffer_store_b32 v10, v17, s[48:51], 0 offen
	v_cndmask_b32_e64 v10, 0x80000000, v18, s0
	v_cndmask_b32_e64 v17, 0x80000000, v19, s0
	v_cndmask_b32_e64 v18, 0x80000000, v20, s0
	buffer_store_b32 v11, v9, s[48:51], 0 offen
	v_add_lshl_u32 v9, v23, s21, 2
	s_clause 0x2
	buffer_store_b32 v12, v10, s[48:51], 0 offen
	buffer_store_b32 v13, v17, s[48:51], 0 offen
	buffer_store_b32 v14, v18, s[48:51], 0 offen
	v_add_lshl_u32 v10, v24, s21, 2
	v_add_lshl_u32 v11, v25, s21, 2
	v_add_lshl_u32 v12, v26, s21, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v30, v34, v30
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v29, v34, v29
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_add_nc_u32 v28, v34, v28
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_add_nc_u32 v27, v34, v27
	s_clause 0x4
	buffer_store_b32 v15, v9, s[48:51], 0 offen
	buffer_store_b32 v16, v10, s[48:51], 0 offen
	buffer_store_b32 v1, v0, s[48:51], 0 offen
	buffer_store_b32 v2, v11, s[48:51], 0 offen
	buffer_store_b32 v3, v12, s[48:51], 0 offen
	v_add_lshl_u32 v0, v31, s21, 2
	v_add_lshl_u32 v1, v30, s21, 2
	v_add_lshl_u32 v2, v29, s21, 2
	v_add_lshl_u32 v3, v28, s21, 2
	v_add_lshl_u32 v9, v27, s21, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v0, s[48:51], 0 offen
	buffer_store_b32 v5, v1, s[48:51], 0 offen
	buffer_store_b32 v6, v2, s[48:51], 0 offen
	buffer_store_b32 v7, v3, s[48:51], 0 offen
	buffer_store_b32 v8, v9, s[48:51], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 100
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
		.amdhsa_next_free_sgpr 64
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 64
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 100
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19624
; TotalNumSgprs: 66
; NumVgprs: 256
; ScratchSize: 100
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 66
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 100
    .sgpr_count:     66
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 24
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
