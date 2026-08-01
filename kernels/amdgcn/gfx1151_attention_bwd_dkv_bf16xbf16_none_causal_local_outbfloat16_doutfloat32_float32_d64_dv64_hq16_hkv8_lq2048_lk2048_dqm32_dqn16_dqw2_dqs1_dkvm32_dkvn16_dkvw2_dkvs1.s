	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x74
.Ltmp0:
	.loc	1 536 23 prologue_end           ; attention_backward.py:536:23
	v_and_b32_e32 v43, 7, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v9, 3, v0
	s_clause 0x1
	s_load_b128 s[44:47], s[0:1], 0x0
	s_load_b64 s[8:9], s[0:1], 0x10
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s56, s2, 4
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_lshlrev_b32_e32 v33, 3, v43
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v1, s56, v9
	.loc	1 533 24                        ; attention_backward.py:533:24
	s_lshl_b32 s2, s3, 11
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v10, 4, v0
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_add_i32 s12, s2, s56
	s_mov_b32 s7, 0x31027000
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v1
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_mov_b32 s11, s7
	s_mov_b32 s10, s6
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v51, v0, 4, 1
	s_clause 0x4
	s_load_b32 s35, s[0:1], 0x7c
	s_load_b64 s[30:31], s[0:1], 0x94
	s_load_b64 s[28:29], s[0:1], 0x58
	s_load_b32 s57, s[0:1], 0x9c
	s_load_b256 s[36:43], s[0:1], 0x38
	s_lshl_b32 s58, s3, 12
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[203:204], null, s18, v9, v[33:34]
	s_mul_i32 s34, s18, s12
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e64 s2, s18, v33
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_and_b32 s5, s47, 0xffff
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_mul_lo_u32 v42, s19, v9
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v9, 56, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_mul_i32 s33, s19, s12
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_lshl_add_u32 v2, s18, 3, v203
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_lshl_u32 v1, v203, s34, 1
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s4, vcc_lo, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v44, 1, v9
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 517 21                        ; attention_backward.py:517:21
	scratch_store_b32 off, v2, off offset:128 ; 4-byte Folded Spill
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_lshl_u32 v2, v2, s34, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	v_xor_b32_e32 v9, v10, v44
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_lshl_add_u32 v45, s19, 3, v42
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v194, s56, v51
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e64 v5, 0x80000000, v2, s4
	s_mov_b32 s4, s46
	v_add_nc_u32_e32 v191, 0, v9
	s_clause 0x1
	buffer_load_b128 v[1:4], v1, s[4:7], 0 offen
	buffer_load_b128 v[5:8], v5, s[4:7], 0 offen
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s1, s56, s30
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s31, s31, s57
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s1, s1, s57
	.loc	1 603 39                        ; attention_backward.py:603:39
	s_sub_i32 s3, s56, s57
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s1, s1, 16
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_sub_i32 s5, s56, s31
	.loc	1 603 25                        ; attention_backward.py:603:25
	s_max_i32 s3, s3, 0
	.loc	1 589 24                        ; attention_backward.py:589:24
	s_max_i32 s5, s5, 0
	.loc	1 604 45                        ; attention_backward.py:604:45
	s_and_b32 s3, s3, 0x7fffffe0
	s_mov_b32 s52, s40
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s0, 0x800, v194
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v224, 2, v194
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_mul_f32 s60, s35, 0x3fb8aa3b
	s_mov_b32 s20, 0
	s_mov_b32 s59, -1
	s_mov_b32 s46, s6
	s_mov_b32 s47, s7
	s_mov_b32 s48, s38
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(1)
	ds_store_b128 v191, v[1:4]
	s_waitcnt vmcnt(0)
	ds_store_b128 v191, v[5:8] offset:1024
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v98, 15, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v46, 16, v0
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_and_b32_e32 v47, 32, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v7, v1 :: v_dual_lshlrev_b32 v148, 5, v0
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v11, v42, v33
	v_mov_b32_e32 v6, v1
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v147, v45, v33
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s4, s19, v33
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v10, off offset:132
	scratch_store_b32 off, v11, off offset:164
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_lshl_u32 v10, v11, s33, 1
	v_add_lshl_u32 v11, v147, s33, 1
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v9, 0x80000000, v10 :: v_dual_cndmask_b32 v10, 0x80000000, v11
	s_clause 0x1
	buffer_load_b128 v[34:37], v9, s[8:11], 0 offen
	buffer_load_b128 v[38:41], v10, s[8:11], 0 offen
	v_dual_mov_b32 v9, v1 :: v_dual_lshlrev_b32 v0, 3, v0
	v_mov_b32_e32 v3, v1
	v_mul_u32_u24_e32 v48, 0x110, v98
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v10, v1
	v_dual_mov_b32 v11, v1 :: v_dual_lshlrev_b32 v46, 2, v46
	v_dual_mov_b32 v13, v1 :: v_dual_and_b32 v0, 48, v0
	v_dual_mov_b32 v14, v1 :: v_dual_lshlrev_b32 v49, 1, v98
	v_lshl_or_b32 v187, v47, 7, v48
	v_xor_b32_e32 v190, v148, v44
	v_lshl_add_u32 v50, v47, 1, 0
	v_lshl_or_b32 v192, v98, 6, v0
	v_or3_b32 v188, v49, v46, v47
	v_add3_u32 v198, 0, v47, v49
	v_xor_b32_e32 v0, 16, v190
	v_xor_b32_e32 v49, 32, v187
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v27, v1
	v_lshl_add_u32 v199, v98, 2, v50
	v_xor_b32_e32 v50, 48, v187
	v_add_nc_u32_e32 v189, 0, v0
	v_dual_mov_b32 v29, v1 :: v_dual_add_nc_u32 v0, 0, v49
	scratch_store_b32 off, v51, off offset:248 ; 4-byte Folded Spill
	v_xor_b32_e32 v52, 64, v187
	v_mov_b32_e32 v31, v1
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v50
	v_xor_b32_e32 v53, 0x50, v187
	v_mov_b32_e32 v17, v1
	v_xor_b32_e32 v54, 0x60, v187
	v_dual_mov_b32 v12, v1 :: v_dual_lshlrev_b32 v43, 4, v43
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	v_dual_mov_b32 v19, v1 :: v_dual_add_nc_u32 v0, 0, v52
	v_xor_b32_e32 v55, 0x70, v187
	v_mov_b32_e32 v21, v1
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshl_or_b32 v43, v98, 7, v43
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v53
	v_xor_b32_e32 v56, 0x80, v187
	v_mov_b32_e32 v23, v1
	v_lshl_or_b32 v70, v47, 6, v43
	v_dual_mov_b32 v15, v1 :: v_dual_add_nc_u32 v46, 0, v43
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v54
	v_xad_u32 v48, v43, 16, 0
	v_xad_u32 v73, v43, 32, 0
	v_xad_u32 v77, v43, 48, 0
	v_xad_u32 v81, v43, 64, 0
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v55
	v_xad_u32 v85, 0x50, v43, 0
	v_xad_u32 v89, 0x60, v43, 0
	v_xad_u32 v93, 0x70, v43, 0
	v_xor_b32_e32 v43, 0x880, v190
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v56
	v_xor_b32_e32 v44, 0x890, v190
	v_mov_b32_e32 v25, v1
	v_dual_mov_b32 v26, v1 :: v_dual_add_nc_u32 v205, 0, v43
	scratch_store_b32 off, v0, off offset:160 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v70
	v_add_nc_u32_e32 v196, 0, v44
	v_mad_u64_u32 v[43:44], null, s19, 24, v[42:43]
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshrrev_b32_e32 v99, 1, v47
	v_or_b32_e32 v51, 4, v33
	v_xor_b32_e32 v47, 16, v187
	v_xor_b32_e32 v65, 0x120, v188
	v_xor_b32_e32 v52, 0x50, v70
	v_lshl_add_u32 v42, s19, 4, v42
	v_add_nc_u32_e32 v55, 0, v0
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, 6, v194
	v_mov_b32_e32 v8, v1
	v_dual_mov_b32 v28, v1 :: v_dual_add_nc_u32 v193, 0, v47
	v_add_nc_u32_e32 v222, 0, v65
	v_xor_b32_e32 v47, 32, v70
	v_xor_b32_e32 v49, 48, v70
	v_xor_b32_e32 v50, 64, v70
	v_add_nc_u32_e32 v91, 0, v52
	v_add_nc_u32_e32 v94, v45, v51
	v_add_nc_u32_e32 v122, v51, v42
	v_add_nc_u32_e32 v65, v51, v43
	.loc	1 534 24                        ; attention_backward.py:534:24
	ds_load_b128 v[149:152], v46
	ds_load_b128 v[153:156], v48
	ds_load_b128 v[157:160], v73
	ds_load_b128 v[161:164], v77
	ds_load_b128 v[165:168], v81
	ds_load_b128 v[169:172], v85
	ds_load_b128 v[173:176], v89
	ds_load_b128 v[177:180], v93
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mad_u64_u32 v[51:52], null, s18, 24, v[203:204]
	.loc	1 590 24                        ; attention_backward.py:590:24
	v_med3_i32 v54, s1, 0, 0x800
	v_add_nc_u32_e32 v240, 0, v47
	v_add_nc_u32_e32 v96, 0, v49
	v_add_nc_u32_e32 v90, 0, v50
	v_add_nc_u32_e32 v95, v33, v42
	v_add_nc_u32_e32 v121, v33, v43
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s1, s5, 0x7fffffe0
	v_xor_b32_e32 v57, 0x90, v187
	.loc	1 604 24                        ; attention_backward.py:604:24
	s_max_u32 s40, s1, s3
	.loc	1 600 19                        ; attention_backward.py:600:19
	v_readfirstlane_b32 s1, v54
	v_xor_b32_e32 v58, 0xa0, v187
	v_xor_b32_e32 v59, 0xb0, v187
	v_xor_b32_e32 v60, 0xc0, v187
	v_xor_b32_e32 v61, 0xd0, v187
	v_xor_b32_e32 v62, 0xe0, v187
	v_xor_b32_e32 v63, 0xf0, v187
	v_xor_b32_e32 v64, 0x90, v188
	v_xor_b32_e32 v66, 0x1b0, v188
	v_xor_b32_e32 v67, 16, v192
	v_xor_b32_e32 v68, 32, v192
	v_xor_b32_e32 v69, 48, v192
	v_xor_b32_e32 v53, 0x60, v70
	v_xor_b32_e32 v97, 0x70, v70
	s_add_i32 s1, s1, 31
	v_mov_b32_e32 v4, v1
	.loc	1 600 17 is_stmt 0              ; attention_backward.py:600:17
	s_and_b32 s1, s1, 0x1fe0
	v_mov_b32_e32 v30, v1
	.loc	1 598 24 is_stmt 1              ; attention_backward.py:598:24
	s_min_u32 s61, s1, 0x800
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v18, v1
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v221, 0, v64
	v_dual_mov_b32 v22, v1 :: v_dual_add_nc_u32 v223, 0, v66
	v_dual_mov_b32 v24, v1 :: v_dual_add_nc_u32 v225, 0, v68
	v_add_nc_u32_e32 v56, 0, v57
	v_add_nc_u32_e32 v57, 0, v58
	v_add_nc_u32_e32 v58, 0, v59
	v_add_nc_u32_e32 v59, 0, v60
	v_add_nc_u32_e32 v60, 0, v61
	v_add_nc_u32_e32 v61, 0, v62
	v_add_nc_u32_e32 v62, 0, v63
	v_add_nc_u32_e32 v238, 0, v67
	v_add_nc_u32_e32 v226, 0, v69
	v_add_nc_u32_e32 v92, 0, v53
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v66, 4, v194
	s_cmp_lt_u32 s40, s61
	s_mov_b32 s1, 0
	s_cselect_b32 s62, -1, 0
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s49, s39, 0xffff
	s_and_b32 s53, s41, 0xffff
	s_and_b32 s37, s37, 0xffff
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt vmcnt(1)
	ds_store_b128 v191, v[34:37]
	s_waitcnt vmcnt(0)
	ds_store_b128 v191, v[38:41] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 514 23                        ; attention_backward.py:514:23
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 8, v194
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[33:36], v46
	ds_load_b128 v[37:40], v48
	ds_load_b128 v[43:46], v73
	ds_load_b128 v[47:50], v77
	ds_load_b128 v[71:74], v81
	ds_load_b128 v[75:78], v85
	ds_load_b128 v[79:82], v89
	ds_load_b128 v[83:86], v93
	v_add_nc_u32_e32 v41, 0, v97
	s_clause 0x4                            ; 44-byte Folded Spill
	scratch_store_b32 off, v70, off offset:168
	scratch_store_b32 off, v41, off offset:172
	scratch_store_b32 off, v55, off offset:176
	scratch_store_b128 off, v[149:152], off offset:180
	scratch_store_b128 off, v[153:156], off offset:196
	s_waitcnt lgkmcnt(7)
	scratch_store_b128 off, v[33:36], off   ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(6)
	scratch_store_b128 off, v[37:40], off offset:16 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(5)
	scratch_store_b128 off, v[43:46], off offset:32 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(4)
	scratch_store_b128 off, v[47:50], off offset:48 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(3)
	scratch_store_b128 off, v[71:74], off offset:64 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(2)
	scratch_store_b128 off, v[75:78], off offset:80 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[79:82], off offset:96 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	.loc	1 514 23                        ; attention_backward.py:514:23
	s_clause 0x1                            ; 20-byte Folded Spill
	scratch_store_b128 off, v[83:86], off offset:112
	scratch_store_b32 off, v0, off offset:216
	v_or_b32_e32 v0, 10, v194
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 12, v194
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[51:52], off offset:224
	scratch_store_b32 off, v0, off offset:232
	v_or_b32_e32 v0, 14, v194
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:236
	scratch_store_b32 off, v98, off offset:244
	scratch_store_b32 off, v99, off offset:252
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v0, v99, v98
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	s_branch .LBB0_2
.LBB0_1:                                ; %Flow270
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 39 is_stmt 0                ; attention_backward.py:0:39
	s_xor_b32 s3, s59, -1
	s_movk_i32 s1, 0x800
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s59, 0
	s_cbranch_vccz .LBB0_6
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s62
	s_cbranch_vccnz .LBB0_1
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_clause 0x6                            ; 32-byte Folded Reload
	scratch_load_b32 v75, off, off offset:212
	scratch_load_b32 v76, off, off offset:216
	scratch_load_b32 v77, off, off offset:220
	scratch_load_b64 v[78:79], off, off offset:224
	scratch_load_b32 v79, off, off offset:232
	scratch_load_b32 v80, off, off offset:236
	scratch_load_b32 v81, off, off offset:240
	.loc	1 662 34 is_stmt 1              ; attention_backward.py:662:34
	s_or_b32 s41, s58, s1
	s_mov_b32 s63, s40
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 663 37                        ; attention_backward.py:663:37
	scratch_load_b32 v0, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_add_i32 s1, s63, s41
	s_waitcnt vmcnt(15)
	v_lshl_add_u32 v35, s18, 4, v203
	s_mul_i32 s3, s1, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s21, s20
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v33, s3, v203, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v36, s3, v78, 1
	v_add_lshl_u32 v35, s3, v35, 1
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s50, s46
	s_mov_b32 s51, s47
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s1, s1, s19
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s54, s46
	s_mov_b32 s55, s47
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s38, s46
	s_mov_b32 s39, s47
	v_dual_mov_b32 v93, v240 :: v_dual_mov_b32 v104, s27
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v103, s26 :: v_dual_mov_b32 v102, s25
	v_dual_mov_b32 v101, s24 :: v_dual_mov_b32 v100, s23
	v_dual_mov_b32 v99, s22 :: v_dual_mov_b32 v98, s21
	v_dual_mov_b32 v97, s20 :: v_dual_mov_b32 v82, v165
	v_mov_b32_e32 v51, v147
	v_mov_b32_e32 v83, v166
	v_mov_b32_e32 v85, v168
	v_dual_mov_b32 v87, v170 :: v_dual_mov_b32 v52, v148
	v_mov_b32_e32 v53, v187
	v_mov_b32_e32 v84, v167
	v_mov_b32_e32 v86, v169
	v_mov_b32_e32 v88, v171
	v_mov_b32_e32 v204, v196
	v_mov_b32_e32 v54, v188
	v_mov_b32_e32 v64, v62
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v34, s3, v0, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	s_clause 0x3
	buffer_load_b128 v[105:108], v33, s[44:47], 0 offen
	buffer_load_b128 v[109:112], v34, s[44:47], 0 offen
	buffer_load_b128 v[113:116], v35, s[44:47], 0 offen
	buffer_load_b128 v[117:120], v36, s[44:47], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b128 v191, v[105:108]
	s_waitcnt vmcnt(2)
	ds_store_b128 v191, v[109:112] offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b128 v191, v[113:116] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v191, v[117:120] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:164 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v33, 0, v70
	ds_load_b128 v[123:126], v33
	ds_load_b128 v[127:130], v55
	ds_load_b128 v[131:134], v240
	ds_load_b128 v[135:138], v96
	v_or_b32_e32 v33, s41, v81
	v_dual_mov_b32 v55, v190 :: v_dual_mov_b32 v246, v164
	v_mov_b32_e32 v89, v172
	v_mov_b32_e32 v245, v163
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_add_lshl_u32 v33, v33, s63, 2
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v190, 0, v55
	v_dual_mov_b32 v244, v162 :: v_dual_mov_b32 v243, v161
	v_mov_b32_e32 v242, v160
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v34, v33, s[48:51], 0 offen
	v_dual_mov_b32 v241, v159 :: v_dual_mov_b32 v240, v158
	v_mov_b32_e32 v239, v157
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[139:146], v[149:156], v[123:130], v[97:104]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[123:126], v90
	ds_load_b128 v[127:130], v91
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v151, 0x1800, v199
	v_add_nc_u32_e32 v152, 0x1c00, v199
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[139:146], v[157:164], v[131:138], v[139:146]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[139:146], v[165:172], v[123:130], v[139:146]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[123:126], v92
	ds_load_b128 v[127:130], v41
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[139:146], v[173:180], v[123:130], v[139:146]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v127, 0x1400, v199
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v35, 4, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v35, v35, s1, 2
	v_cndmask_b32_e64 v37, 0x80000000, v35, s4
	v_add_lshl_u32 v35, s1, v147, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v41, 0x80000000, v35, s4
	v_add_lshl_u32 v35, v94, s1, 2
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v254, s60, v139, -v34
	v_fma_f32 v253, s60, v140, -v34
	v_fma_f32 v248, s60, v141, -v34
	v_fma_f32 v249, s60, v142, -v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v45, 0x80000000, v35, s4
	v_add_lshl_u32 v35, s1, v95, 2
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v252, s60, v143, -v34
	v_fma_f32 v250, s60, v144, -v34
	v_fma_f32 v251, s60, v145, -v34
	v_fma_f32 v247, s60, v146, -v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v123, 0x80000000, v35, s4
	v_add_lshl_u32 v35, s1, v122, 2
	v_add_lshl_u32 v34, s1, v0, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v124, 0x80000000, v35, s4
	v_add_lshl_u32 v35, s1, v121, 2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v125, 0x80000000, v35, s4
	v_add_lshl_u32 v35, s1, v65, 2
	v_cndmask_b32_e64 v126, 0x80000000, v35, s4
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v255, v33, s[52:55], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b128 v[33:36], v34, s[36:39], 0 offen
	buffer_load_b128 v[37:40], v37, s[36:39], 0 offen
	buffer_load_b128 v[41:44], v41, s[36:39], 0 offen
	buffer_load_b128 v[45:48], v45, s[36:39], 0 offen
	buffer_load_b128 v[206:209], v123, s[36:39], 0 offen
	buffer_load_b128 v[210:213], v124, s[36:39], 0 offen
	buffer_load_b128 v[227:230], v125, s[36:39], 0 offen
	buffer_load_b128 v[231:234], v126, s[36:39], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v123, 0, v148
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b128 v123, v[33:36]
	s_waitcnt vmcnt(6)
	ds_store_b128 v123, v[37:40] offset:16
	s_waitcnt vmcnt(5)
	ds_store_b128 v123, v[41:44] offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b128 v123, v[45:48] offset:2064
	s_waitcnt vmcnt(3)
	ds_store_b128 v123, v[206:209] offset:4096
	s_waitcnt vmcnt(2)
	ds_store_b128 v123, v[210:213] offset:4112
	s_waitcnt vmcnt(1)
	ds_store_b128 v123, v[227:230] offset:6144
	s_waitcnt vmcnt(0)
	ds_store_b128 v123, v[231:234] offset:6160
	v_add_nc_u32_e32 v123, 0x400, v199
	v_add_nc_u32_e32 v125, 0xc00, v199
	v_add_nc_u32_e32 v124, 0x800, v199
	v_dual_mov_b32 v67, v173 :: v_dual_add_nc_u32 v126, 0x1000, v199
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[149:150], v123 offset1:32
	ds_load_2addr_b32 v[155:156], v123 offset0:64 offset1:96
	ds_load_2addr_b32 v[147:148], v123 offset0:128 offset1:160
	ds_load_2addr_b32 v[157:158], v123 offset0:192 offset1:224
	ds_load_2addr_b32 v[145:146], v124 offset1:32
	ds_load_2addr_b32 v[159:160], v124 offset0:64 offset1:96
	ds_load_2addr_b32 v[143:144], v124 offset0:128 offset1:160
	ds_load_2addr_b32 v[161:162], v124 offset0:192 offset1:224
	ds_load_2addr_b32 v[141:142], v125 offset1:32
	ds_load_2addr_b32 v[163:164], v125 offset0:64 offset1:96
	ds_load_2addr_b32 v[139:140], v125 offset0:128 offset1:160
	ds_load_2addr_b32 v[165:166], v125 offset0:192 offset1:224
	ds_load_2addr_b32 v[137:138], v126 offset1:32
	ds_load_2addr_b32 v[167:168], v126 offset0:64 offset1:96
	ds_load_2addr_b32 v[135:136], v126 offset0:128 offset1:160
	ds_load_2addr_b32 v[169:170], v126 offset0:192 offset1:224
	ds_load_2addr_b32 v[133:134], v127 offset1:32
	ds_load_2addr_b32 v[171:172], v127 offset0:64 offset1:96
	ds_load_2addr_b32 v[131:132], v127 offset0:128 offset1:160
	v_dual_mov_b32 v68, v174 :: v_dual_mov_b32 v69, v175
	v_dual_mov_b32 v70, v176 :: v_dual_mov_b32 v71, v177
	v_dual_mov_b32 v72, v178 :: v_dual_mov_b32 v73, v179
	v_mov_b32_e32 v74, v180
	ds_load_2addr_b32 v[173:174], v127 offset0:192 offset1:224
	ds_load_2addr_b32 v[129:130], v151 offset1:32
	ds_load_2addr_b32 v[175:176], v151 offset0:64 offset1:96
	ds_load_2addr_b32 v[127:128], v151 offset0:128 offset1:160
	ds_load_2addr_b32 v[177:178], v151 offset0:192 offset1:224
	ds_load_2addr_b32 v[125:126], v152 offset1:32
	ds_load_2addr_b32 v[179:180], v152 offset0:64 offset1:96
	ds_load_2addr_b32 v[123:124], v152 offset0:128 offset1:160
	ds_load_2addr_b32 v[181:182], v152 offset0:192 offset1:224
	ds_load_2addr_b32 v[153:154], v199 offset1:32
	ds_load_2addr_b32 v[183:184], v199 offset0:64 offset1:96
	ds_load_2addr_b32 v[151:152], v199 offset0:128 offset1:160
	ds_load_2addr_b32 v[185:186], v199 offset0:192 offset1:224
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v190, v[33:36]
	ds_store_b128 v190, v[206:209] offset:4096
	ds_store_b128 v189, v[37:40]
	ds_store_b128 v189, v[210:213] offset:4096
	ds_store_b128 v205, v[41:44]
	ds_store_b128 v205, v[227:230] offset:4096
	ds_store_b128 v196, v[45:48]
	ds_store_b128 v196, v[231:234] offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:136 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v33, 0, v187
	ds_load_b128 v[33:36], v33
	ds_load_b128 v[37:40], v193
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s1, v34, v34
	v_cmp_o_f32_e64 s3, v35, v35
	v_cmp_o_f32_e64 s5, v36, v36
	v_add3_u32 v41, v33, v41, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v37, v37
	v_cmp_o_f32_e64 s7, v38, v38
	v_cmp_o_f32_e64 s8, v39, v39
	v_cmp_o_f32_e64 s9, v40, v40
	v_add3_u32 v42, v34, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	v_cndmask_b16 v206.l, 0x7fff, v41.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v206.h, 0x7fff, v42.h, s1
	v_add3_u32 v43, v35, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v207.l, 0x7fff, v43.h, s3
	v_add3_u32 v44, v36, v33, 0x7fff
	v_bfe_u32 v33, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v207.h, 0x7fff, v44.h, s5
	v_add3_u32 v45, v37, v33, 0x7fff
	v_bfe_u32 v33, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v208.l, 0x7fff, v45.h, s6
	v_add3_u32 v46, v38, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v208.h, 0x7fff, v46.h, s7
	v_add3_u32 v47, v39, v33, 0x7fff
	v_bfe_u32 v33, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v209.l, 0x7fff, v47.h, s8
	v_add3_u32 v48, v40, v33, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v209.h, 0x7fff, v48.h, s9
	s_waitcnt vmcnt(0)
	ds_load_b128 v[33:36], v0
	scratch_load_b32 v0, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v190, v33, 16, 1
	v_cmp_o_f32_e64 s10, v33, v33
	v_cmp_o_f32_e64 s11, v34, v34
	v_cmp_o_f32_e64 s12, v35, v35
	v_cmp_o_f32_e64 s13, v36, v36
	v_add3_u32 v33, v33, v190, 0x7fff
	v_bfe_u32 v190, v34, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v210.l, 0x7fff, v33.h, s10
	v_add3_u32 v34, v34, v190, 0x7fff
	v_bfe_u32 v190, v35, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v210.h, 0x7fff, v34.h, s11
	v_add3_u32 v35, v35, v190, 0x7fff
	v_bfe_u32 v190, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v211.l, 0x7fff, v35.h, s12
	v_add3_u32 v36, v36, v190, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v211.h, 0x7fff, v36.h, s13
	s_waitcnt vmcnt(0)
	ds_load_b128 v[37:40], v0
	scratch_load_b32 v0, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v190, v37, 16, 1
	v_cmp_o_f32_e64 s14, v37, v37
	v_cmp_o_f32_e64 s15, v38, v38
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v40, v40
	v_add3_u32 v37, v37, v190, 0x7fff
	v_bfe_u32 v190, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v212.l, 0x7fff, v37.h, s14
	v_add3_u32 v38, v38, v190, 0x7fff
	v_bfe_u32 v190, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v212.h, 0x7fff, v38.h, s15
	v_add3_u32 v39, v39, v190, 0x7fff
	v_bfe_u32 v190, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v213.l, 0x7fff, v39.h, s16
	v_add3_u32 v40, v40, v190, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v213.h, 0x7fff, v40.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[33:36], off, off
	scratch_load_b128 v[37:40], off, off offset:16
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[33:40], v[206:213], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[33:36], v0
	scratch_load_b32 v0, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s1, v34, v34
	v_cmp_o_f32_e64 s3, v35, v35
	v_cmp_o_f32_e64 s5, v36, v36
	v_add3_u32 v41, v33, v41, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v206.l, 0x7fff, v41.h, vcc_lo
	v_add3_u32 v42, v34, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v206.h, 0x7fff, v42.h, s1
	v_add3_u32 v43, v35, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v207.l, 0x7fff, v43.h, s3
	v_add3_u32 v44, v36, v33, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v207.h, 0x7fff, v44.h, s5
	s_waitcnt vmcnt(0)
	ds_load_b128 v[37:40], v0
	scratch_load_b32 v0, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v33, v37, 16, 1
	v_cmp_o_f32_e64 s6, v37, v37
	v_cmp_o_f32_e64 s7, v38, v38
	v_cmp_o_f32_e64 s8, v39, v39
	v_cmp_o_f32_e64 s9, v40, v40
	v_add3_u32 v45, v37, v33, 0x7fff
	v_bfe_u32 v33, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v208.l, 0x7fff, v45.h, s6
	v_add3_u32 v46, v38, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v208.h, 0x7fff, v46.h, s7
	v_add3_u32 v47, v39, v33, 0x7fff
	v_bfe_u32 v33, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v209.l, 0x7fff, v47.h, s8
	v_add3_u32 v48, v40, v33, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v209.h, 0x7fff, v48.h, s9
	s_waitcnt vmcnt(0)
	ds_load_b128 v[33:36], v0
	scratch_load_b32 v0, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v190, v33, 16, 1
	v_cmp_o_f32_e64 s10, v33, v33
	v_cmp_o_f32_e64 s11, v34, v34
	v_cmp_o_f32_e64 s12, v35, v35
	v_cmp_o_f32_e64 s13, v36, v36
	v_add3_u32 v33, v33, v190, 0x7fff
	v_bfe_u32 v190, v34, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v210.l, 0x7fff, v33.h, s10
	v_add3_u32 v34, v34, v190, 0x7fff
	v_bfe_u32 v190, v35, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v210.h, 0x7fff, v34.h, s11
	v_add3_u32 v35, v35, v190, 0x7fff
	v_bfe_u32 v190, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v211.l, 0x7fff, v35.h, s12
	v_add3_u32 v36, v36, v190, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v211.h, 0x7fff, v36.h, s13
	s_waitcnt vmcnt(0)
	ds_load_b128 v[37:40], v0
	scratch_load_b32 v0, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v190, v37, 16, 1
	v_cmp_o_f32_e64 s14, v37, v37
	v_cmp_o_f32_e64 s15, v38, v38
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v40, v40
	v_add3_u32 v37, v37, v190, 0x7fff
	v_bfe_u32 v190, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v212.l, 0x7fff, v37.h, s14
	v_add3_u32 v38, v38, v190, 0x7fff
	v_bfe_u32 v190, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v212.h, 0x7fff, v38.h, s15
	v_add3_u32 v39, v39, v190, 0x7fff
	v_bfe_u32 v190, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v213.l, 0x7fff, v39.h, s16
	v_add3_u32 v40, v40, v190, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v213.h, 0x7fff, v40.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[33:36], off, off offset:32
	scratch_load_b128 v[37:40], off, off offset:48
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[33:40], v[206:213], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[33:36], v0
	ds_load_b128 v[37:40], v56
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s1, v34, v34
	v_cmp_o_f32_e64 s3, v35, v35
	v_cmp_o_f32_e64 s5, v36, v36
	v_add3_u32 v41, v33, v41, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v37, v37
	v_cmp_o_f32_e64 s7, v38, v38
	v_cmp_o_f32_e64 s8, v39, v39
	v_cmp_o_f32_e64 s9, v40, v40
	v_add3_u32 v42, v34, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	v_cndmask_b16 v206.l, 0x7fff, v41.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v206.h, 0x7fff, v42.h, s1
	v_add3_u32 v43, v35, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v207.l, 0x7fff, v43.h, s3
	v_add3_u32 v44, v36, v33, 0x7fff
	v_bfe_u32 v33, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v207.h, 0x7fff, v44.h, s5
	v_add3_u32 v45, v37, v33, 0x7fff
	v_bfe_u32 v33, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v208.l, 0x7fff, v45.h, s6
	v_add3_u32 v46, v38, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v208.h, 0x7fff, v46.h, s7
	v_add3_u32 v47, v39, v33, 0x7fff
	v_bfe_u32 v33, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v209.l, 0x7fff, v47.h, s8
	v_add3_u32 v48, v40, v33, 0x7fff
	ds_load_b128 v[33:36], v57
	ds_load_b128 v[37:40], v58
	v_cndmask_b16 v209.h, 0x7fff, v48.h, s9
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v190, v33, 16, 1
	v_cmp_o_f32_e64 s10, v33, v33
	v_cmp_o_f32_e64 s11, v34, v34
	v_cmp_o_f32_e64 s12, v35, v35
	v_cmp_o_f32_e64 s13, v36, v36
	v_add3_u32 v33, v33, v190, 0x7fff
	v_bfe_u32 v190, v34, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s14, v37, v37
	v_cmp_o_f32_e64 s15, v38, v38
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v40, v40
	v_add3_u32 v34, v34, v190, 0x7fff
	v_bfe_u32 v190, v35, 16, 1
	v_cndmask_b16 v210.l, 0x7fff, v33.h, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v210.h, 0x7fff, v34.h, s11
	v_add3_u32 v35, v35, v190, 0x7fff
	v_bfe_u32 v190, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v211.l, 0x7fff, v35.h, s12
	v_add3_u32 v36, v36, v190, 0x7fff
	v_bfe_u32 v190, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v211.h, 0x7fff, v36.h, s13
	v_add3_u32 v37, v37, v190, 0x7fff
	v_bfe_u32 v190, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v212.l, 0x7fff, v37.h, s14
	v_add3_u32 v38, v38, v190, 0x7fff
	v_bfe_u32 v190, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v212.h, 0x7fff, v38.h, s15
	v_add3_u32 v39, v39, v190, 0x7fff
	v_bfe_u32 v190, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v213.l, 0x7fff, v39.h, s16
	v_add3_u32 v40, v40, v190, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v213.h, 0x7fff, v40.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[33:36], off, off offset:64
	scratch_load_b128 v[37:40], off, off offset:80
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[33:40], v[206:213], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[33:36], v59
	ds_load_b128 v[37:40], v60
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s1, v34, v34
	v_cmp_o_f32_e64 s3, v35, v35
	v_cmp_o_f32_e64 s5, v36, v36
	v_add3_u32 v41, v33, v41, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v37, v37
	v_cmp_o_f32_e64 s7, v38, v38
	v_cmp_o_f32_e64 s8, v39, v39
	v_cmp_o_f32_e64 s9, v40, v40
	v_add3_u32 v42, v34, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	v_cndmask_b16 v206.l, 0x7fff, v41.h, vcc_lo
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v41, s63, v81
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s63, s63, 32
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v206.h, 0x7fff, v42.h, s1
	v_add3_u32 v43, v35, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v42, s57, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v207.l, 0x7fff, v43.h, s3
	v_add3_u32 v44, v36, v33, 0x7fff
	v_bfe_u32 v33, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v207.h, 0x7fff, v44.h, s5
	v_add3_u32 v45, v37, v33, 0x7fff
	v_bfe_u32 v33, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v208.l, 0x7fff, v45.h, s6
	v_add3_u32 v46, v38, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v208.h, 0x7fff, v46.h, s7
	v_add3_u32 v47, v39, v33, 0x7fff
	v_bfe_u32 v33, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v209.l, 0x7fff, v47.h, s8
	v_add3_u32 v48, v40, v33, 0x7fff
	ds_load_b128 v[33:36], v61
	ds_load_b128 v[37:40], v62
	v_mov_b32_e32 v62, v60
	v_mov_b32_e32 v60, v58
	v_mov_b32_e32 v58, v56
	v_cndmask_b16 v209.h, 0x7fff, v48.h, s9
	v_dual_mov_b32 v56, v192 :: v_dual_mov_b32 v63, v61
	v_mov_b32_e32 v61, v59
	v_mov_b32_e32 v59, v57
	v_mov_b32_e32 v57, v193
	v_bfe_u32 v193, v126, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v193, v126, v193, 0x7fff
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v190, v33, 16, 1
	v_cmp_o_f32_e64 s10, v33, v33
	v_cmp_o_f32_e64 s11, v34, v34
	v_cmp_o_f32_e64 s12, v35, v35
	v_cmp_o_f32_e64 s13, v36, v36
	v_add3_u32 v33, v33, v190, 0x7fff
	v_bfe_u32 v190, v34, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s14, v37, v37
	v_cmp_o_f32_e64 s15, v38, v38
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v40, v40
	v_add3_u32 v34, v34, v190, 0x7fff
	v_bfe_u32 v190, v35, 16, 1
	v_cndmask_b16 v210.l, 0x7fff, v33.h, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v210.h, 0x7fff, v34.h, s11
	v_add3_u32 v35, v35, v190, 0x7fff
	v_bfe_u32 v190, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v211.l, 0x7fff, v35.h, s12
	v_add3_u32 v36, v36, v190, 0x7fff
	v_bfe_u32 v190, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v211.h, 0x7fff, v36.h, s13
	v_add3_u32 v37, v37, v190, 0x7fff
	v_bfe_u32 v190, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v212.l, 0x7fff, v37.h, s14
	v_add3_u32 v38, v38, v190, 0x7fff
	v_bfe_u32 v190, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v212.h, 0x7fff, v38.h, s15
	v_add3_u32 v39, v39, v190, 0x7fff
	v_bfe_u32 v190, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v213.l, 0x7fff, v39.h, s16
	v_add3_u32 v40, v40, v190, 0x7fff
	v_bfe_u32 v190, v139, 16, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v213.h, 0x7fff, v40.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[33:36], off, off offset:96
	scratch_load_b128 v[37:40], off, off offset:112
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v190, v139, v190, 0x7fff
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[33:40], v[206:213], v[97:104]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_dual_sub_f32 v38, v102, v255 :: v_dual_add_nc_u32 v41, s31, v41
	v_sub_f32_e32 v33, v97, v255
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v34, v98, v255
	v_sub_f32_e32 v40, v104, v255
	v_sub_f32_e32 v36, v100, v255
	.loc	1 678 21                        ; attention_backward.py:678:21
	v_min_i32_e32 v41, v42, v41
	.loc	1 678 47 is_stmt 0              ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v42, s30, v42
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 678 21                        ; attention_backward.py:678:21
	v_cmp_ge_i32_e64 s10, v41, v194
	v_cmp_ge_i32_e64 s11, v41, v224
	v_cmp_ge_i32_e64 s12, v41, v66
	v_cmp_ge_i32_e64 s13, v41, v75
	v_cmp_ge_i32_e64 s14, v41, v76
	v_cmp_ge_i32_e64 s15, v41, v77
	v_cmp_ge_i32_e64 s16, v41, v79
	v_cmp_ge_i32_e64 s17, v41, v80
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v254
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v194, v42
	v_cmp_ge_i32_e64 s1, v224, v42
	v_cmp_ge_i32_e64 s3, v66, v42
	v_cmp_ge_i32_e64 s5, v75, v42
	v_cmp_ge_i32_e64 s6, v76, v42
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s10, s10, vcc_lo
	s_and_b32 s1, s11, s1
	s_and_b32 vcc_lo, s0, s10
	s_and_b32 s1, s0, s1
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v98, 0, v41, vcc_lo
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s3, s12, s3
	s_and_b32 s5, s13, s5
	s_and_b32 s3, s0, s3
	s_and_b32 s5, s0, s5
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v33, v98, v33
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s6, s14, s6
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s7, v77, v42
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s6, s0, s6
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s8, v79, v42
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v33, s35, v33
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s9, v80, v42
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s7, s15, s7
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s10, v137, v137
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s7, s0, s7
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s8, s16, s8
	s_and_b32 s9, s17, s9
	s_and_b32 s8, s0, s8
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v33, v33, v41, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v253
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s9, s0, s9
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v253, 0, v188
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s11, v135, v135
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v33.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s12, v133, v133
	v_cmp_o_f32_e64 s13, v131, v131
	v_cmp_o_f32_e64 s14, v129, v129
	v_cmp_o_f32_e64 s15, v127, v127
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v97, 0, v41, s1
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v35, v99, v255
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s16, v125, v125
	v_cmp_o_f32_e64 s17, v123, v123
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_u32 s63, s61
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v34, v97, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v34, s35, v34
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v41, v34, 16, 1
	v_cmp_o_f32_e64 s1, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v34, v34, v41, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v248
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v248, 0, v41, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v35, v248, v35
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v35, s35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v41, v35, 16, 1
	v_cmp_o_f32_e64 s3, v35, v35
	v_add3_u32 v35, v35, v41, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v249
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v249, 0, v41, s5
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_dual_sub_f32 v39, v103, v255 :: v_dual_mul_f32 v36, v249, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_sub_f32 v37, v101, v255 :: v_dual_mul_f32 v36, s35, v36
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v41, v36, 16, 1
	v_cmp_o_f32_e64 s5, v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v36, v36, v41, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v252
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v99, 0, v41, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v37, v99, v37
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v37, s35, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v41, v37, 16, 1
	v_cmp_o_f32_e64 s6, v37, v37
	v_add3_u32 v37, v37, v41, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v250
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.h, 0x7fff, v37.h, s6
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v253, v33
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s1, v99, v99
	v_cmp_o_f32_e64 s6, v249, v249
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v253, v33 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v250, 0, v41, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v38, v250, v38
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v38, s35, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v41, v38, 16, 1
	v_cmp_o_f32_e64 s7, v38, v38
	v_add3_u32 v38, v38, v41, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v251
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.h, 0x7fff, v38.h, s7
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v221, v33
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v35.h, s3
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v97, v97
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v221, v33 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v251, 0, v41, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v39, v251, v39
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s7, v251, v251
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v39, s35, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v41, v39, 16, 1
	v_cmp_o_f32_e64 s8, v39, v39
	v_add3_u32 v39, v39, v41, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v247
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v247, 0, v192
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.h, 0x7fff, v39.h, s8
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v222, v33
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v36.h, s5
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s5, v250, v250
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v222, v33 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v252, 0, v41, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v40, v252, v40
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v252, v252
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v40, s35, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v41, v40, 16, 1
	v_cmp_o_f32_e64 s9, v40, v40
	v_add3_u32 v40, v40, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v33.h, 0x7fff, v40.h, s9
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	ds_store_b16 v223, v33
	ds_store_b16_d16_hi v223, v33 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[206:209], v247
	ds_load_b128 v[210:213], v238
	ds_load_b128 v[227:230], v225
	ds_load_b128 v[231:234], v226
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s9, v139, v139
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v190.h, 0x7fff, v190.h, s9
	v_cmp_o_f32_e64 s9, v140, v140
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, 0, v0
	ds_store_b128 v33, v[105:108]
	ds_store_b128 v33, v[109:112] offset:1024
	ds_store_b128 v33, v[113:116] offset:2048
	ds_store_b128 v33, v[117:120] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v101, v198 offset:256
	ds_load_u16_d16 v100, v198
	ds_load_u16_d16 v102, v198 offset:512
	ds_load_u16_d16 v103, v198 offset:768
	ds_load_u16_d16 v104, v198 offset:1024
	ds_load_u16_d16 v106, v198 offset:1536
	ds_load_u16_d16 v105, v198 offset:1280
	ds_load_u16_d16 v112, v198 offset:1088
	ds_load_u16_d16 v111, v198 offset:832
	ds_load_u16_d16 v107, v198 offset:1792
	ds_load_u16_d16 v33, v198 offset:2048
	ds_load_u16_d16 v34, v198 offset:2304
	ds_load_u16_d16 v35, v198 offset:2560
	ds_load_u16_d16 v37, v198 offset:3072
	ds_load_u16_d16 v43, v198 offset:2624
	ds_load_u16_d16 v42, v198 offset:2368
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v112, v198 offset:1216
	ds_load_u16_d16_hi v102, v198 offset:640
	ds_load_u16_d16_hi v103, v198 offset:896
	ds_load_u16_d16_hi v104, v198 offset:1152
	ds_load_u16_d16 v113, v198 offset:1344
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v43, v198 offset:2752
	ds_load_u16_d16_hi v106, v198 offset:1664
	ds_load_u16_d16_hi v105, v198 offset:1408
	ds_load_u16_d16 v108, v198 offset:64
	ds_load_u16_d16_hi v101, v198 offset:384
	ds_load_u16_d16_hi v100, v198 offset:128
	ds_load_u16_d16 v110, v198 offset:576
	ds_load_u16_d16 v109, v198 offset:320
	ds_load_u16_d16_hi v107, v198 offset:1920
	ds_load_u16_d16 v114, v198 offset:1600
	ds_load_u16_d16 v41, v198 offset:2112
	ds_load_u16_d16 v115, v198 offset:1856
	ds_load_u16_d16_hi v111, v198 offset:960
	ds_load_u16_d16 v40, v198 offset:3840
	ds_load_u16_d16 v38, v198 offset:3328
	ds_load_u16_d16 v36, v198 offset:2816
	ds_load_u16_d16 v39, v198 offset:3584
	ds_load_u16_d16 v48, v198 offset:3904
	ds_load_u16_d16 v45, v198 offset:3136
	ds_load_u16_d16 v47, v198 offset:3648
	ds_load_u16_d16 v46, v198 offset:3392
	ds_load_u16_d16_hi v37, v198 offset:3200
	ds_load_u16_d16 v44, v198 offset:2880
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v42, v198 offset:2496
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v113, v198 offset:1472
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v114, v198 offset:1728
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v115, v198 offset:1984
	ds_load_u16_d16_hi v33, v198 offset:2176
	ds_load_u16_d16_hi v41, v198 offset:2240
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v38, v198 offset:3456
	ds_load_u16_d16_hi v34, v198 offset:2432
	ds_load_u16_d16_hi v35, v198 offset:2688
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v36, v198 offset:2944
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v39, v198 offset:3712
	ds_load_u16_d16_hi v40, v198 offset:3968
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v48, v198 offset:4032
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v44, v198 offset:3008
	ds_load_u16_d16_hi v45, v198 offset:3264
	ds_load_u16_d16_hi v47, v198 offset:3776
	ds_load_u16_d16_hi v46, v198 offset:3520
	ds_load_u16_d16_hi v108, v198 offset:192
	ds_load_u16_d16_hi v110, v198 offset:704
	ds_load_u16_d16_hi v109, v198 offset:448
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[100:107], v[206:213], v[25:32]
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v120, v141, 16, 1
	v_bfe_u32 v0, v124, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v120, v141, v120, 0x7fff
	v_add3_u32 v0, v124, v0, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[33:40], v[227:234], v[25:32]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v36, v251, 16, 1
	v_bfe_u32 v33, v98, 16, 1
	v_bfe_u32 v37, v252, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v38, v161, 16, 1
	v_bfe_u32 v39, v163, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v36, v251, v36, 0x7fff
	v_add3_u32 v33, v98, v33, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[17:24], v[108:115], v[206:213], v[17:24]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_mov_b16_e32 v113.l, 0
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v37, v252, v37, 0x7fff
	v_cndmask_b16 v117.h, 0x7fff, v36.h, s7
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v36, v157, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v113.h, 0x7fff, v33.h, vcc_lo
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v100.l, v113.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v118.h, 0x7fff, v37.h, s8
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v37, v159, 16, 1
	v_add3_u32 v36, v157, v36, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v36.l, v113.l
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v33, v98, v113
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v38, v161, v38, 0x7fff
	v_add3_u32 v37, v159, v37, 0x7fff
	v_add3_u32 v39, v163, v39, 0x7fff
	v_bfe_u32 v40, v165, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v34, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[17:24], v[41:48], v[227:234], v[17:24]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v41, v167, 16, 1
	v_add3_u32 v40, v165, v40, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v98, v33, v34, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v33, v99, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v43, v171, 16, 1
	v_add3_u32 v41, v167, v41, 0x7fff
	v_bfe_u32 v44, v173, 16, 1
	v_bfe_u32 v45, v175, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v33, v99, v33, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v43, v171, v43, 0x7fff
	v_bfe_u32 v46, v177, 16, 1
	v_add3_u32 v44, v173, v44, 0x7fff
	v_add3_u32 v45, v175, v45, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v100.h, 0x7fff, v33.h, s1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v47, v179, 16, 1
	v_add3_u32 v46, v177, v46, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v115.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v48, v181, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v33, v99, v100
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v47, v179, v47, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v116.l, v113.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v228.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v42, v169, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v34, v33, 16, 1
	v_cmp_o_f32_e64 s1, v33, v33
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v48, v181, v48, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v114.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v42, v169, v42, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v99, v33, v34, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v33, v97, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v117.l, v113.l
	v_mov_b16_e32 v118.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v206, v137, 16, 1
	v_bfe_u32 v207, v135, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v33, v97, v33, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v33.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v208, v133, 16, 1
	v_bfe_u32 v209, v131, 16, 1
	v_bfe_u32 v210, v129, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s3
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v253, v100 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v211, v127, 16, 1
	v_bfe_u32 v212, v125, 16, 1
	v_bfe_u32 v213, v123, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v34, v97, v33
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v221, v33
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v33, v248, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s7, v143, v143
	v_cmp_o_f32_e64 s8, v141, v141
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v35, v34, 16, 1
	v_cmp_o_f32_e64 s3, v34, v34
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v33, v248, v33, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v98.h, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v183, v183
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v34, v34, v35, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v35, v250, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v206, v137, v206, 0x7fff
	v_add3_u32 v207, v135, v207, 0x7fff
	v_add3_u32 v208, v133, v208, 0x7fff
	v_add3_u32 v209, v131, v209, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v35, v250, v35, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v210, v129, v210, 0x7fff
	v_add3_u32 v211, v127, v211, 0x7fff
	v_add3_u32 v212, v125, v212, 0x7fff
	v_add3_u32 v213, v123, v213, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v114.h, 0x7fff, v35.h, s5
	v_bfe_u32 v35, v249, 16, 1
	v_cmp_o_f32_e64 s5, v248, v248
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v37.l, v113.l
	v_mov_b16_e32 v38.l, v113.l
	v_mov_b16_e32 v39.l, v113.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v35, v249, v35, 0x7fff
	v_cndmask_b16 v115.h, 0x7fff, v33.h, s5
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.h, 0x7fff, v99.h, s1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s1, v185, v185
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v40.l, v113.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v116.h, 0x7fff, v35.h, s6
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v253, v113
	ds_store_b16_d16_hi v221, v114 offset:512
	ds_store_b16_d16_hi v222, v115
	ds_store_b16_d16_hi v222, v117 offset:512
	ds_store_b16_d16_hi v223, v116
	ds_store_b16_d16_hi v223, v118 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[105:108], v247
	ds_load_b128 v[109:112], v238
	ds_load_b128 v[97:100], v225
	ds_load_b128 v[101:104], v226
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v253, v33
	ds_store_b16_d16_hi v253, v33 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s3
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v34, v183, 16, 1
	v_bfe_u32 v35, v185, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v115, v248, v115 :: v_dual_sub_f32 v116, v249, v116
	v_sub_f32_e32 v114, v250, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v34, v183, v34, 0x7fff
	v_add3_u32 v35, v185, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v119, v115, 16, 1
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_dual_sub_f32 v117, v251, v117 :: v_dual_sub_f32 v118, v252, v118
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v33.h, 0x7fff, v34.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s1
	v_bfe_u32 v35, v155, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v155, v155
	v_cmp_o_f32_e64 s1, v169, v169
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v114, v114
	v_cmp_o_f32_e64 s5, v117, v117
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v35, v155, v35, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s6, v118, v118
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s1, v116, v116
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v35.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v35.h, 0x7fff, v35.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v157, v157
	v_cndmask_b16 v218.h, 0x7fff, v120.h, s8
	v_cndmask_b16 v255.h, 0x7fff, v206.h, s10
	v_cndmask_b16 v254.h, 0x7fff, v207.h, s11
	v_cndmask_b16 v253.h, 0x7fff, v208.h, s12
	v_cndmask_b16 v36.h, 0x7fff, v36.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v159, v159
	v_cndmask_b16 v252.h, 0x7fff, v209.h, s13
	v_cndmask_b16 v251.h, 0x7fff, v210.h, s14
	v_cndmask_b16 v250.h, 0x7fff, v211.h, s15
	v_cndmask_b16 v249.h, 0x7fff, v212.h, s16
	v_cndmask_b16 v37.h, 0x7fff, v37.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v161, v161
	v_cndmask_b16 v248.h, 0x7fff, v213.h, s17
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v230.l, v113.l
	v_mov_b32_e32 v195, v189
	v_mov_b32_e32 v189, v194
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v38.h, 0x7fff, v38.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v163, v163
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v41.l, v113.l
	v_mov_b16_e32 v42.l, v113.l
	v_mov_b16_e32 v43.l, v113.l
	v_mov_b16_e32 v44.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v39.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v165, v165
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v45.l, v113.l
	v_mov_b16_e32 v46.l, v113.l
	v_mov_b16_e32 v47.l, v113.l
	v_mov_b16_e32 v48.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v40.h, 0x7fff, v40.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v167, v167
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v220, v163, v39
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v39.l, v218.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v200, v161, v38
	v_sub_f32_e32 v202, v157, v36
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v41.h, 0x7fff, v41.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v171, v171
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v196, v155, v35
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v232.l, v113.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v201, v159, v37
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v234.l, v113.l
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v43.h, 0x7fff, v43.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v173, v173
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v219, v165, v40
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v40.l, v190.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v169, v169, v42
	v_sub_f32_e32 v171, v171, v43
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v44.h, 0x7fff, v44.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v175, v175
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v43.l, v253.h
	v_mov_b16_e64 v42.l, v254.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v194.l, v113.l
	v_mov_b16_e64 v197.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v45.h, 0x7fff, v45.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v177, v177
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v214.l, v113.l
	v_mov_b16_e64 v217.l, v113.l
	v_mov_b16_e64 v227.l, v113.l
	v_mov_b16_e64 v190.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v46.h, 0x7fff, v46.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v179, v179
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v229.l, v113.l
	v_mov_b16_e64 v231.l, v113.l
	v_mov_b16_e64 v233.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v161, v177, v46
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v47.h, 0x7fff, v47.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v181, v181
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v46.l, v250.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v215.l, v113.l
	v_mov_b16_e64 v216.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v159, v179, v47
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v48.h, 0x7fff, v48.h, vcc_lo
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e32 vcc_lo, v115, v115
	v_add3_u32 v115, v115, v119, 0x7fff
	v_bfe_u32 v119, v116, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v47.l, v249.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v157, v181, v48
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v48.l, v248.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v218.l, v113.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v116, v116, v119, 0x7fff
	v_bfe_u32 v119, v114, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v192.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s8, v142, v142
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v188.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s10, v138, v138
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v114, v114, v119, 0x7fff
	v_bfe_u32 v119, v117, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s11, v136, v136
	v_cmp_o_f32_e64 s12, v134, v134
	v_cmp_o_f32_e64 s13, v132, v132
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v34.l, 0x7fff, v114.h, s3
	v_add3_u32 v117, v117, v119, 0x7fff
	v_bfe_u32 v119, v118, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v221, v33
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v115.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v221, v34 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v34.l, 0x7fff, v117.h, s5
	v_add3_u32 v118, v118, v119, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v114, v153, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v222, v33
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v116.h, s1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v222, v34 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v34.l, 0x7fff, v118.h, s6
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v115, v151, 16, 1
	v_bfe_u32 v116, v149, 16, 1
	v_bfe_u32 v117, v147, 16, 1
	v_bfe_u32 v118, v145, 16, 1
	v_bfe_u32 v119, v143, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v153, v153
	v_cmp_o_f32_e64 s1, v151, v151
	v_cmp_o_f32_e64 s3, v149, v149
	v_cmp_o_f32_e64 s5, v147, v147
	v_cmp_o_f32_e64 s6, v145, v145
	v_add3_u32 v114, v153, v114, 0x7fff
	v_add3_u32 v115, v151, v115, 0x7fff
	v_add3_u32 v116, v149, v116, 0x7fff
	v_add3_u32 v117, v147, v117, 0x7fff
	v_add3_u32 v118, v145, v118, 0x7fff
	v_add3_u32 v119, v143, v119, 0x7fff
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v223, v33
	ds_store_b16 v223, v34 offset:512
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v33.l, v113.l
	v_mov_b16_e32 v34.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v194.h, 0x7fff, v114.h, vcc_lo
	v_cndmask_b16 v197.h, 0x7fff, v115.h, s1
	v_cndmask_b16 v214.h, 0x7fff, v116.h, s3
	v_cndmask_b16 v215.h, 0x7fff, v117.h, s5
	v_cndmask_b16 v216.h, 0x7fff, v118.h, s6
	v_cndmask_b16 v217.h, 0x7fff, v119.h, s7
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[206:209], v247
	ds_load_b128 v[210:213], v238
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v37.l, v216.h
	v_mov_b16_e64 v38.l, v217.h
	v_mov_b16_e64 v36.l, v215.h
	v_mov_b16_e64 v35.l, v214.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v185, v185, v34
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v34.l, v197.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v183, v183, v33
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v33.l, v194.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v163, v175, v45
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v45.l, v251.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v165, v173, v44
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v44.l, v252.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v167, v167, v41
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v41.l, v255.h
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[105:112], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v184, v184
	v_bfe_u32 v114, v168, 16, 1
	v_cmp_o_f32_e64 s1, v186, v186
	v_bfe_u32 v115, v170, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[97:104], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s3, v150, v150
	v_add3_u32 v114, v168, v114, 0x7fff
	v_cmp_o_f32_e64 s5, v148, v148
	v_add3_u32 v115, v170, v115, 0x7fff
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[206:213], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v33, v184, 16, 1
	v_bfe_u32 v35, v156, 16, 1
	v_bfe_u32 v36, v158, 16, 1
	v_bfe_u32 v37, v160, 16, 1
	v_bfe_u32 v38, v162, 16, 1
	v_add3_u32 v33, v184, v33, 0x7fff
	v_add3_u32 v35, v156, v35, 0x7fff
	v_add3_u32 v36, v158, v36, 0x7fff
	v_add3_u32 v37, v160, v37, 0x7fff
	v_add3_u32 v38, v162, v38, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v33.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v156, v156
	v_bfe_u32 v39, v164, 16, 1
	v_bfe_u32 v40, v166, 16, 1
	v_bfe_u32 v34, v186, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v35.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v35.h, 0x7fff, v35.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v158, v158
	v_add3_u32 v39, v164, v39, 0x7fff
	v_add3_u32 v40, v166, v40, 0x7fff
	v_add3_u32 v34, v186, v34, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v177, v156, v35
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v36.h, 0x7fff, v36.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v160, v160
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v37.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s1
	v_cmp_o_f32_e64 s1, v170, v170
	v_bfe_u32 v156, v154, 16, 1
	v_cndmask_b16 v37.h, 0x7fff, v37.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v162, v162
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v33.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v228.h, 0x7fff, v115.h, s1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v34.l, v113.l
	v_mov_b16_e32 v36.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v38.h, 0x7fff, v38.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v164, v164
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v181, v160, v37
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e32 v38.l, v113.l
	v_mov_b16_e32 v39.l, v113.l
	v_mov_b16_e32 v40.l, v113.l
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v39.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v166, v166
	v_add3_u32 v156, v154, v156, 0x7fff
	v_bfe_u32 v160, v150, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v173, v184, v33
	v_sub_f32_e32 v175, v186, v34
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v40.h, 0x7fff, v40.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v168, v168
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v179, v158, v36
	v_sub_f32_e32 v184, v162, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_sub_f32 v186, v164, v39 :: v_dual_sub_f32 v247, v166, v40
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v227.h, 0x7fff, v114.h, vcc_lo
	v_bfe_u32 v114, v172, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v172, v172
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v120, v170, v228
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v158, v152, 16, 1
	v_add3_u32 v160, v150, v160, 0x7fff
	v_add3_u32 v114, v172, v114, 0x7fff
	v_bfe_u32 v162, v148, 16, 1
	v_bfe_u32 v164, v146, 16, 1
	v_bfe_u32 v166, v144, 16, 1
	v_bfe_u32 v170, v140, 16, 1
	v_cndmask_b16 v229.h, 0x7fff, v114.h, vcc_lo
	v_bfe_u32 v114, v174, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v174, v174
	v_cmp_o_f32_e64 s1, v152, v152
	v_cmp_o_f32_e64 s6, v146, v146
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v119, v172, v229
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v114, v174, v114, 0x7fff
	v_cmp_o_f32_e64 s7, v144, v144
	v_add3_u32 v158, v152, v158, 0x7fff
	v_add3_u32 v162, v148, v162, 0x7fff
	v_add3_u32 v164, v146, v164, 0x7fff
	v_cndmask_b16 v230.h, 0x7fff, v114.h, vcc_lo
	v_bfe_u32 v114, v176, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v176, v176
	v_add3_u32 v166, v144, v166, 0x7fff
	v_add3_u32 v170, v140, v170, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v118, v174, v230
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v114, v176, v114, 0x7fff
	v_bfe_u32 v172, v138, 16, 1
	v_bfe_u32 v174, v136, 16, 1
	v_cndmask_b16 v188.h, 0x7fff, v160.h, s3
	v_cmp_o_f32_e64 s14, v130, v130
	v_cndmask_b16 v231.h, 0x7fff, v114.h, vcc_lo
	v_bfe_u32 v114, v178, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v178, v178
	v_cmp_o_f32_e64 s15, v128, v128
	v_cmp_o_f32_e64 s16, v126, v126
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v117, v176, v231
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v114, v178, v114, 0x7fff
	v_bfe_u32 v176, v134, 16, 1
	v_cmp_o_f32_e64 s17, v124, v124
	v_add3_u32 v172, v138, v172, 0x7fff
	v_add3_u32 v174, v136, v174, 0x7fff
	v_cndmask_b16 v232.h, 0x7fff, v114.h, vcc_lo
	v_bfe_u32 v114, v180, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v180, v180
	v_add3_u32 v176, v134, v176, 0x7fff
	v_cndmask_b16 v187.h, 0x7fff, v158.h, s1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v116, v178, v232
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v114, v180, v114, 0x7fff
	v_bfe_u32 v178, v132, 16, 1
	v_cndmask_b16 v235.h, 0x7fff, v162.h, s5
	v_cndmask_b16 v236.h, 0x7fff, v164.h, s6
	v_cndmask_b16 v237.h, 0x7fff, v166.h, s7
	v_cndmask_b16 v233.h, 0x7fff, v114.h, vcc_lo
	v_bfe_u32 v114, v182, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v182, v182
	v_add3_u32 v178, v132, v178, 0x7fff
	v_cndmask_b16 v50.h, 0x7fff, v170.h, s9
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v115, v180, v233
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v114, v182, v114, 0x7fff
	v_bfe_u32 v180, v130, 16, 1
	v_cndmask_b16 v166.h, 0x7fff, v174.h, s11
	v_cndmask_b16 v164.h, 0x7fff, v176.h, s12
	v_cndmask_b16 v162.h, 0x7fff, v178.h, s13
	v_cndmask_b16 v234.h, 0x7fff, v114.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v154, v154
	v_add3_u32 v180, v130, v180, 0x7fff
	v_cndmask_b16 v113.h, 0x7fff, v0.h, s17
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v40.l, v50.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v114, v182, v234
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v192.h, 0x7fff, v156.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v155, v168, v227
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v168, v142, 16, 1
	v_bfe_u32 v182, v128, 16, 1
	v_cndmask_b16 v160.h, 0x7fff, v180.h, s14
	v_cndmask_b16 v156.h, 0x7fff, v193.h, s16
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v38.l, v237.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v168, v142, v168, 0x7fff
	v_add3_u32 v182, v128, v182, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v37.l, v236.h
	v_mov_b16_e64 v36.l, v235.h
	v_mov_b16_e64 v35.l, v188.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v49.h, 0x7fff, v168.h, s8
	v_cndmask_b16 v168.h, 0x7fff, v172.h, s10
	v_cndmask_b16 v158.h, 0x7fff, v182.h, s15
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v34.l, v187.h
	v_mov_b16_e64 v33.l, v192.h
	v_mov_b16_e32 v39.l, v49.h
	v_mov_b16_e64 v234.l, v113.h
	v_mov_b16_e64 v233.l, v156.h
	v_mov_b16_e64 v232.l, v158.h
	v_mov_b16_e64 v231.l, v160.h
	v_mov_b16_e64 v230.l, v162.h
	v_mov_b16_e64 v229.l, v164.h
	v_mov_b16_e64 v228.l, v166.h
	v_mov_b16_e64 v227.l, v168.h
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[105:112], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v153, v194
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v183, v183
	v_cmp_o_f32_e64 s5, v185, v185
	v_cmp_o_f32_e64 s7, v196, v196
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[227:234], v[97:104], v[9:16]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cmp_o_f32_e64 s9, v202, v202
	v_cmp_o_f32_e64 s11, v201, v201
	v_cmp_o_f32_e64 s13, v200, v200
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[206:213], v[9:16]
	ds_load_b128 v[33:36], v225
	ds_load_b128 v[37:40], v226
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s15, v220, v220
	v_cmp_o_f32_e64 s17, v219, v219
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v187.l, v113.l
	v_mov_b16_e64 v254.l, v113.l
	v_mov_b16_e64 v235.l, v113.l
	v_mov_b16_e64 v253.l, v113.l
	v_mov_b16_e64 v236.l, v113.l
	v_mov_b16_e64 v237.l, v113.l
	v_mov_b16_e64 v255.l, v113.l
	v_mov_b16_e32 v49.l, v113.l
	v_mov_b16_e32 v50.l, v113.l
	v_mov_b16_e64 v251.l, v113.l
	v_mov_b16_e64 v252.l, v113.l
	v_mov_b16_e64 v250.l, v113.l
	v_mov_b16_e64 v249.l, v113.l
	v_mov_b16_e64 v248.l, v113.l
	v_mov_b32_e32 v194, v189
	v_mov_b16_e64 v166.l, v113.l
	v_mov_b16_e64 v168.l, v113.l
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[33:40], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[227:234], v[33:40], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v151, v197
	v_sub_f32_e32 v36, v149, v214
	v_sub_f32_e32 v38, v147, v215
	v_sub_f32_e32 v40, v145, v216
	v_sub_f32_e32 v42, v143, v217
	v_sub_f32_e32 v44, v141, v218
	v_sub_f32_e32 v46, v139, v190
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v33, v0, 16, 1
	v_bfe_u32 v35, v34, 16, 1
	v_bfe_u32 v37, v36, 16, 1
	v_bfe_u32 v39, v38, 16, 1
	v_bfe_u32 v41, v40, 16, 1
	v_bfe_u32 v43, v42, 16, 1
	v_bfe_u32 v45, v44, 16, 1
	v_bfe_u32 v47, v46, 16, 1
	v_add3_u32 v0, v0, v33, 0x7fff
	v_bfe_u32 v33, v183, 16, 1
	v_cmp_o_f32_e64 s3, v34, v34
	v_add3_u32 v34, v34, v35, 0x7fff
	v_bfe_u32 v35, v185, 16, 1
	v_cmp_o_f32_e64 s6, v36, v36
	v_add3_u32 v36, v36, v37, 0x7fff
	v_bfe_u32 v37, v196, 16, 1
	v_cmp_o_f32_e64 s8, v38, v38
	v_add3_u32 v38, v38, v39, 0x7fff
	v_bfe_u32 v39, v202, 16, 1
	v_cmp_o_f32_e64 s10, v40, v40
	v_add3_u32 v40, v40, v41, 0x7fff
	v_bfe_u32 v41, v201, 16, 1
	v_cmp_o_f32_e64 s12, v42, v42
	v_add3_u32 v42, v42, v43, 0x7fff
	v_bfe_u32 v43, v200, 16, 1
	v_cmp_o_f32_e64 s14, v44, v44
	v_add3_u32 v44, v44, v45, 0x7fff
	v_bfe_u32 v45, v220, 16, 1
	v_cmp_o_f32_e64 s16, v46, v46
	v_add3_u32 v46, v46, v47, 0x7fff
	v_bfe_u32 v47, v219, 16, 1
	v_add3_u32 v33, v183, v33, 0x7fff
	v_add3_u32 v35, v185, v35, 0x7fff
	v_add3_u32 v37, v196, v37, 0x7fff
	v_add3_u32 v39, v202, v39, 0x7fff
	v_add3_u32 v41, v201, v41, 0x7fff
	v_add3_u32 v43, v200, v43, 0x7fff
	v_add3_u32 v45, v220, v45, 0x7fff
	v_add3_u32 v47, v219, v47, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s1
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s3
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s5
	v_cndmask_b16 v35.l, 0x7fff, v36.h, s6
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s7
	v_cndmask_b16 v36.l, 0x7fff, v38.h, s8
	v_cndmask_b16 v36.h, 0x7fff, v39.h, s9
	v_cndmask_b16 v37.l, 0x7fff, v40.h, s10
	v_cndmask_b16 v37.h, 0x7fff, v41.h, s11
	v_cndmask_b16 v38.l, 0x7fff, v42.h, s12
	v_cndmask_b16 v38.h, 0x7fff, v43.h, s13
	v_cndmask_b16 v39.l, 0x7fff, v44.h, s14
	v_cndmask_b16 v39.h, 0x7fff, v45.h, s15
	v_cndmask_b16 v40.l, 0x7fff, v46.h, s16
	v_cndmask_b16 v40.h, 0x7fff, v47.h, s17
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v154, v192
	v_mov_b32_e32 v192, v56
	v_mov_b32_e32 v56, v58
	v_mov_b32_e32 v58, v60
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[105:112], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v33, v152, v187 :: v_dual_sub_f32 v34, v150, v188
	v_dual_sub_f32 v35, v148, v235 :: v_dual_mov_b32 v188, v54
	v_dual_mov_b32 v193, v57 :: v_dual_sub_f32 v36, v146, v236
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e64 s3, v33, v33
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v37, v144, v237 :: v_dual_mov_b32 v60, v62
	v_mov_b32_e32 v62, v64
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v41, v33, v41, 0x7fff
	v_bfe_u32 v33, v175, 16, 1
	v_dual_mov_b32 v57, v59 :: v_dual_sub_f32 v38, v142, v49
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v39, v140, v50
	v_mov_b32_e32 v147, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v42, v175, v33, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	v_mov_b32_e32 v148, v52
	v_bfe_u32 v40, v0, 16, 1
	v_dual_mov_b32 v190, v55 :: v_dual_mov_b32 v187, v53
	v_add3_u32 v43, v34, v33, 0x7fff
	v_bfe_u32 v33, v177, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_add3_u32 v0, v0, v40, 0x7fff
	v_bfe_u32 v40, v173, 16, 1
	v_cmp_o_f32_e64 s1, v173, v173
	v_add3_u32 v44, v177, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	v_cmp_o_f32_e64 s5, v175, v175
	v_add3_u32 v40, v173, v40, 0x7fff
	v_cmp_o_f32_e64 s6, v34, v34
	v_cmp_o_f32_e64 s7, v177, v177
	v_add3_u32 v45, v35, v33, 0x7fff
	v_bfe_u32 v33, v179, 16, 1
	v_cmp_o_f32_e64 s8, v35, v35
	v_cmp_o_f32_e64 s9, v179, v179
	v_cmp_o_f32_e64 s10, v36, v36
	v_cmp_o_f32_e64 s11, v181, v181
	v_add3_u32 v46, v179, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	v_cmp_o_f32_e64 s13, v184, v184
	v_cmp_o_f32_e64 s14, v38, v38
	v_cmp_o_f32_e64 s15, v186, v186
	v_cmp_o_f32_e64 s16, v39, v39
	v_add3_u32 v47, v36, v33, 0x7fff
	v_bfe_u32 v33, v181, 16, 1
	v_cmp_o_f32_e64 s17, v247, v247
	v_cndmask_b16 v34.l, 0x7fff, v41.h, s3
	v_cndmask_b16 v34.h, 0x7fff, v42.h, s5
	v_cndmask_b16 v35.l, 0x7fff, v43.h, s6
	v_add3_u32 v48, v181, v33, 0x7fff
	v_bfe_u32 v33, v37, 16, 1
	v_cndmask_b16 v35.h, 0x7fff, v44.h, s7
	v_cndmask_b16 v36.l, 0x7fff, v45.h, s8
	v_cndmask_b16 v36.h, 0x7fff, v46.h, s9
	v_dual_mov_b32 v59, v61 :: v_dual_mov_b32 v180, v74
	v_add3_u32 v49, v37, v33, 0x7fff
	v_bfe_u32 v33, v184, 16, 1
	v_dual_mov_b32 v179, v73 :: v_dual_sub_f32 v42, v127, v250
	v_dual_mov_b32 v177, v71 :: v_dual_sub_f32 v44, v125, v249
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v50, v184, v33, 0x7fff
	v_bfe_u32 v33, v38, 16, 1
	v_dual_mov_b32 v175, v69 :: v_dual_sub_f32 v46, v123, v248
	v_bfe_u32 v43, v42, 16, 1
	v_bfe_u32 v45, v44, 16, 1
	v_add3_u32 v51, v38, v33, 0x7fff
	v_bfe_u32 v33, v186, 16, 1
	v_cndmask_b16 v38.h, 0x7fff, v50.h, s13
	v_mov_b32_e32 v196, v204
	v_cmp_o_f32_e64 s5, v169, v169
	v_cmp_o_f32_e64 s7, v171, v171
	v_add3_u32 v52, v186, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	v_cmp_o_f32_e64 s9, v165, v165
	v_cmp_o_f32_e64 s13, v161, v161
	v_mov_b32_e32 v173, v67
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v164.l, v113.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v53, v39, v33, 0x7fff
	v_bfe_u32 v33, v247, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v51.h, s14
	v_cndmask_b16 v39.h, 0x7fff, v52.h, s15
	v_cmp_o_f32_e64 s14, v44, v44
	v_cndmask_b16 v40.l, 0x7fff, v53.h, s16
	v_add3_u32 v54, v247, v33, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v0.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v137, v255
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s12, v37, v37
	v_cndmask_b16 v33.h, 0x7fff, v40.h, s1
	v_cndmask_b16 v37.l, 0x7fff, v47.h, s10
	v_cndmask_b16 v37.h, 0x7fff, v48.h, s11
	v_cndmask_b16 v40.h, 0x7fff, v54.h, s17
	v_cndmask_b16 v38.l, 0x7fff, v49.h, s12
	v_bfe_u32 v47, v46, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cmp_o_f32_e64 s12, v42, v42
	v_add3_u32 v42, v42, v43, 0x7fff
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[105:112], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v135, v254
	v_sub_f32_e32 v36, v133, v253
	v_sub_f32_e32 v38, v131, v252
	v_sub_f32_e32 v40, v129, v251
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v33, v0, 16, 1
	v_bfe_u32 v35, v34, 16, 1
	v_bfe_u32 v37, v36, 16, 1
	v_bfe_u32 v39, v38, 16, 1
	v_bfe_u32 v41, v40, 16, 1
	v_add3_u32 v0, v0, v33, 0x7fff
	v_bfe_u32 v33, v167, 16, 1
	v_cmp_o_f32_e64 s3, v34, v34
	v_add3_u32 v34, v34, v35, 0x7fff
	v_bfe_u32 v35, v169, 16, 1
	v_cmp_o_f32_e64 s6, v36, v36
	v_add3_u32 v36, v36, v37, 0x7fff
	v_bfe_u32 v37, v171, 16, 1
	v_cmp_o_f32_e64 s8, v38, v38
	v_add3_u32 v38, v38, v39, 0x7fff
	v_bfe_u32 v39, v165, 16, 1
	v_cmp_o_f32_e64 s10, v40, v40
	v_add3_u32 v40, v40, v41, 0x7fff
	v_bfe_u32 v41, v163, 16, 1
	v_bfe_u32 v43, v161, 16, 1
	v_add3_u32 v44, v44, v45, 0x7fff
	v_bfe_u32 v45, v159, 16, 1
	v_cmp_o_f32_e64 s16, v46, v46
	v_add3_u32 v46, v46, v47, 0x7fff
	v_bfe_u32 v47, v157, 16, 1
	v_cmp_o_f32_e64 s1, v167, v167
	v_add3_u32 v33, v167, v33, 0x7fff
	v_add3_u32 v35, v169, v35, 0x7fff
	v_add3_u32 v37, v171, v37, 0x7fff
	v_add3_u32 v39, v165, v39, 0x7fff
	v_cmp_o_f32_e64 s11, v163, v163
	v_add3_u32 v41, v163, v41, 0x7fff
	v_add3_u32 v43, v161, v43, 0x7fff
	v_cmp_o_f32_e64 s15, v159, v159
	v_add3_u32 v45, v159, v45, 0x7fff
	v_cmp_o_f32_e64 s17, v157, v157
	v_add3_u32 v47, v157, v47, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s1
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s3
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s5
	v_cndmask_b16 v35.l, 0x7fff, v36.h, s6
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s7
	v_cndmask_b16 v36.l, 0x7fff, v38.h, s8
	v_cndmask_b16 v36.h, 0x7fff, v39.h, s9
	v_cndmask_b16 v37.l, 0x7fff, v40.h, s10
	v_cndmask_b16 v37.h, 0x7fff, v41.h, s11
	v_cndmask_b16 v38.l, 0x7fff, v42.h, s12
	v_cndmask_b16 v38.h, 0x7fff, v43.h, s13
	v_cndmask_b16 v39.l, 0x7fff, v44.h, s14
	v_cndmask_b16 v39.h, 0x7fff, v45.h, s15
	v_cndmask_b16 v40.l, 0x7fff, v46.h, s16
	v_cndmask_b16 v40.h, 0x7fff, v47.h, s17
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v138, v168
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v162.l, v113.l
	v_mov_b16_e64 v160.l, v113.l
	v_mov_b16_e64 v158.l, v113.l
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[97:104], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v33, v136, v166 :: v_dual_mov_b32 v172, v89
	v_dual_sub_f32 v34, v134, v164 :: v_dual_sub_f32 v35, v132, v162
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v40, v0, 16, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e64 s3, v33, v33
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v156.l, v113.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_add3_u32 v0, v0, v40, 0x7fff
	v_add3_u32 v41, v33, v41, 0x7fff
	v_bfe_u32 v33, v120, 16, 1
	v_bfe_u32 v40, v155, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v36, v130, v160 :: v_dual_sub_f32 v37, v128, v158
	v_dual_mov_b32 v157, v239 :: v_dual_mov_b32 v160, v242
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v42, v120, v33, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	v_dual_mov_b32 v61, v63 :: v_dual_mov_b32 v178, v72
	v_dual_mov_b32 v189, v195 :: v_dual_mov_b32 v176, v70
	v_dual_mov_b32 v174, v68 :: v_dual_mov_b32 v163, v245
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v38, v126, v156
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v155, v155
	v_add3_u32 v40, v155, v40, 0x7fff
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[149:152], off, off offset:180
	scratch_load_b128 v[153:156], off, off offset:196
	v_cmp_o_f32_e64 s6, v34, v34
	v_add3_u32 v43, v34, v33, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v41.h, s3
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v41, off, off offset:172
	scratch_load_b32 v55, off, off offset:176
	scratch_load_b32 v70, off, off offset:168
	v_bfe_u32 v33, v119, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v39, v124, v113
	v_dual_mov_b32 v165, v82 :: v_dual_mov_b32 v158, v240
	v_dual_mov_b32 v159, v241 :: v_dual_mov_b32 v162, v244
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v44, v119, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	v_dual_mov_b32 v161, v243 :: v_dual_mov_b32 v164, v246
	v_mov_b32_e32 v240, v93
	v_cmp_o_f32_e64 s5, v120, v120
	v_add3_u32 v45, v35, v33, 0x7fff
	v_bfe_u32 v33, v118, 16, 1
	v_cmp_o_f32_e64 s7, v119, v119
	v_cmp_o_f32_e64 s8, v35, v35
	v_cmp_o_f32_e64 s9, v118, v118
	v_cmp_o_f32_e64 s10, v36, v36
	v_add3_u32 v46, v118, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	v_cmp_o_f32_e64 s11, v117, v117
	v_cmp_o_f32_e64 s12, v37, v37
	v_cmp_o_f32_e64 s13, v116, v116
	v_cmp_o_f32_e64 s14, v38, v38
	v_add3_u32 v47, v36, v33, 0x7fff
	v_bfe_u32 v33, v117, 16, 1
	v_cmp_o_f32_e64 s15, v115, v115
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v114, v114
	v_cndmask_b16 v34.h, 0x7fff, v42.h, s5
	v_add3_u32 v48, v117, v33, 0x7fff
	v_bfe_u32 v33, v37, 16, 1
	v_cndmask_b16 v35.l, 0x7fff, v43.h, s6
	v_cndmask_b16 v35.h, 0x7fff, v44.h, s7
	v_cndmask_b16 v36.l, 0x7fff, v45.h, s8
	v_cndmask_b16 v36.h, 0x7fff, v46.h, s9
	v_add3_u32 v49, v37, v33, 0x7fff
	v_bfe_u32 v33, v116, 16, 1
	v_cndmask_b16 v37.l, 0x7fff, v47.h, s10
	v_cndmask_b16 v37.h, 0x7fff, v48.h, s11
	v_dual_mov_b32 v171, v88 :: v_dual_mov_b32 v170, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v50, v116, v33, 0x7fff
	v_bfe_u32 v33, v38, 16, 1
	v_dual_mov_b32 v169, v86 :: v_dual_mov_b32 v168, v85
	v_dual_mov_b32 v167, v84 :: v_dual_mov_b32 v166, v83
	v_add3_u32 v51, v38, v33, 0x7fff
	v_bfe_u32 v33, v115, 16, 1
	v_cndmask_b16 v38.l, 0x7fff, v49.h, s12
	v_cndmask_b16 v38.h, 0x7fff, v50.h, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v52, v115, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	v_add3_u32 v53, v39, v33, 0x7fff
	v_bfe_u32 v33, v114, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v51.h, s14
	v_cndmask_b16 v39.h, 0x7fff, v52.h, s15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v40.l, 0x7fff, v53.h, s16
	v_add3_u32 v54, v114, v33, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v40.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.h, 0x7fff, v54.h, s17
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[97:104], v[9:16]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %Flow
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_clause 0x7                            ; 128-byte Folded Reload
	scratch_load_b128 v[33:36], off, off
	scratch_load_b128 v[37:40], off, off offset:16
	scratch_load_b128 v[43:46], off, off offset:32
	scratch_load_b128 v[47:50], off, off offset:48
	scratch_load_b128 v[71:74], off, off offset:64
	scratch_load_b128 v[75:78], off, off offset:80
	scratch_load_b128 v[79:82], off, off offset:96
	scratch_load_b128 v[83:86], off, off offset:112
	s_branch .LBB0_1
.LBB0_6:
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v64, off, off offset:244
	scratch_load_b32 v33, off, off offset:248
	scratch_load_b32 v34, off, off offset:252
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s5, s43, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s42
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	.loc	1 753 13                        ; attention_backward.py:753:13
	s_waitcnt vmcnt(2)
	v_mul_lo_u32 v43, s18, v64
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, v33, v34
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s56, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v47, 2, v33
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v49, v43, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s2, s18, v33
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v46, 6, v33
	v_or_b32_e32 v48, 4, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v50, v43, v47
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v49, v49, s34, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v45, 8, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v51, v43, v48
	v_add_nc_u32_e32 v52, v43, v46
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	v_add_lshl_u32 v50, v50, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v44, 10, v33
	v_or_b32_e32 v41, 14, v33
	v_or_b32_e32 v42, 12, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v53, v43, v45
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v51, v51, s34, 2
	buffer_store_b32 v25, v49, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v50, s2
	v_add_lshl_u32 v49, v52, s34, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v54, v43, v44
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v0, 32, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v55, v43, v42
	v_add_nc_u32_e32 v56, v43, v41
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v50, 0x80000000, v51, s2
	v_add_lshl_u32 v51, v53, s34, 2
	buffer_store_b32 v26, v25, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v49, s2
	v_add_lshl_u32 v52, v54, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v40, 34, v33
	v_cmp_gt_i32_e64 s0, s19, v33
	v_cmp_gt_i32_e64 s1, s19, v0
	v_or_b32_e32 v39, 36, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s3, s18, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v27, v50, s[4:7], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v51, s2
	v_add_lshl_u32 v49, v55, s34, 2
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	v_add_lshl_u32 v25, v56, s34, 2
	v_cndmask_b32_e64 v27, 0x80000000, v52, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v57, v43, v0
	v_add_nc_u32_e32 v58, v43, v40
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	buffer_store_b32 v30, v27, s[4:7], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v49, s2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s3
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s0, vcc_lo, s0
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v59, v43, v39
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v38, 38, v33
	v_or_b32_e32 v37, 40, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v27, v57, s34, 2
	v_add_lshl_u32 v28, v58, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v36, 42, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v29, v59, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v35, 44, v33
	v_or_b32_e32 v34, 46, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v60, v43, v38
	v_add_nc_u32_e32 v61, v43, v37
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	buffer_store_b32 v31, v26, s[4:7], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v28, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v62, v43, v36
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v28, 0x80000000, v29, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v63, v43, v35
	v_add_nc_u32_e32 v43, v43, v34
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v32, v25, s[4:7], 0 offen
	buffer_store_b32 v17, v27, s[4:7], 0 offen
	v_add_lshl_u32 v17, v60, s34, 2
	s_clause 0x1
	buffer_store_b32 v18, v26, s[4:7], 0 offen
	buffer_store_b32 v19, v28, s[4:7], 0 offen
	v_add_lshl_u32 v18, v61, s34, 2
	v_add_lshl_u32 v19, v62, s34, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v27, s19, v64
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v25, v63, s34, 2
	v_add_lshl_u32 v26, v43, s34, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	s_clause 0x4
	buffer_store_b32 v20, v17, s[4:7], 0 offen
	buffer_store_b32 v21, v18, s[4:7], 0 offen
	buffer_store_b32 v22, v19, s[4:7], 0 offen
	buffer_store_b32 v23, v25, s[4:7], 0 offen
	buffer_store_b32 v24, v26, s[4:7], 0 offen
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v17, v27, v33
	v_add_nc_u32_e32 v18, v27, v47
	v_add_nc_u32_e32 v19, v27, v48
	v_add_nc_u32_e32 v20, v27, v46
	v_add_nc_u32_e32 v21, v27, v45
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v17, v17, s33, 2
	v_add_lshl_u32 v18, v18, s33, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v22, v27, v44
	v_add_nc_u32_e32 v23, v27, v42
	v_add_nc_u32_e32 v24, v27, v41
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v0, v27, v0
	v_add_nc_u32_e32 v25, v27, v40
	v_add_nc_u32_e32 v26, v27, v39
	v_add_nc_u32_e32 v28, v27, v38
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v1, v17, s[28:31], 0 offen
	v_add_lshl_u32 v1, v19, s33, 2
	v_cndmask_b32_e64 v17, 0x80000000, v18, s0
	v_add_lshl_u32 v18, v20, s33, 2
	v_add_lshl_u32 v19, v21, s33, 2
	v_add_lshl_u32 v20, v22, s33, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	buffer_store_b32 v2, v17, s[28:31], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v18, s0
	v_cndmask_b32_e64 v17, 0x80000000, v19, s0
	v_cndmask_b32_e64 v18, 0x80000000, v20, s0
	buffer_store_b32 v3, v1, s[28:31], 0 offen
	v_add_lshl_u32 v1, v23, s33, 2
	s_clause 0x2
	buffer_store_b32 v4, v2, s[28:31], 0 offen
	buffer_store_b32 v5, v17, s[28:31], 0 offen
	buffer_store_b32 v6, v18, s[28:31], 0 offen
	v_add_lshl_u32 v2, v24, s33, 2
	v_add_lshl_u32 v0, v0, s33, 2
	v_add_lshl_u32 v3, v25, s33, 2
	v_add_lshl_u32 v4, v26, s33, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v29, v27, v37
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v30, v27, v36
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_add_nc_u32 v31, v27, v35
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_add_nc_u32 v27, v27, v34
	s_clause 0x4
	buffer_store_b32 v7, v1, s[28:31], 0 offen
	buffer_store_b32 v8, v2, s[28:31], 0 offen
	buffer_store_b32 v9, v0, s[28:31], 0 offen
	buffer_store_b32 v10, v3, s[28:31], 0 offen
	buffer_store_b32 v11, v4, s[28:31], 0 offen
	v_add_lshl_u32 v0, v28, s33, 2
	v_add_lshl_u32 v1, v29, s33, 2
	v_add_lshl_u32 v2, v30, s33, 2
	v_add_lshl_u32 v3, v31, s33, 2
	v_add_lshl_u32 v4, v27, s33, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b32 v12, v0, s[28:31], 0 offen
	buffer_store_b32 v13, v1, s[28:31], 0 offen
	buffer_store_b32 v14, v2, s[28:31], 0 offen
	buffer_store_b32 v15, v3, s[28:31], 0 offen
	buffer_store_b32 v16, v4, s[28:31], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 260
		.amdhsa_kernarg_size 176
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 64
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 260
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16624
; TotalNumSgprs: 66
; NumVgprs: 256
; ScratchSize: 260
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
        .size:           1
        .value_kind:     by_value
      - .offset:         145
        .size:           1
        .value_kind:     by_value
      - .offset:         148
        .size:           4
        .value_kind:     by_value
      - .offset:         152
        .size:           4
        .value_kind:     by_value
      - .offset:         156
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         160
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         168
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 176
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 260
    .sgpr_count:     66
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 64
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
